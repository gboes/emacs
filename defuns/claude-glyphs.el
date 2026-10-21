;;; claude-glyphs.el --- Stable line height for Claude Code UI glyphs -*- lexical-binding: t; -*-
;;
;; Claude Code UI glyphs that Inconsolata lacks. Emacs otherwise borrows them
;; from fonts with taller line boxes (Apple Color Emoji, STIX Two Math, Apple
;; Symbols, Arial Unicode MS), so lines jump while the spinner cycles. Menlo
;; covers most of them; scaled to 0.92 its line box (asc 12, desc 3 at 13 px)
;; matches Inconsolata-14. Doom re-applies fontsets on font load, hence the hook.
(defun my/claude-glyphs-font ()
  (set-fontset-font t '(#x2722 . #x273D) "Menlo")
  (dolist (c (string-to-list "❯⚠↯◯◐◑◒◓■□▪▶★☐☒❐"))
    (set-fontset-font t c "Menlo")))
(add-to-list 'face-font-rescale-alist '("Menlo" . 0.92))
(add-hook 'after-setting-font-hook #'my/claude-glyphs-font)
(my/claude-glyphs-font)

;; No installed monospace font has these; display them in vterm as close
;; equivalents from Inconsolata/Menlo (buffer text is unchanged).
(defun my/vterm-glyph-substitutions ()
  (setq buffer-display-table (or buffer-display-table (make-display-table)))
  (pcase-dolist (`(,from . ,to) '((?⏺ . ?●) (?⏵ . ?▶) (?⎿ . ?└) (?⎯ . ?─) (?⧉ . ?❐)))
    (aset buffer-display-table from (vector to))))
(add-hook 'vterm-mode-hook #'my/vterm-glyph-substitutions)

(provide 'claude-glyphs)
;;; claude-glyphs.el ends here
