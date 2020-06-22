;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Gregor Bös"
      user-mail-address "mail@gregorboes.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "monospace" :size 15 ))


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-vibrant)
;; (setq doom-theme 'doom-city-lights)
;; (setq doom-theme 'doom-solarized-light)
;; (custom-set-faces! '(default :background "AntiqueWhite2"))
;; (custom-set-faces! '(default :background "AntiqueWhite2"))
 (load-theme 'doom-solarized-light t)
(setq doom-theme 'doom-solarized-light)
; better visible selection
(set-face-background 'highlight "#19aae3")
; better visible active region
(set-face-background 'region "#ffeeb0")
; better visible cursor
(set-face-background 'cursor "#11ccd6")
(after! org-mode
	(set-face-foreground 'org-document-info-keyword "#a69d92")
  (set-face-foreground 'custom-comment-tag "#a69d92")) ;better readable preamble in org mode

; better visible active line default:#F2E6CE
;; (set-face-background 'beacon-fallback-background "#AntiqueWhite2")
;; (set-face-attribute 'hl-line nil
;;                       :foreground nil
;;                       :background  "#000000")


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/mnt/d/gdrive/org/"
      org_roam_dir (concat org-directory "roam")
      org-roam-directory org_roam_dir
      )
 ;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
(print org-roam-directory)
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.


;; PERSONAL CONFIG

;;;;; Small adjustments
(delete-selection-mode 1)
(display-time-mode 1)
;; (setq-default flyspell-default-dictionary "en-uk")
(setq reftex-default-bibliography '("/mnt/d/gdrive/org/full_zotbib.bib"))
(setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))
(if (eq initial-window-system 'x)       ; Start in fullscreen
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))
                                        ;; Mode-Hooks
(add-hook! 'latex-mode-hook #'visual-line-mode)
(add-hook! 'latex-mode-hook #'flyspell-mode)
(add-hook! 'visual-line-mode-hook #'visual-fill-column-mode)
(add-hook! 'visual-line-mode-hook #'adaptive-wrap-prefix-mode)
(add-hook! 'org-mode-hook (setq line-number-mode nil))
;; ;; (add-hook! 'org-mode-hook (setq org-todo-keywords  nil)) ; custom todo-kwords
;; (add-hook! 'latex-mode-hook (setq line-number-mode nil))
(add-hook! 'latex-mode-hook (lambda() (rainbow-delimiters-mode -1)))
;; (add-hook! 'latex-mode-hook (setq-default left-margin-width 1))
;; (add-hook! 'latex-mode-hook (setq reftex-plug-into-AUCTeX t))
;; ;; (add-hook! 'latex-mode-hook #'(set-window-buffer nil (current-buffer))) ; maybe an error?
;; ;; (add-hook! 'text-mode-hook #'visual-line-mode #'hl-line-mode #'hl-todo-mode ) ;missing a "'" after the "#" before #'hl-todo-mode was a horrible bug to find
;; ;; (add-hook! 'hl-line-mode-hook #'(set-face-background 'solaire-hl-line-face "#ffebd4"))



;; ;; Visual adjustments
;; (use-package!  beacon
;;   ;; highlights the cursor when scrolling
;;   :diminish
;;   ;; :config (setq beacon-color "#666600")
;;   :hook
;;   ((org-mode text-mode) . beacon-mode)
;;   )
;; better visulization for parentheses
(use-package! rainbow-delimiters
  :defer
  :init
  (setq-default rainbow-delimiters-mode)
  (setq-default electric-pair-mode))

;; General keybindings
(defmacro save-column (&rest body)
  `(let ((column (current-column)))
     (unwind-protect
         (progn ,@body)
       (move-to-column column))))
(put 'save-column 'lisp-indent-function 0)

(defun move-line-up ()
  (interactive)
  (save-column
    (transpose-lines 1)
    (forward-line -2)))

(defun move-line-down ()
  (interactive)
  (save-column
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)))

    (defun duplicate-line-or-region (&optional n)
      "Duplicate current line, or region if active.
    With argument N, make N copies.
    With negative N, comment out original line and use the absolute value."
      (interactive "*p")
      (let ((use-region (use-region-p)))
        (save-excursion
          (let ((text (if use-region        ;Get region if active, otherwise line
                          (buffer-substring (region-beginning) (region-end))
                        (prog1 (thing-at-point 'line)
                          (end-of-line)
                          (if (< 0 (forward-line 1)) ;Go to beginning of next line, or make a new one
                              (newline))))))
            (dotimes (i (abs (or n 1)))     ;Insert N times, or once if not specified
              (insert text))))
        (if use-region nil                  ;Only if we're working with a line (not a region)
          (let ((pos (- (point) (line-beginning-position)))) ;Save column
            (if (> 0 n)                             ;Comment out original with negative arg
                (comment-region (line-beginning-position) (line-end-position)))
            (forward-line 1)
            (forward-char pos)))))

;; (global-unset-key (kbd "<f11>"))
(use-package! maxframe)

;; ;; global keybindings
(map! "C-1"       #'comment-line ; quick comment toggle
      "<C-right>" #'forward-word
      "<C-left>"  #'backward-word
      "C-z"       #'undo-tree-undo
      "C-S-z"     #'undo-tree-redo
      "C-c r"     #'eval-region
      "C-S-d"     #'duplicate-line-or-region
      "<M-up>"    #'move-line-up
      "<M-down>"  #'move-line-down
      "<M-right>" #'forward-sentence
      "<M-left>"  #'backward-sentence
      "<S-f11>"   #'toggle-frame-maximized
      "<S-SPC>" #'fixup-whitespace
      "C-." #'er/expand-region
      ;; "C-," #'(lambda () (interactive) (er/expand-region -1))
      )

;; ;; Todo: Add code-folding shortcuts for AucTeX


;; ABBREV-Mode
(use-package! abbrev
  :init
  (setq-default abbrev-mode t)
  ;; :hook
  ;; ((org-mode text-mode) . abbrev-mode)
  :config
  (setq abbrev-file-name (expand-file-name "abbrev.el" doom-private-dir))
  (setq save-abbrevs 'silently))

;; ============
;; LATEX
;; ============
(use-package! latex-extra               ; Allows for Code folding
  :after latex
  ;; :hook
  ;; (latex-mode . (delete-selection-mode latex-extra-mode))
  :init
  (map! "C-c j" #'latex/next-section
       ;; "C-i" #'TeX-complete-symbol
        "C-c k" #'latex/previous-section
        "C-c o" #'latex/hide-show
        "C-c C-o" #'latex/hide-show-all
        "C-c n" #'TeX-narrow-to-group
        "C-c c" #'reftex-citation))

;; set default window margin
(setq-default left-margin-width 1)
(set-window-buffer nil (current-buffer))

;; Consider adding an autocompile upon Save
;; (add-hook 'after-save-hook
;; 	  (lambda ()
;; 	    (when (string= major-mode 'latex-mode)
;;         (flyspell-buffer)
;; 	      ;; (TeX-run-latexmk
;; 	      ;;  "LaTeX"
;; 	      ;;  (format "latexmk -xelatex %s" (buffer-file-name)) ; would need to amended for right latex command
;; 	      ;;                    (file-name-base (buffer-file-name)))
;;         )))

(defun flyspell-save-word ()
  (interactive)
  (let ((current-location (point))
         (word (flyspell-get-word)))
    (when (consp word)
      (flyspell-do-correct 'save nil (car word) current-location (cadr word) (caddr word) current-location))))


;; ;; ========
;; ;; ORG MODE
;; ;; ========

(use-package! org-pdftools
  :hook (org-load . org-pdftools-setup-link))

(setq org-startup-folded t)
;;;; org-roam

(use-package! org-journal
      :defer
      :bind
      ("C-c n j" . org-journal-new-entry)
      :custom
      (org-journal-dir (concat org_roam_dir "/journal/"))
      (org-journal-date-prefix "#+TITLE: ")
      (org-journal-file-format "%Y-%m-%d.org")
      (org-journal-date-format "%A, %d %B %Y"))


(after! org-journal
    (setq org-journal-enable-agenda-integration t)
    )


;; (use-package! org-ref
;;     :after org
;;     :config
;;     (setq
;;          org-ref-completion-library 'org-ref-ivy-cite
;;          org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-ivy-bibtex
;;          org-ref-default-bibliography (list "/mnt/d/gdrive/org/full_zotbib.bib")
;;          org-ref-bibliography-notes "/mnt/d/gdrive/org/roam/notes/bibnotes.org"
;;          org-ref-note-title-format "* TODO %y - %t\n :PROPERTIES:\n  :Custom_ID: %k\n  :NOTER_DOCUMENT: %F\n :ROAM_KEY: cite:%k\n  :AUTHOR: %9a\n  :JOURNAL: %j\n  :YEAR: %y\n  :VOLUME: %v\n  :PAGES: %p\n  :DOI: %D\n  :URL: %U\n :END:\n\n"
;;          org-ref-notes-directory  "/mnt/d/gdrive/org/roam/notes"
;;          org-ref-notes-function 'orb-edit-notes
;;     ))


(use-package! org-roam
  :config
  (setq org-roam-capture-templates
        '(
          ("d" "default" plain (function org-roam--capture-get-point)
           "%?"
           :file-name "%<%Y-%m-%d>_${slug}"
           ;; :head "#+TITLE: ${title}\n#+ROAM_KEY: ${ref}"
           :head "#+TITLE: ${title}\n#+ROAM_KEY: %<%Y-%m-%d>_${slug}\n\n"
           :unnarrowed t)
          ))
  )



;; (print org-roam-capture-templates)


(setq
 bibtex-completion-notes-path "/mnt/d/gdrive/org/roam/orbnotes/"
 bibtex-completion-bibliography "/mnt/d/gdrive/org/full_zotbib.bib"
 bibtex-completion-pdf-field "file"
 bibtex-completion-notes-template-multiple-files
 (concat
  "#+TITLE: ${title}\n"
  "#+ROAM_KEY: cite:${=key=}\n"
  "* TODO Notes\n"
  ":PROPERTIES:\n"
  ":Custom_ID: ${=key=}\n"
  ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
  ":AUTHOR: ${author-abbrev}\n"
  ":JOURNAL: ${journaltitle}\n"
  ":DATE: ${date}\n"
  ":YEAR: ${year}\n"
  ":DOI: ${doi}\n"
  ":URL: ${url}\n"
  ":END:\n\n"
  )
 )



;; (after! org-roam
;;   (setq org-roam-capture-templates
;;         '(
;;           ("d" "default" plain (function org-roam--capture-get-point)
;;            "%?"
;;            :file-name "%<%Y%m%d%H%M%S>-${slug}"
;;            :head "#+TITLE: ${title}\n#+ROAM_KEY: ${ref}"
;;            :unnarrowed t)
;;           ))
;;   )


;; (use-package! org-roam-bibtex
;;   :after org-roam
;;   :hook (org-roam-mode . org-roam-bibtex-mode)
;;   ;; :bind (:map org-mode-map
;;   ;;        (("C-c n a" . orb-note-actions)))
;;   :config
;;   ;; (setq orb-templates
;;   ;;     '(("r" "ref" plain (function org-roam-capture--get-point) ""
;;   ;;        :file-name "${citekey}"
;;   ;;        :head "#+TITLE: ${citekey}: ${title}\n#+ROAM_KEY: ${ref}\n"
;;   ;;        :unnarrowed t)))
;;   (setq orb-preformat-keywords
;;    '("=key=" "title" "url" "file" "author-or-editor" "keywords"))
;; ;;   (setq orb-templates
;; ;;         '(("r" "ref" plain (function org-roam-capture--get-point)
;; ;;            ""
;; ;;            :file-name "${slug}"
;; ;;            :head "#+TITLE: ${=key=}: ${title}\n#+ROAM_KEY: ${ref}
;; ;; - tags ::
;; ;; - keywords :: ${keywords}

;; ;; \n* ${title}\n  :PROPERTIES:\n  :Custom_ID: ${=key=}\n  :URL: ${url}\n  :AUTHOR: ${author-or-editor}\n  :NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n  :NOTER_PAGE: \n  :END:\n\n"

;; ;;            :unnarrowed t)))
;;   )


;; ;; TODO
;; ADD
;; - writeroom-mode-support
;; - a switch for serif fonts in buffer (maybe with a hook for latex-buffers) see emacswiki ""faces-per-buffer""
;; - same emacs setup unter ubuntu
;; - flyckeck default dictionary, flycheck language-switch
;; Shortcut for fullscreen/fullframe toggle!
;; Add deft?

;; DEBUG
;; - TODO Add "IMPORTANT" keyword in text highlight
;; - Clipboard support with X-server
;; - Emacs-client + daemon setup
;; - doom sync for latex addins
;; - better scrolling
;; - change background colour / adaptive background colour

;; ADOPT
;; - org-roam-capture
;; - templates for .tex, .gitignore, .py
;; - org-roam-bibtex
;; - org-noter
;; - org-agenda
;; - better use of AucTEX
;; - better use of ivy and company

;; IMPROVE
;; - systematic elisp tutorial
;; - do some work in a modal programming environment
;; - add "circadian" package for daytime-dependent themes
;; - try to use helm instead of ivy?
;; - add shellscript to open up emacsclients natively with .org files


;; ;; define default article class
;; ;; (after! org
;; ;;   (add-to-list 'org-latex-classes
;; ;;                '("article
;; ;;                  \\documentclass[12pt,a4paper]{article}
;; ;; \\usepackage [a4paper]{geometry}
;; ;; \\usepackage[german, ngerman, english ]{babel}
;; ;; \\usepackage{lmodern}
;; ;; \\usepackage[defaultsans,osfigures,scale=0.95]{opensans}
;; ;; \\usepackage[sc]{mathpazo}       % Palladio Font
;; ;; \\linespread {1.05}         % Palladio needs more leading (space between lines)
;; ;; \\usepackage {verbatim}
;; ;; \\usepackage [small]{titlesec}
;; ;; \\usepackage {enumitem}
;; ;; \\usepackage {parskip}
;; ;; \\usepackage{soul} % has problems with utf-8 encoded äöü
;; ;; \\sodef\\so{}{.14em}{.4em plus.1em minus .1em}{.4em plus.1em minus .1em}
;; ;; \\setlength {\\parskip}{1em plus 1 em minus 0.5em}
;; ;; \\usepackage{graphicx} % for includegraphics command"
;; ;;                  ))

;; ;;   ;; define default dissertation class
;; ;;   ;; define default beamer class
;; ;;   ;; default packages for all latex exports
;; ;;   (add-to-list 'org-latex-packages-alist '("" "amsmath"))
;; ;; )