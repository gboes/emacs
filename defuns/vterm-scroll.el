;;; vterm-scroll.el --- PgUp/PgDn, M-v and mouse wheel for programs in vterm -*- lexical-binding: t; -*-
;;
;; PgUp/PgDn and M-v reach programs in vterm (Claude Code's fullscreen renderer
;; scrolls on them). `pixel-scroll-precision-mode-map' binds [prior]/[next] and,
;; as a minor-mode map, shadows vterm's own bindings; override it buffer-locally.
;; In `vterm-copy-mode' the keys scroll the Emacs window instead.
(defun my/vterm-page-up ()
  "Send PgUp to the terminal, or scroll the window in `vterm-copy-mode'."
  (interactive)
  (if vterm-copy-mode (scroll-down-command) (vterm-send-key "<prior>")))
(defun my/vterm-page-down ()
  "Send PgDn to the terminal, or scroll the window in `vterm-copy-mode'."
  (interactive)
  (if vterm-copy-mode (scroll-up-command) (vterm-send-key "<next>")))
(defun my/vterm-paging-keys ()
  (require 'pixel-scroll)
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map pixel-scroll-precision-mode-map)
    (define-key map [prior] #'my/vterm-page-up)
    (define-key map [next] #'my/vterm-page-down)
    (define-key map [wheel-up] #'my/vterm-wheel)
    (define-key map [wheel-down] #'my/vterm-wheel)
    (setq-local minor-mode-overriding-map-alist
                (cons (cons 'pixel-scroll-precision-mode map)
                      (assq-delete-all 'pixel-scroll-precision-mode
                                       minor-mode-overriding-map-alist)))))

;; vterm does not forward mouse events. Track whether the program has enabled
;; mouse reporting (DECSET 1000/1002/1003; also cleared on leaving the
;; alternate screen) and, while it has, send wheel events as SGR mouse reports.
(defvar-local my/vterm-mouse-tracking nil
  "Non-nil while the program in this vterm has mouse reporting enabled.")
(defun my/vterm-track-mouse-mode (process input)
  (let ((buf (process-buffer process)) (start 0))
    (when (buffer-live-p buf)
      (with-current-buffer buf
        (while (string-match "\e\\[\\?\\([0-9;]+\\)\\([hl]\\)" input start)
          (let ((on (equal (match-string 2 input) "h")))
            (dolist (m (split-string (match-string 1 input) ";"))
              (cond ((member m '("1000" "1002" "1003"))
                     (setq my/vterm-mouse-tracking on))
                    ((and (equal m "1049") (not on))
                     (setq my/vterm-mouse-tracking nil)))))
          (setq start (match-end 0)))))))
(defun my/vterm-wheel (event)
  "Pass wheel EVENT to the terminal program as an SGR mouse report when it
has mouse reporting enabled; otherwise scroll the window."
  (interactive "e")
  (if (and my/vterm-mouse-tracking (not vterm-copy-mode))
      (let* ((posn (event-start event))
             (height (window-body-height (posn-window posn)))
             (row (- height (count-lines (posn-point posn) (point-max))))
             (col (1+ (car (posn-col-row posn))))
             (button (if (memq (event-basic-type event) '(wheel-up mouse-4)) 64 65)))
        (process-send-string vterm--process
                             (format "\e[<%d;%d;%dM" button col (max 1 (min height row)))))
    (call-interactively (if (bound-and-true-p pixel-scroll-precision-mode)
                            #'pixel-scroll-precision
                          #'mwheel-scroll)
                        nil (vector event))))
(after! vterm
  (define-key vterm-mode-map (kbd "M-v") #'my/vterm-page-up)
  (define-key vterm-mode-map [wheel-up] #'my/vterm-wheel)
  (define-key vterm-mode-map [wheel-down] #'my/vterm-wheel)
  (advice-add 'vterm--filter :before #'my/vterm-track-mouse-mode))
(add-hook 'vterm-mode-hook #'my/vterm-paging-keys)

(provide 'vterm-scroll)
;;; vterm-scroll.el ends here
