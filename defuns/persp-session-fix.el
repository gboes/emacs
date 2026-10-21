;;; persp-session-fix.el --- Keep persp-mode session files readable -*- lexical-binding: t; -*-
;;
;; Doom's indirect-buffer saver stores all buffer-local variables. Unreadable
;; objects nested in string properties (e.g. #<subr> in doom-modeline--flycheck)
;; pass persp-mode's readability check and break session restore with
;; "Invalid read syntax: #<". Doom's loader ignores the variables anyway, so
;; register a saver that runs first and keeps only major-mode.
(after! persp-mode
  (persp-def-buffer-save/load
   :tag-symbol 'def-indirect-buffer
   :predicate #'buffer-base-buffer
   :save-vars '(major-mode)
   :save-function (lambda (buf tag vars)
                    (list tag (buffer-name buf) vars
                          (buffer-name (buffer-base-buffer buf))))
   :load-function (lambda (savelist &rest _rest)
                    (cl-destructuring-bind (buf-name _vars base-buf-name &rest _)
                        (cdr savelist)
                      (push (cons buf-name base-buf-name)
                            +workspaces--indirect-buffers-to-restore)
                      nil)))
  ;; Hidden indirect buffers (e.g. " cv.md[yaml]" front-matter buffers) are
  ;; recreated by their modes; restoring them only adds renamed duplicates.
  (add-hook 'persp-save-buffer-functions #'my/persp-skip-hidden-indirect-buffer))

(defun my/persp-skip-hidden-indirect-buffer (buf)
  "Return `skip' for indirect buffers whose name starts with a space."
  (when (and (buffer-base-buffer buf)
             (string-prefix-p " " (buffer-name buf)))
    'skip))

(provide 'persp-session-fix)
;;; persp-session-fix.el ends here
