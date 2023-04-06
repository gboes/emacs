;;; package --- format-region  -*- lexical-binding: t; -*-
; Snippets for operating on regions of text, e.g. in academic writing.

;; Self-defined

(defun my/format-region/un-hyphenate (beg end)
"Reformat a text region for use in LaTeX.
Moves line breaks to sentence ends.
Strips numbers up to 3 digits."
(interactive "*r")
(save-restriction
    (narrow-to-region beg end)
    (save-excursion
      (dolist (regsub (list '("-" "")
                            ))
        (goto-char (point-min))
                   (while (search-forward-regexp (nth 0 regsub) nil t)
                     (replace-match (nth 1 regsub) nil nil))))))


(defun my/format-region/kill-numbers (beg end)
"Reformat a text region for use in LaTeX.
Moves line breaks to sentence ends.
Strips numbers up to 3 digits."
(interactive "*r")
(save-restriction
    (narrow-to-region beg end)
    (save-excursion
      (dolist (regsub (list '(" [[({]?[0-9][0-9]?[0-9]?[])}]? " " ") ; replace numbers, 1-3 digits, alone or in bracket
                            ))
        (goto-char (point-min))
                   (while (search-forward-regexp (nth 0 regsub) nil t)
                     (replace-match (nth 1 regsub) nil nil))))))


(defun my/format-region/pdf-paste-to-latex (beg end)
"Reformat a text region for use in LaTeX.
Moves line breaks to sentence ends.
Strips numbers up to 3 digits."
(interactive "*r")
(save-restriction
    (narrow-to-region beg end)
    (save-excursion
      (dolist (regsub (list '("[-]\n" "") ;remove breaking hyphens
                            '("\n" " ") ;newlines to spaces
                            '("[.] " ".\n")
                            '("[?] " "?\n")
                            '("[!] " "!\n")
                            ))
        (goto-char (point-min))
                   (while (search-forward-regexp (nth 0 regsub) nil t)
                     (replace-match (nth 1 regsub) nil nil))))))


(defun my/format-region/pdf-paste-to-latex-kill-numbers (beg end)
"Reformat a text region for use in LaTeX.
Moves line breaks to sentence ends.
Strips numbers up to 3 digits."
(interactive "*r")
(save-restriction
    (narrow-to-region beg end)
    (save-excursion
      (dolist (regsub (list '("[-]\n" "") ;remove breaking hyphens
                            '("\n" " ") ;newlines to spaces
                            '("[.] " ".\n")
                            '("[?] " "?\n")
                            '("[!] " "!\n")
                            '("[“\"„]\\<" "``") ; TeX opening quotation marks
                            '(" [“\"„]" " ``") ;
                            '(" [']" " `") ;
                            '("\\>[\"”“]" "''") ; TeX closing quotation marks
                            '("[\"”“] " "'' ")
                            '("['] " "' ")
                            '(" [[({]?[0-9][0-9]?[0-9]?[])}]? " " ") ; replace numbers, 1-3 digits, alone or in bracket
                            ))
        (goto-char (point-min))
                   (while (search-forward-regexp (nth 0 regsub) nil t)
                     (replace-match (nth 1 regsub) nil nil))))))

(defun my/unspace-region ()
  "Delete all spaces in region."
  ; Should expand to paragraph, or current line, if no region is active
  (interactive)
  (save-restriction
    (narrow-to-region (point) (mark))
    (goto-char (point-min))
    (while (search-forward " " nil t) (replace-match "" nil t))))


;; stack overflow snippets

(defun my/unfill-region ()
  "Replace all newlines in the region with spaces."
  ; Should expand to paragraph, or current line, if no region is active
  (interactive)
  (save-restriction
    (narrow-to-region (point) (mark))
    (goto-char (point-min))
    (while (search-forward "\n" nil t) (replace-match " " nil t))))

(defun my/just-one-space-in-region (beg end)
  "replace all whitespace in the region with single spaces"
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (while (re-search-forward "\\s-+" nil t)
        (replace-match " ")))))

(provide 'format-region)
;;; format-region.el ends here
