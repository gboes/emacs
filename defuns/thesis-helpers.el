;;; thesis-helpers.el --- small defuns for thesis writing  -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Gregor Bös
;;
;; Author: Gregor Bös <mail@gregorboes.com>
;; Maintainer: Gregor Bös <mail@gregorboes.com>
;; Created: August 27, 2022
;; Modified: August 27, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/gboes/thesis-helpers
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(defun my/latex-word-count ()
  "Run texcount on the current file."
  (interactive)
  (display-message-or-buffer
   (concat "Total word count: "
    (shell-command-to-string (concat "texcount "
                       ; " optional arguments "
                         "-inc "
                         "-sum "
                         ;; "-total "
                         ;; "-brief "
                         "-0 " ; only a total number as output
                         "'"
                         (buffer-file-name)
                         "'"
                         )))))

(defun my/thesis-word-count ()
  "Run texcount on the current file."
  (interactive)
  (display-message-or-buffer
   (concat "Total word count: "
    (shell-command-to-string (concat "cd /mnt/d/Dropbox/PhD/TeX/ && texcount "
                       ; " optional arguments "
                         "-inc "
                         "-sum "
                         ;; "-total "
                         ;; "-brief "
                         "-0 " ; only a total number as output
                         "'"
                         "master.tex "
                         "'"
                         )))))

(defun my/thesis-word-count-insert ()
  "Run texcount on the current file."
  (interactive)
     (let ((tcount (string-trim-right ; local variable
      (shell-command-to-string (concat "cd /mnt/d/Dropbox/PhD/TeX/ && texcount "
                                        ; " optional arguments "
                                                                "-inc "
                                                                "-sum "
                                                                ;; "-total "
                                                                ;; "-brief "
                                                                "-0 " ; only a total number as output
                                                                "'"
                                                                "master.tex "
                                                                "'"
                                                                )))))
   (insert
    (format "%s,%s" (substring tcount 0 (- (length tcount) 3)) (substring tcount -3 nil))))) ; add "," separator for numbers with 4-6 digits


(defun my/org-latex-word-count ()
  "Run texcount on the associated file."
  (interactive)
  (display-message-or-buffer
   (concat "Total word count in associated .tex file: "
    (shell-command-to-string (concat "texcount "
                       ; " optional arguments "
                         "-inc "
                         "-sum "
                         ;; "-total "
                         ;; "-brief "
                         "-0 " ; only a total number as output
                         "'"
                         (concat (file-name-sans-extension(
                                   buffer-file-name)) ".tex")
                         "'"
                         )))))


;; (defun my/pomodoro-session-start (task)
;;   "Call the pomodoro utility in the background to log a work session."
;;   (interactive "sFocus of the next 25 minutes: ")
;;   (call-process-shell-command (concat "/mnt/d/gdrive/conf/bashutils/pomodoro_CLI.sh  " task "&")
;;                               nil 0)
;;   )


;; (defun my/pomodoro-session-log (task)
;;   "Log an elapsed work session without starting a timer."
;;   (interactive "sFocus of the finished session: ")
;;   (shell-command (concat "/mnt/d/gdrive/conf/bashutils/pomodoro_CLI.sh --log-only " task "&")
;;   ))

(defun my/latex-word-count-verbose ()
  "Run texcount on the current file."
  (interactive)
  (display-message-or-buffer
   (shell-command-to-string (concat "texcount "
                       ; " optional arguments "
                         "-inc "
                         ;; "-total "
                         ;; "-brief "
                         (shell-quote-argument buffer-file-name)
                         ))))



(defun my/push-to-boox ()
  "Copy current file synchronized location."
  (interactive)
  (let ((boox-dir (concat gdrive_dir "boox/review/"))) ;let expects a varlist, hence two starting braces
  (shell-command (concat "cp '"(buffer-file-name) "' " boox-dir ))))


(after! hi-lock-mode
;; (set-face-background 'hi-yellow "#ebe37c")
(defun my/highlight-long-sentences (X)
  "Highlight sentences longer than X words."
  (interactive "nHighlight sentences longer than:")
  (setq regex
        (concat "\([^.?!…‽\"'”’]+ \)\{" (number-to-string X) ",999\}[^.?!…‽\"'”’  ]+[.?!…‽\"'”’]"
                ))
  (highlight-regexp regex)))

(provide 'thesis-helpers)
;;; thesis-helpers.el ends here
