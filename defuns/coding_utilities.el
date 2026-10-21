;;; coding_utilities.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2025 Gregor Bös
;;
;; Author: Gregor Bös <mail@gregorboes.com>
;; Maintainer: Gregor Bös <mail@gregorboes.com>
;; Created: October 13, 2025
;; Modified: October 13, 2025
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(defun my/run-black-on-current-file ()
  "Run black formatter on the current file."
  (interactive)
  (let ((blackmsg (shell-command-to-string
                   (concat "black "
                           ;; " optional arguments "
                           ;; "-inc "
                           "'"
                           (buffer-file-name)
                           "'"
                           " 2>&1"))))
    (revert-buffer :ignore-auto :noconfirm)
    (message blackmsg)))

(provide 'coding_utilities)
;;; coding_utilities.el ends here
