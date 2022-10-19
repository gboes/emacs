;;; elisp-snippets.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Gregor Bös
;;
;; Author: Gregor Bös <mail@gregorboes.com>
;; Maintainer: Gregor Bös <mail@gregorboes.com>
;; Created: August 27, 2022
;; Modified: August 27, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/gboes/elisp-snippets
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(defun my/format-region/regex-replacements-template (beg end)
"Reformat a text region with a series of regex applications."
(interactive "*r")
(save-restriction
    (narrow-to-region beg end)
    (save-excursion
      ;; (This really should be a loop!)
      ;; (dolist (var list [result]) body)
      (dolist (regsub (list '("abc" "def") '("123" "456")))
        (goto-char (point-min))
                   (while (search-forward-regexp (nth 0 regsub) nil t)
                     (replace-match (nth 1 regsub) nil nil))))))



Symbol’s value as variable is void: %

(provide 'elisp-snippets)
;;; elisp-snippets.el ends here
