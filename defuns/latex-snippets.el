;;; latex-snippets.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Gregor Bös
;;
;; Author: Gregor Bös <https://github.com/gboes>
;; Maintainer: Gregor Bös <mail@gregorboes.com>
;; Created: October 18, 2021
;; Modified: October 18, 2021
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/gboes/latex-snippets
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;; Source: https://emacs.stackexchange.com/questions/19575/type-single-quotes-in-auctex
;;; Commentary:
;;
;;  Description
;;
;;; Code:




;; (defun my/TeX-insert-single-quote (force)
;;   "Insert the appropriate quotation marks for TeX.
;; Inserts ` or ' depending on the context.  With prefix argument
;; FORCE, always inserts ' characters."
;;   (interactive "*P")
;;   (if (or force
;;       ;; Do not insert TeX quotes in verbatim, math or comment constructs.
;;       (and (fboundp 'font-latex-faces-present-p)
;;            (font-latex-faces-present-p '(font-latex-verbatim-face
;;                          font-latex-math-face
;;                          font-lock-comment-face))
;;            (font-latex-faces-present-p '(font-latex-verbatim-face
;;                          font-latex-math-face
;;                          font-lock-comment-face)
;;                        (1- (point))))
;;       (texmathp)
;;       (and (TeX-in-comment) (not (eq major-mode 'doctex-mode))))
;;       (self-insert-command (prefix-numeric-value force))
;;     (TeX-update-style)
;;     (let* ((open-quote "`")
;;        (close-quote "'"))
;;       (insert (cond ((bobp)
;;              open-quote)
;;             ((= (preceding-char) (string-to-char TeX-esc))
;;              ?\')
;;             ((= (preceding-char) ?\")
;;              ?')
;;             ((save-excursion
;;                (forward-char (- (length open-quote)))
;;                (looking-at (regexp-quote open-quote)))
;;              (delete-char (- (length open-quote)))
;;              ?')
;;             ((save-excursion
;;                (forward-char (- (length close-quote)))
;;                (looking-at (regexp-quote close-quote)))
;;              (delete-char (- (length close-quote)))
;;              ?')
;;             ((save-excursion
;;                (forward-char -1)
;;                (looking-at "[ \t\n]\\|\\s("))
;;              open-quote)
;;             (t
;;              close-quote))))))


(defun my/org-latex-export-compile-continuous ()
    "Start continuous latexmk_process in the background."
  (interactive)
  (async-shell-command (concat "latexmk -pdf -view=none -pvc -silent " (file-name-base) ".tex")
                               ;; Second argument: name of buffer for output
                               (concat "*latexmk messages " (file-name-base) "*")))

;; Inhibit output from async shell call to latexmk
(add-to-list 'display-buffer-alist
             '(".latexmk messages .*" display-buffer-no-window))



(defun my/TeX-insert-single-quote ()
  "Insert a normal quote if in comment-environment.

Works around a bug in auctecs+smartparens.
Allows wrapping quotes, too."
  (interactive)
  ;; Check if in comment environment
  (if (nth 4 (syntax-ppss))
      (insert "\'")
    ;; if not in comment environment
    ;; then check if region is active
    (if (use-region-p)
        (progn
          (save-excursion
            (if (eq (region-end) (point))
                (progn
                (goto-char (region-end))
                (insert "\'")
                (goto-char (region-beginning))
                (insert "\`")
                  )
              (progn
                (insert "\`")
                (goto-char (region-end))
                (insert "\'")
                  )
              ))
          )
    ;; If no region active, run command once
      (TeX-insert-quote nil)
      (backward-delete-char 1))
      ))

(provide 'latex-snippets)
;;; latex-snippets.el ends here
