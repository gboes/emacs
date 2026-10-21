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



(defun my/rotate-windows ()
  "Rotate your windows, e.g. toggle side-by-side windows."
  (interactive)
  (cond ((not (> (count-windows)1))
         (message "You can't rotate a single window!"))
        (t
         (setq i 1)
         (setq numWindows (count-windows))
         (while  (< i numWindows)
           (let* (
                  (w1 (elt (window-list) i))
                  (w2 (elt (window-list) (+ (% i numWindows) 1)))

                  (b1 (window-buffer w1))
                  (b2 (window-buffer w2))

                  (s1 (window-start w1))
                  (s2 (window-start w2))
                  )
             (set-window-buffer w1  b2)
             (set-window-buffer w2 b1)
             (set-window-start w1 s2)
             (set-window-start w2 s1)
             (setq i (1+ i)))))))


(defun my/convert-next-autocites-to-citep ()
  "attempts to converts the next \\autocites[][]{}[][]{} of biblatex to the \\citep syntax used by natbib. Written by ChatGPT4."
  (interactive)
  (if (re-search-forward "\\\\autocites\\(\\[.*?\\]\\)?\\(\\[.*?\\]\\)?\\({.*?}\\)*" nil t)
      (let* ((prefix (match-string-no-properties 1))
             (suffix (match-string-no-properties 2))
             (citations (match-string-no-properties 3)))
        (setq citations (replace-regexp-in-string "\\({\\|}\\)" "" citations))
        (replace-match (concat "\\citep"
                               (when prefix (concat "[" prefix "]"))
                               (when suffix (concat "[" suffix "]"))
                               "{" citations "}")))
    (message "No \\autocites command found")))

(defun my/convert-next-autocite-to-citep ()
  (interactive)
  (if (re-search-forward "\\\\autocite\\(\\[.*?\\]\\)?\\(\\[.*?\\]\\)?{\\(.*?\\)}" nil t)
      (let* ((optArgs (if (or (match-string-no-properties 1)
                              (match-string-no-properties 2))
                          (concat "[" (or (subst-char-in-string
                                           ?\] ?\, (or (match-string-no-properties 1) (match-string-no-properties 2))) "")
                                  "]")
                        ""))
             (citation (match-string-no-properties 3)))
        (replace-match (concat "\\\\citep" optArgs "{" citation "}") t))
    (message "No \\autocite command found")))

(provide 'elisp-snippets)
;;; elisp-snippets.el ends here
