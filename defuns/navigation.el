;;; navigation.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Gregor Bös
;;
;; Author: Gregor Bös <mail@gregorboes.com>
;; Maintainer: Gregor Bös <mail@gregorboes.com>
;; Created: May 17, 2023
;; Modified: May 17, 2023
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/geb/navigation
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:


(defun my/org-todo-view ()
  "Split the window horizontally and open 'todo.org' in the new window.
   Then, shift cursor back to the original window and enlarge it horizontally."
  (interactive)
  (let ((original-window (selected-window)))
    ;; Split the window horizontally
    (split-window-horizontally)
    (dotimes (_ 2)
      (enlarge-window-horizontally 30))
    ;; Get the file path for 'todo.org' in the current working directory
    (let ((todo-file (expand-file-name "todo.org" default-directory)))
      (if (file-exists-p todo-file)
          (progn
            ;; Switch to the new window
            (select-window (next-window))
            (find-file todo-file)
            (org-cycle-content 1)
            (select-window original-window))
        (progn
          (message "File 'todo.org' not found in the current directory - starting new.")
          (select-window (next-window))
          (find-file todo-file)
          ;; Space for adding a template, if file does not exist
          )))))
    ;; Switch back to the original window

(provide 'navigation)
;;; navigation.el ends here
