;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; (use-package esup ;emacs startup profiler package
;;   :ensure t
;;   )

(setq load-prefer-newer t) ; do not load outdated bytecompiled .elc code

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Gregor Bös"
      user-mail-address "mail@gregorboes.com")

(setq ws-butler-global-exempt-modes ; where ws-butler is distracting
      '(special-mode
        comint-mode
        term-mode
        eshell-mode
        ;; markdown-mode
        text-mode)) ; includes inherited modes

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

;; Multiboot: OS-specific Setups
    (cond ((eq system-type 'windows-nt)
           ;; Windows-specific code goes here.
           (setq doom-font (font-spec :family "monospace" :size 15 ))
           (setq doom-font (font-spec :family "variable-pitch" :size 15 ))
           (setq conf-directory "/mnt/d/gdrive/conf/")
           (setq phd-directory "/mnt/d/Dropbox/PhD/TeX/")
           (setq org-directory "/mnt/d/Dropbox/org/"
                 org_roam_dir (concat org-directory "roam")
                 org-roam-directory org_roam_dir
                 )
           )
          ((eq system-type 'gnu/linux)
           ;; Linux-specific code goes here.
           (setq doom-font (font-spec :family "monospace" :size 16 ))
           ;; (setq doom-variable-pitch-font (font-spec :family "EB Garamond" :size 20 ))
           (setq doom-variable-pitch-font (font-spec :family "EB Garamond" :size 20 ))
           (setq org-directory "/home/greg/sync/Dropbox/org/"
                 org_roam_dir (concat org-directory "roam")
                 org-roam-directory org_roam_dir
                 org-roam-db-location "/home/greg/org-roam.db"
                 )
             (when (string-match "-[Mm]icrosoft"  operating-system-release)
               ;; WSL specific code goes here
               (setq org-directory "/mnt/d/Dropbox/org/"
                     org_roam_dir (concat org-directory "roam")
                     org-roam-directory org_roam_dir
                     org-roam-db-location "/mnt/d/Temporary-Data/org-roam.db"
                     )
               (setq conf-directory "/mnt/d/gdrive/conf/")
               (setq phd-directory "/mnt/d/Dropbox/PhD/TeX/")
               (setq org-directory "/mnt/d/Dropbox/org/")
               (setq org_roam_dir (concat org-directory "roam"))
               (setq org-roam-directory org_roam_dir)
               (setq doom-font (font-spec :family "monospace" :size 24 ))
               ;; (setq doom-variable-pitch-font (font-spec :family "EB Garamond" :size 34 ))
               ;; Try ET Bembo / ET Book at some point
               (setq doom-variable-pitch-font (font-spec :family "ETBembo" :size 34 ))
               (setq doom-unicode-font (font-spec :family "Symbola")) ; fallsback for unicode font seems overriden
               ;; (insert (prin1-to-string (font-family-list)))
               (set-face-attribute 'variable-pitch nil :height 170) ; with EB Garamond
             ;; (set-face-attribute 'variable-pitch nil :font "Noto Serif-12")
               ;; (set-face-attribute 'variable-pitch nil :font "EB Garamond")
               ;; (set-face-attribute 'variable-pitch nil :font "IBM Plex Serif")
               ;; TODO try "Alegreya", Minion Pro, Palatino, Bitstream Vera Serif
             ;; (set-face-attribute 'variable-pitch nil :height 140) ; with EB Garamond
             ;; (set-face-attribute 'variable-pitch nil :height 130) ; with IBM Plex Serif
               )
             ;; If linux, but NOT WSL
             (when (not (string-match "-[Mm]icrosoft" operating-system-release))
               (setq my-read-only-dir "/mnt/d/Dropbox")
               (defun my-open-buffer-as-read-only ()
                 "All buffers opened from directory my-read-only-dir-re are set read-only."
                 (if (and buffer-file-name  ;; buffer is associated with a file
                          ;; directory name matches
                          (string-match my-read-only-dir buffer-file-name)
                          (not buffer-read-only))  ;; buffer is writable
                     (read-only-mode 1)))
               (add-hook 'find-file-hook  #'my-open-buffer-as-read-only)
              )))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one) ; good colour scheme, quite dark
;; (setq doom-theme 'doom-vibrant) ; more contrast
;; (setq doom-theme 'doom-manegarm) ; more dark brown background
;; (load-theme 'doom-gruvbox) ; medium-dark theme with warm colours
;; (load-theme 'doom-solarized-light)

(defvar theme-dark nil)
;; (defun my/load-theme-light ()
;;   "Load the light theme."
;;   (interactive)
;;   (load-theme 'doom-solarized-light t)
;;   ;; (load-theme 'doom-solarized-light t) ; Good alternative: Spacemacs light theme
;; (set-face-background 'highlight "#19aae3")
;; ; better visible active region
;; (set-face-background 'region "#ffeeb0")
;; ; better visible cursor
;; (set-face-background 'cursor "#11ccd6")
;; ;; (after! org-mode
;; (after! org
;; 	(set-face-foreground 'org-document-info-keyword "#a69d92")
;;     ;; (set-face-foreground 'custom-comment-tag "#a69d92") ;better readable preamble in org mode, possibly causing a startup error
;;     )

  ;; (setq theme-dark nil)
  ;; )

;; (defun my/load-theme-dark ()
;;   "Load the dark theme."
;;   (interactive)
;;   (disable-theme 'doom-solarized-light)
;;   ;; (turn-off-solaire-mode)
;;   (load-theme 'doom-gruvbox t)
;;   (setq theme-dark t)
;;   )




(defun my/theme-toggle ()
  "Toggle between light and dark themes."
  (interactive)
  (if theme-dark
      (progn
        (disable-theme 'doom-gruvbox)
        ;; (enable-theme 'spacemacs-light)
        ;; (load-theme 'doom-solarized-light t)
        ;; (enable-theme 'doom-solarized-light)
        (enable-theme 'doom-solarized-light)
        (set-face-background 'beacon-fallback-background "#AntiqueWhite2")
        (setq beacon-color "#fff480")

        (custom-set-faces! '(org-ellipsis :foreground "#c1dbcd")) ; darker ellipsis
        (setq theme-dark nil))
; toggling to dark
    (progn
      (disable-theme 'doom-solarized-light)
      ;; (turn-off-solaire-mode) ; if it's still enabled afterwards
        (condition-case err
            ;; Enable the theme if emacs already has it
            (enable-theme 'doom-gruvbox)
          (setq beacon-color 0.5)
          ;; Otherwise load it
          (error (load-theme 'doom-gruvbox t)))
       (setq theme-dark t))))
  ;; (my/load-theme-light)
  ;; (my/load-theme-dark)))
(global-set-key [f5] 'my/theme-toggle)
;; Load default theme
;; (my/load-theme-dark)

; Load both themes eagerly at startup, later produces conflicts with font spec
(load-theme 'doom-solarized-light t)
(disable-theme 'doom-solarized-light)
(load-theme 'doom-gruvbox t)
(after! org
  (setq org-priority-faces
        '((65 . error)
          (66 . warning)
          (67 . (:foreground "lightblue"))
          (68 . success)
          (69 . white))))
;; (load-theme 'doom-gruvbox-light t)	;

;; (set-fontset-font t 'unicode font nil 'prepend)))

;; (setq doom-theme 'doom-city-lights)
;; (setq doom-theme 'doom-solarized-light)
;; (custom-set-faces! '(default :background "AntiqueWhite2"))
;; (custom-set-faces! '(default :background "AntiqueWhite2"))

;; (setq doom-theme 'modus-operandi)
;; (setq doom-theme 'modus-vivendi)

;;;;;;;;;;;;;;; Solarized Theme settings ;;;;;;;;;;;;
;; (load-theme 'doom-solarized-light t)
;; (setq doom-theme 'doom-solarized-light)
;; ; better visible selection
;; (set-face-background 'highlight "#19aae3")
;; ; better visible active region
;; (set-face-background 'region "#ffeeb0")
;; ; better visible cursor
;; (set-face-background 'cursor "#11ccd6")
;; ;; (after! org-mode
;; (after! org
;; 	(set-face-foreground 'org-document-info-keyword "#a69d92")
;;     ;; (set-face-foreground 'custom-comment-tag "#a69d92") ;better readable preamble in org mode, possibly causing a startup error
;;     )
;;;;;;; END Solarized Theme settings ;;;;;;;;;;;;




;; Edit fonts for variable-pitch-mode
;; (set-face-attribute 'default nil :font "Hack-16")
;; (set-face-attribute 'fixed-pitch nil :font "Hack-16")
;; (set-face-attribute 'variable-pitch nil :font "Noto Serif-12")
;; (set-face-attribute 'variable-pitch nil :font "EB Garamond-16")
;; (font-family-list)

(use-package! mixed-pitch
  :hook (text-mode . mixed-pitch-mode)
  :defer
  :diminish
  :config
  (setq mixed-pitch-set-height t))
; better visible active line default:#F2E6CE

;; (set-face-attribute 'hl-line nil
;;                       :foreground nil
;;                       :background  "#000000")


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!


 ;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
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
;; start in fullscreen
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized)) ; didn't work with WSL and X410
;; (add-to-list 'initial-frame-alist '(fullscreen . fullboth))
(add-to-list 'initial-frame-alist '(fullscreen . fullscreen))



;;;;; Small global adjustments
(setq delete-by-moving-to-trash t)      ; Use system recycle bin
(after! gcmh
  ;; (setq gcmh-high-cons-threshold 67108864) ; 64MB garb. coll.
  ;; (setq garbage-collection-messages t)
  (setq inhibit-compacting-font-caches nil)
  (setq gcmh-high-cons-threshold 33554432)) ; 32MB garb. coll. threshold, shouldn't be >64MB
(delete-selection-mode 1)
;; (setq-default left-margin-width 1) ; if used as default at least not in pdftools
(set-window-buffer nil (current-buffer))
(setq-default flyspell-default-dictionary "en_GB-ize-w_accents")
;;-ize endings with British English as default dictionary.
(setq-default ispell-dictionary "en_GB-ize-w_accents")
(setq-default ispell-personal-dictionary (concat conf-directory ".aspell.en.pws"))
(after! writegood ; don't highlight passive voice
(writegood-passive-voice-turn-off))
(setq reftex-default-bibliography '("/mnt/d/Dropbox/org/full_zotbib.bib"))
(setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))
(if (eq initial-window-system 'x)       ; Start in fullscreen
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))
 ; keep whitespace around point (only in buffer, not on disk)
;; (add-hook! 'text-mode-hook #'(setq ws-butler-keep-whitespace-before-point t))
;; newchange:

;;;Doom Modeline
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)

(defun doom-modeline-conditional-buffer-encoding ()
  "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case (from tecosaur)"
  (setq-local doom-modeline-buffer-encoding
              (unless (and (memq (plist-get (coding-system-plist buffer-file-coding-system) :category)
                                 '(coding-category-undecided coding-category-utf-8))
                           (not (memq (coding-system-eol-type buffer-file-coding-system) '(1 2))))
                t)))
(add-hook 'after-change-major-mode-hook #'doom-modeline-conditional-buffer-encoding)

; 28/6/21: This doesn't quite work yet: how can I move my clock to the right?
;; (setq mode-line-misc-info  (concat (format-time-string "%H:%M") mode-line-misc-info))
;; (format-time-string "%H:%M")
;; (print mode-line-misc-info)
;; (push '(format-time-string "%H:%M") mode-line-misc-info)
(display-time-mode 1)
(setq display-time-24hr-format t)


;; (setq doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode latex-mode)) ; wc-mode can slow things down, I have heard
;; (setq doom-modeline-enable-word-count 0) ; show word counts in text modes
;; (global-subword-mode 1) ; word boundaries in CamelCased Words

;; ; Show wordcount in Org mode.
;; (after! doom-modeline
;;   (add-to-list 'doom-modeline-continuous-word-count-modes 'org-mode)

;;   (doom-modeline-def-modeline 'main
;;     ;; we add the word-count segment at the end
;;     '(bar window-number matches buffer-info remote-host buffer-position selection-info word-count)
;;     '(objed-state misc-info persp-name irc mu4e github debug input-method buffer-encoding lsp major-mode process vcs checker)))

;; Use a bash shell -- conflicts with my/latex-word-count, enables pomodoro utility
;; (setq shell-file-name "bash")
;; ;; initialize bash aliases
;; (setq shell-command-switch "-i") -i: interactive;
;; -c: read the commands that follow -l: read .bashrc

;;;;;; Mode-Hooks


(add-hook! 'text-mode-hook #'hl-todo-mode)
(add-hook! 'text-mode-hook #'beacon-mode)
(setq beacon-blink-delay 0.2)
(setq beacon-blink-duration 0.2)
(add-hook! 'writeroom-mode-hook (lambda () (text-scale-adjust 0)))
; Try disabling for olivetti DEBUG
;; (add-hook! 'visual-line-mode-hook #'visual-fill-column-mode)
;; (add-hook! 'visual-line-mode-hook #'adaptive-wrap-prefix-mode)
; end DEBUG
;; (add-hook! 'org-mode-hook (setq line-number-mode nil))
;; (add-hook 'org-mode-hook (setq line-number-mode nil))
(add-hook! 'octave-mode-hook '(lambda () (abbrev-mode 1) (auto-fill-mode 1)
                               (if (eq window-system 'x)(font-lock-mode 1))))


;; ;; (add-hook! 'org-mode-hook (setq org-todo-keywords  nil)) ; custom todo-kwords
;; (add-hook! 'latex-mode-hook (setq line-number-mode nil))
;; (add-hook! 'latex-mode-hook (setq-default left-margin-width 1))
;; (add-hook! 'latex-mode-hook (setq reftex-plug-into-AUCTeX t))
;; ;; (add-hook! 'latex-mode-hook #'(set-window-buffer nil (current-buffer))) ; maybe an error?
;; ;; (add-hook! 'text-mode-hook #'visual-line-mode #'hl-line-mode #'hl-todo-mode ) ;missing a "'" after the "#" before #'hl-todo-mode was a horrible bug to find
;; ;; (add-hook! 'hl-line-mode-hook #'(set-face-background 'solaire-hl-line-face "#ffebd4"))

;;;;;; File-type hooks
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))


;; better visulization for parentheses
(use-package! rainbow-delimiters
  :defer
  :diminish
  ;; :init
  ;; (setq-default rainbow-delimiters-mode)
  ;; (setq-default electric-pair-mode)
  :hook
  ((prog-mode . rainbow-delimiters-mode)
   ;; (prog-mode . electric-pair-mode)
   (prog-mode . smartparens-mode)
   )
  :config
  (add-hook 'latex-mode-hook '(lambda () (rainbow-delimiters-mode -1)))
         ;; (sh-mode . rainbow-delimiters-mode)
        )

;; General keybindings
;;; aliases for two unbound transpose commands
;;; might deserve their own keybinding
(defalias 'ts 'transpose-sentences)
(defalias 'tp 'transpose-paragraphs)
; hard to remember function name for display magnification
(defalias 'zoom 'text-scale-adjust)
;;; definitions for dragging lines up and down
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

(defun my/capitalize-previous-word ()
  "Transform word before cursor to exactly one capital.
   Leaves exactly one space behind it."
  (interactive)
  (backward-word)
  (capitalize-word 1)
  (if (= 32 (char-after)) ; check for whitespace
      (forward-char)
      ))

(defun my/downcase-previous-word ()
  "Transform word before cursor to lowercase.
   Leaves exactly one space behind it."
  (interactive)
  (backward-word)
  (downcase-word 1)
  (if (= 32 (char-after)) ; check for whitespace
      (forward-char)
      ))

(defun my/kill-other-buffer ()
  "Kill the buffer in the opposite window."
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (other-window 1))

(defun my/kill-line ()
  "Kill the rest of the line; if at line beginning: kill whole line."
  (interactive)
  (if (eq (line-beginning-position) (point))
    (kill-whole-line)
    (kill-line)))

(after! smartparens
  (defun my/comment-line ()
    "Toggle comment of line; if empty, start new comment."
    (interactive)
    (if (sp-point-in-blank-line)
        (comment-dwim ())
      (comment-line ()))))


(load "~/.doom.d/defuns/move-text.el")
(load "~/.doom.d/defuns/unfill-region.el")

;; ;; global keybindings
(map! "C-1"       #'my/comment-line ; quick comment toggle
      ;; "C-c r"     #'eval-region
      ;; "C-z"       #'undo-tree-undo
      ;; "C-k"       #'kill-whole-line
      "C-c Q"   #'doom/delete-this-file
      "C-k"       #'my/kill-line
      "C-z"       #'undo-fu-only-undo
      "M-w"       #'clipboard-kill-ring-save ;make copy available in clipboard
      "C-S-s"     #'isearch-forward-regexp
      "C-S-r"     #'isearch-backward-regexp
      ;; "C-S-z"     #'undo-tree-redo
      "C-S-z"     #'undo-fu-only-redo
      "C-S-d"     #'duplicate-line-or-region
      "<C-S-SPC>" #'fixup-whitespace
      "M-C"     #'my/capitalize-previous-word
      "M-L"     #'my/downcase-previous-word
      ;; movement
      "<C-right>" #'forward-word
      "<C-left>"  #'backward-word
      ;; "<C-up>"    #'move-text-up ; could lead to confusing misapplications in e.g. auctex
      "<M-up>"    #'move-text-up
      ;; "<C-down>"  #'move-text-down
      "<M-down>"  #'move-text-down
      "<M-right>" #'forward-sentence
      "<M-left>"  #'backward-sentence
      ;; shrinking and expanding regions
      "C-c ."       #'er/expand-region
      "C-c ,"         (lambda () (interactive) (er/expand-region -1)) ; overwritten by later keyset
      ;; window management
      "C-x w"     #'kill-this-buffer
      "C-x W"     #'my/kill-other-buffer
      "C-x <SPC>" #'other-window
      "C-x <up>" #'enlarge-window-horizontally
      "C-x <down>" #'shrink-window-horizontally
      ;; "C-<"       #'previous-buffer
      "C-<tab>"       #'previous-buffer
      ;; "C->"       #'next-buffer
      "<C-S-iso-lefttab>" #'next-buffer
      "C-x <C-SPC>" #'ivy-switch-buffer-other-window
      ;; "<S-f11>"   #'toggle-frame-maximized
      "C-x C-r" #'helm-recentf
      "<f9>" #'writeroom-mode
      "C-c m b" #'my/html-recording-button-wrap
      )


;; TODO Rebind to local maps
;; syntax example:
;; (map! :map mu4e-main-mode-map
;;       :after mu4e
;;       :nive "h" #'+workspace/other)


(after! winner-mode
  ;; configure window management shortcuts
  ;; Default case: Use F9 to focus on a window, F7 to go back to previous window config.
  (map!
  "[f7]" #'winner-undo
 "[C-f7]" #'winner-redo
 "[f9]" #'delete-other-windows
 "[C-f9]" #'delete-window
  ))


(use-package! hl-todo
  ;; This should not be activated in Org mode though
  :after org
  :diminish
  :init
  (setq hl-todo-highlight-punctuation ":"
      hl-todo-keyword-faces
          `(("TODO"       font-lock-keyword-face warning bold)
            ("CRITICAL"       error bold)
            ("FIXME"      error bold)
            ("DEBUG"      error bold)
            ("IMPORTANT"      error bold italic)
            ("HACK"       font-lock-constant-face bold)
            ("REVIEW"     font-lock-keyword-face bold)
            ("SUGGESTION"     font-lock-keyword-face bold)
            ("NOTE"       success bold)
            ("DEPRECATED" font-lock-doc-face bold)
            )))

(use-package! avy
  :defer t
  :diminish
  :bind ("C-<" . avy-goto-word-1)
        ("C-ö" . avy-goto-word-1))


;; ABBREV-Mode
(use-package! abbrev
  :defer
  :init
  (setq-default abbrev-mode t)
  ;; :hook
  ;; ((org-mode text-mode) . abbrev-mode)
  :config
  (setq abbrev-file-name (expand-file-name "abbrev.el" doom-private-dir))
  (setq save-abbrevs 'silently)
  (map! "C-x a a" #'edit-abbrevs))


(defun my/expand-without-space ()
    "Expand an abbrev without inserting <SPC> if <SPC> triggered expansion."
;; Based on http://ergoemacs.org/emacs/emacs_abbrev_mode_tutorial.html
;; t  ; This is the minimal version
    (if (= ?\  last-input-event)
    t          ;if last key was <SPC>
  nil          ; otherwise
  ))
(put 'my/expand-without-space 'no-self-insert t)


;; ============
;; LATEX
;; ============
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
  (let ((boox-dir "/mnt/d/gdrive/boox/review/"))
  (buffer-file-name)
  (shell-command (concat "cp '"(buffer-file-name) "' " boox-dir ))))

(after! hi-lock-mode
;; (set-face-background 'hi-yellow "#ebe37c")
(defun my/highlight-long-sentences (X)
  "Highlight sentences longer than X words."
  (interactive "nHighlight sentences longer than:")
  (setq regex
        (concat "\([^.?!…‽\"'”’]+ \)\{" (number-to-string X) ",999\}[^.?!…‽\"'”’  ]+[.?!…‽\"'”’]"
                ))
  (highlight-regexp regex)
  )
)

(use-package! latex
  ;; :hook
;;     ('LaTeX-mode-hook TeX-fold-mode))
  ;; (add-hook! 'latex-mode-hook (lambda () (TeX-fold-mode -1)))
  ;; Use pdf-tools to open PDF files
  :defer t
  :config
(setq
 TeX-view-program-selection '((output-pdf "PDF Tools"))
 TeX-source-correlate-start-server t
 )
;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
          #'TeX-revert-document-buffer)
(add-hook! 'LaTeX-mode-hook #'visual-line-mode)
(add-hook! 'LaTeX-mode-hook #'turn-off-auto-fill)
(add-hook! 'TeX-update-style-hook 'hl-todo-mode)
(setq TeX-save-query nil)
(setq reftex-cite-prompt-optional-args t)
;; (add-hook 'LaTeX-mode-hook (lambda () (rainbow-delimiters-mode rainbow-delimiters-mode-disablede-hook (flyspell-lazy-mode)))
;; (add-hook! 'LaTeX-mode-hook (lambda () (TeX-fold-mode -1)))
  )



(defun my/TeX-delete-char ()
"Delete TeX-quotes at once if encountered."
(interactive)
(if (use-region-p)
    (kill-region (region-beginning) (region-end))
    (if (or
         (string-equal (buffer-substring (point) (+ (point) 2)) TeX-open-quote)
         (string-equal (buffer-substring (point) (+ (point) 2)) TeX-close-quote)
         )
        ;; if TeX quote follows
        (delete-char 2)
      ;; else
      (delete-char 1)
    )))

(defun my/TeX-delete-backward-char ()
"Backward delete TeX-quotes at once if encountered."
(interactive)
(if (use-region-p)
      (kill-region (region-beginning) (region-end))
  (if (or
       (string-equal (buffer-substring (- (point) 2) (point) ) TeX-open-quote)
       (string-equal (buffer-substring (- (point) 2) (point) ) TeX-close-quote)
       )
      ;; if TeX quote precedes
      (delete-backward-char 2)
    ;; else
    (delete-backward-char 1)
    )))

(defun my/reftex-toc ()
  "Rescan the index before displaying it."
  (interactive)
  (reftex-toc)
  (reftex-toc-rescan)
  )



(defun my/TeX-insert-quote ()
  "Insert a normal quote if in comment-environment.

Works around a bug in auctecs+smartparens.
Allows wrapping quotes, too."
  (interactive)
  ;; Check if in comment environment
  (if (nth 4 (syntax-ppss))
      (insert "\"")
    ;; if not in comment environment
    ;; then check if region is active
    (if (use-region-p)
        (progn
          (save-excursion
            (if (eq (region-end) (point))
                (progn
                (goto-char (region-end))
                (insert TeX-close-quote)
                (goto-char (region-beginning))
                (insert TeX-open-quote)
                  )
              (progn
                (insert TeX-open-quote)
                (goto-char (region-end))
                (insert TeX-close-quote)
                  )
              ))
          )
    ;; If no region active, run command once
      (TeX-insert-quote nil))
      ))



(use-package! latex-extra               ; Allows for Code folding, and other utilities
  :after latex
  ;; :hook
  ;; (latex-mode . (delete-selection-mode latex-extra-mode))
  :hook (LaTeX-mode . latex-extra-mode)
  ;; :bind ("\"" .  my/TeX-insert-quote)
  :config
  ;; (add-hook! 'latex-mode-hook #'latex-extra-mode)
  ;; Do not create a buffer if it is already open in a different frame. For pdfsync with AucTeX and pdf tools.
  ;; Source: https://www.reddit.com/r/emacs/comments/iil1lg/ask_auctex_with_pdftools_to_sync_pdf_in_another/
  ;; FIXME Does not seem to load right at startup
  (push
 '(".*\\.pdf$" . (nil (reusable-frames . t)
                      (inhibit-switch-frame . nil)))
 display-buffer-alist)
  (push
 '(".*\\.tex$" . (nil (reusable-frames . t)
                      (inhibit-switch-frame . nil)))
 display-buffer-alist)
  (map!
   :map LaTeX-mode-map
        "-" #'self-insert-command ; instead of weird LaTeX-babel hyphens
        "C-c j" #'latex/next-section
        "C-c C-f" #'TeX-font
        "\"" #'my/TeX-insert-quote
        "C-d" #'my/TeX-delete-char
        "<delete>" #'my/TeX-delete-char
        "<backspace>" #'my/TeX-delete-backward-char
        "C-c f" #'latex/next-section-same-level
       ;; "C-i" #'TeX-complete-symbol
        "C-c i" #'helm-insert-latex-math
        "C-c k" #'latex/previous-section
        "C-c C-o" #'latex/hide-show-all
        "C-c n" #'TeX-narrow-to-group
        "C-c c" #'reftex-citation
        "C-c +"       #'er/expand-region
        "C-c -"         (lambda () (interactive) (er/expand-region -1))
        ;; "C-c t" #'reftex-toc
        "C-c t" #'my/reftex-toc
        "<C-mouse-1>" #'pdf-sync-forward-search ;somehow buggy
        "C-c C-j" #'pdf-sync-forward-search
        "C-c g" #'pdf-sync-forward-search
        ;; "<C-mouse-1>" #'pdf-sync-forward-search ; add a keyboard alternative
        ;; TODO: add scroll-other-window for C-Mousewheel
        ;; Add utilities to swap paragraphs -- should this only be in latex mode?
        "<M-S-up>" (lambda() (interactive) (transpose-paragraphs -1) (backward-paragraph))
        "<M-S-down>" #'transpose-paragraphs
        "C-c w" #'my/latex-word-count
        )
  )

;; Try to remove a bug with smartparens in auctex: wrong translation of insert-quotes when using in comment environemnts
(use-package! smartparens-latex
  :after latex-extra
  )
  ;; :config
  ;; (sp-pair "``" "''" nil :actions :rem)
;; (sp-pair "``" nil :actions :rem)
;; ==========
;;  FLYSPELL
;; ==========


;; TODO Define orglatex exporters
;; (defun my/org-latex-headless-export
;;     "Export an org buffer into a latex body without any preamble"
;;   (interactive)
;;   )

;; (defun my/org-latex-standalone-export
;;     "Export an org buffer into a standalone latex class (allows for inclusion into other files or standalone compilation)"
;;   (interactive)
;;     )


(defun my/flyspell-save-word ()
  "Add a word to the personal dictionary."
  :after 'flyspell
  (interactive)
  (let ((current-location (point))
         (word (flyspell-get-word)))
    (when (consp word)
      (flyspell-do-correct 'save nil (car word) current-location (cadr word) (caddr word) current-location))))

(map!
 :after flyspell
        "<C-dead-circumflex>" #'flyspell-correct-word-before-point
        "C-°" #'my/flyspell-save-word
 )


;; ;; ========
;; ;; ORG MODE
;; ;; ========

;; Use variable width font faces in current buffer
 ;; (defun my/buffer-face-proportional-spaced ()
 ;;   "Set font to a variable width (proportional) fonts in current buffer"
 ;;   (interactive)
 ;;   (setq buffer-face-mode-face '(:family "Symbola" :height 100 :width semi-condensed))
 ;;   (buffer-face-mode))

 ;; ;; Use monospaced font faces in current buffer
 ;; (defun my/buffer-face-mono-spaced ()
 ;;   "Sets a fixed width (monospace) font in current buffer"
 ;;   (interactive)
 ;;   (setq buffer-face-mode-face '(:family "Inconsolata" :height 100))
 ;;   (buffer-face-mode))



(use-package! org-pdftools
  :after org
  :defer
  :hook (org-load . org-pdftools-setup-link))


(use-package! org
  :init
  (setq org-startup-folded t)
  (setq org-support-shift-select t)     ;shift-selection outside of special environments
  (setq org-todo-keywords
        '((sequence "TODO(t)" "STARTED(s)" "WAIT(w)" "HOLD(h)" "|" "DONE(d)" )))
  (setq org-priority-highest 65)
  (setq org-priority-lowest 69)
  (map!
   :map org-mode-map
   "C-c f C-e" #'(lambda() (interactive) (org-emphasize ?/))
   "C-c f e" #'(lambda() (interactive) (org-emphasize ?/))
   "C-i" #'(lambda() (interactive) (org-emphasize ?/))
   "C-c f C-b" #'(lambda() (interactive) (org-emphasize ?*))
   "C-c f b" #'(lambda() (interactive) (org-emphasize ?*))
   ;; "C-b" #'(lambda() (interactive) (org-emphasize ?*)) ; Clashes with a navigation command
   "C-c f C-u" #'(lambda() (interactive) (org-emphasize ?_))
   "C-c f C-n" #'(lambda() (interactive) (org-emphasize ? ))
   "C-c f n" #'(lambda() (interactive) (org-emphasize ? ))
   "C-c e c" #'org-icalendar-export-to-ics
   "C-c t" #'counsel-org-goto ; similar to ToC command in auctex
   "C-c C-t" #'counsel-org-goto
   "<f8>" #'(lambda ()(interactive); repeat last org-export
               (let ((current-prefix-arg '(4))) ; simulate universal prefix argument C-u
                 (call-interactively #'org-export-dispatch)))
   "C-c W" #'my/org-latex-word-count
   )
  )


(defun my/org-enable-margins ()
  (interactive)
  (progn
  ;; Add spacing around the top, increase by header-line-face-height
    (setq header-line-format " ")
    (set-face-attribute 'header-line nil :height 200)
    ;; (setq line-spacing 0.1)
    (setq left-margin-width 14)
    (setq right-margin-width 14)
    (setq visual-fill-column-extra-text-width '(24 . 24))
    ;; reset the buffer to make changes visible
    (set-window-buffer nil (current-buffer))
    ))

(after! org
  (setq org-insert-heading-respect-content nil)
  (setq org-hide-emphasis-markers t)
   ;; Org Agenda: Store file names in list and add files with org-agenda-file-to-front
  (setq org-agenda-files "/mnt/d/Dropbox/org/agenda-file-list.org")
  ;; would be better: construct file names from list + environment variables (org-path!)
  ;; Some good regex-based solutions here:
  ;; https://stackoverflow.com/questions/11384516/how-to-make-all-org-files-under-a-folder-added-in-agenda-list-automatically?rq=1
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.5))
  (setq org-pretty-entities-include-sub-superscripts t)
  (setq org-ellipsis "  ") ;; folding symbol
  (setq org-bullets-bullet-list '(" ")) ; No bullets
  (setq org-M-RET-may-split-line t) ; allow to split org headings with M-RET
  (setq org-ctrl-k-protect-subtree t) ; do not kill hidden subtress with C-k
  (setq org-todo-keywords
        '((sequence "TODO(t)" "SPECIFY(s)" "STARTED(r)" "WAIT(w)" "|" "FAILED(f)" "KILL(k)" "DELEGATED(l)" "DONE(d)")))
  (setq org-priority-faces
        '((65 . error)
          (66 . warning)
          (67 . (:foreground "lightblue"))
          (68 . success)
          (69 . white)))
  ;; (setq org-tag-alist nil)
  (setq org-journal-tag-alist '(("PhD_writing" . ?w) ("PhD_reading" . ?r)
                                ("exploration" . ?e) ("procrastination" . ?P)
                                ("paper_writing" . ?p)
                                   ("social" . ?S) ("admin" . ?a) ("work" . ?W)
                                   ("skill_development") ("attendance" . ?A)
                                   ("weekly_reading") ("background_reading")
                                   ("academic_sideproject") ("dead_time" . ?D)
                                   ("sports" . ?s) ("zis" . ?z)
                                   ("application" . ?n)))
  (setq org-clock-persist 'history)
  (org-clock-persistence-insinuate)
  (add-hook! org-mode (hl-line-mode 0)) ; turn off hl-line in org mode
  (add-hook! org-mode (display-line-numbers-mode 0))
  ;; (add-hook! org-mode (electric-indent-local-mode -1))
  (add-hook! org-mode my/org-enable-margins)
  ;; (add-hook! org-mode 'turn-off-solaire-mode)
  ;; Let org commands work with point on any of the leading asterisks
  (setq org-use-speed-commands
        (lambda ()
          (and (looking-at org-outline-regexp)
               (looking-back "^\**"))))
  (defalias 'counsel-org-goto 'my/org-jump)
  (defalias 'counsel-org-goto 'my/org-toc))

;;;; org-roam

(use-package! org-bullets
  :after org
  :init
  (add-hook! 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )


(use-package! org-journal
      :after org-roam
      :bind
      ;; ("C-c n j" . org-journal-new-entry)
      ;; ("C-c r j" . org-journal-new-entry)
      :init
      (map!
       "C-c r j" #'org-journal-new-entry
       "C-c r J" #'org-journal-new-date-entry
       )
      :custom
      (setq org-extend-today-until 3) ; include entries before 3AM in previous day
      (org-journal-dir (concat org_roam_dir "/journal/"))
      (org-journal-date-prefix "#+TITLE: ")
      (org-journal-file-format "%Y-%m-%d.org")
      (org-journal-date-format "%A, %d %B %Y")
      ;; System locale to use for formatting time values.
      (setq system-time-locale "C")         ; Make sure that the weekdays in the
                                      ; time stamps of your Org mode files and
                                        ; in the agenda appear in English.
      (setq org-support-shift-select t)
      )


;; (after! org-journal
    ;; (setq org-journal-enable-agenda-integration t)
    ;; )

;; Org-Ref starting slowing things down and I don't really need it
(use-package! org-ref
    :after org
    :config
    (setq
         org-ref-completion-library 'org-ref-ivy-cite
         org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-ivy-bibtex
         bibtex-completion-bibliography (concat org-directory "/full_zotbib.bib")
         ivy-bibtex-default-action 'ivy-bibtex-insert-key ;; maybe change to insert reference; then set default "autocite"
         org-ref-default-bibliography (list (concat org-directory "/full_zotbib.bib"))
         org-ref-bibliography-notes (concat org_roam_dir "/notes/bibnotes.org")
         org-ref-note-title-format "* TODO %y - %t\n :PROPERTIES:\n  :Custom_ID: %k\n  :NOTER_DOCUMENT: %F\n :ROAM_KEY: cite:%k\n  :AUTHOR: %9a\n  :JOURNAL: %j\n  :YEAR: %y\n  :VOLUME: %v\n  :PAGES: %p\n  :DOI: %D\n  :URL: %U\n :END:\n\n"
         org-ref-notes-directory  (concat org_roam_dir "/notes/")
         org-ref-notes-function 'orb-edit-notes
         company-reftex-max-annotation-length 30
         )
    (map! :map latex-mode-map "C-c b" #'ivy-bibtex)
          ;; "C-c B" #'ivy-bibtex-insert-reference
          ;; "C-c v" #'ivy-bibtex-insert-reference)
    ;; (ivy-set-actions 'ivy-bibtex '(("p" ivy-bibtex-open-any "Open PDF, URL, or DOI")))
    )


;; (setq
;;  org-ref-default-bibliography '("/mnt/d/Dropbox/org/full_zotbib.bib")
;;  bibtex-completion-notes-path "/mnt/d/Dropbox/org/roam/orbnotes/"
;;  bibtex-completion-bibliography "/mnt/d/Dropbox/org/full_zotbib.bib"
;;  bibtex-completion-pdf-field "file"
;;  bibtex-completion-notes-template-multiple-files
;;  (concat
;;   "#+TITLE: ${title}\n"
;;   "#+ROAM_KEY: cite:${=key=}\n"
;;   "* TODO Notes\n"
;;   ":PROPERTIES:\n"
;;   ":Custom_ID: ${=key=}\n"
;;   ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
;;   ":AUTHOR: ${author-abbrev}\n"
;;   ":JOURNAL: ${journaltitle}\n"
;;   ":DATE: ${date}\n"
;;   ":YEAR: ${year}\n"
;;   ":DOI: ${doi}\n"
;;   ":URL: ${url}\n"
;;   ":END:\n\n"
;;   )
;;  )










(use-package! org-roam
  :after org
  :diminish
  :config
  (setq org-roam-capture-templates
        '(
          ("d" "default" plain (function org-roam--capture-get-point)
           :file-name "%<%Y-%m-%d>_${slug}"
           ;; :head "#+TITLE: ${title}\n#+ROAM_KEY: ${ref}"
           :head "#+TITLE: ${title}\n#+ROAM_KEY: %<%Y-%m-%d>_${slug}\n\n"
           "%?"
           :unnarrowed t)
          ;; Possible way to separate some roam files for Agenda inclusion:
          ;; ("a" "agenda" plain (function org-roam--capture-get-point)
          ;;  :file-name "agenda/%<%Y-%m-%d>_${slug}"
          ;;  ;; :head "#+TITLE: ${title}\n#+ROAM_KEY: ${ref}"
          ;;  :head "#+TITLE: ${title}\n#+ROAM_KEY: %<%Y-%m-%d>_${slug}\n\n"
          ;;  "%?"
          ;;  :unnarrowed t)
          ))
  (setq +org-roam-open-buffer-on-find-file nil) ; inhibit roam buffer
  :init
  (map! "C-c r t" #'org-roam-buffer-toggle-display
        "C-c r f" #'org-roam-find-file
        "C-c r b" #'org-roam-buffer-toggle-display
        "C-c r i" #'org-roam-insert
        "C-c r c" #'org-roam-capture
        "C-c r g" #'org-open-at-point
        "C-c r r" #'org-roam-find-ref
        "C-c w" #'count-words
        )
  )



;; (print org-roam-capture-templates)


;;; define categories that should be excluded
(setq org-export-exclude-category (list "google" "private"))

;;; define filter. The filter is called on each entry in the agenda.
;;; It defines a regexp to search for two timestamps, gets the start
;;; and end point of the entry and does a regexp search. It also
;;; checks if the category of the entry is in an exclude list and
;;; returns either t or nil to skip or include the entry.


;; Exporting orgmode todos to .ics
;; source: https://orgmode.org/worg/org-tutorials/org-google-sync.html



(after! pdf-tools
  :config
  ;; more fine-grained zooming
 (setq pdf-view-resize-factor 1.1)
 ;; keyboard shortcuts
 (define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
 (define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
 (define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete)
 (define-key pdf-view-mode-map (kbd "C-S-p") 'my/push-to-boox))



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

;; ====================
;; WRITING UTILITIES
;; ====================


;; Enable Centred Scrolling Minor mode.  From Protesilaos.com
(use-package emacs
  :config
  (setq-default scroll-preserve-screen-position t)
  (setq-default scroll-conservatively 1) ; affects `scroll-step'
  (setq-default scroll-margin 0)

  (define-minor-mode prot/scroll-centre-cursor-mode
    "Toggle centred cursor scrolling behaviour."
    :init-value nil
    :lighter " S="
    :global nil
    (if prot/scroll-centre-cursor-mode
        (setq-local scroll-margin (* (frame-height) 2)
                    scroll-conservatively 0
                    maximum-scroll-margin 0.5)
      (dolist (local '(scroll-preserve-screen-position
                       scroll-conservatively
                       maximum-scroll-margin
                       scroll-margin))
        (kill-local-variable `,local))))

  ;; C-c l is used for `org-store-link'.  The mnemonic for this is to
  ;; focus the Line and also works as a variant of C-l.
  :bind ("C-c L" . prot/scroll-centre-cursor-mode))


(use-package! olivetti
  ;; adapted from protesilaos.com
  :defer
  :ensure
  :diminish
  :config
  ;; (setq olivetti-body-width 0.5)
  (setq olivetti-body-width 30)
  (setq olivetti-minimum-body-width 25) ; should try to enlarge proportional fonts instead
  (setq olivetti-recall-visual-line-mode-entry-state t)

  (define-minor-mode prot/olivetti-mode
    "Toggle buffer-local `olivetti-mode' with additional parameters.

Fringes are disabled.  The modeline is hidden, except for
`prog-mode' buffers.  The
default typeface is set to a proportionately spaced family,
except for programming modes (see `variable-pitch-mode')."
    :init-value nil
    :global nil
    (if prot/olivetti-mode
        (progn
          (olivetti-mode 1)
          (set-window-fringes (selected-window) 0 0)
          (variable-pitch-mode 1)
          (redraw-frame (selected-frame))
          ;; (prot/cursor-type-mode 1)
          (unless (derived-mode-p 'prog-mode)
            (hide-mode-line-mode 1)
            (prot/scroll-centre-cursor-mode 1)
            (display-line-numbers-mode -1)
            ;; (setq olivetti-body-width 0.5)
            )
          (redraw-frame (selected-frame)))
        (olivetti-mode -1)
        (set-window-fringes (selected-window) nil) ; Use default width
        (variable-pitch-mode -1)
        (unless (derived-mode-p 'prog-mode)
          (turn-off-hide-mode-line-mode)
          (display-line-numbers-mode t))
        (prot/scroll-centre-cursor-mode -1)
      (redraw-frame (selected-frame))
      ))

  (defun my/olivetti-on ()
      "Enable writing environment with olivetti & Co."
      (interactive)
    (olivetti-mode 1)
    (set-window-fringes (selected-window) 0 0)
    ;; (variable-pitch-mode 1)
    (redraw-frame (selected-frame))
    (unless (derived-mode-p 'prog-mode)
        ;; What to do if not in a prog mode
      ;; (hide-mode-line-mode 1)
      (prot/scroll-centre-cursor-mode 1)
      (display-line-numbers-mode -1)
      ;; (setq olivetti-body-width 0.5)
      ;; (setq olivetti-body-width 30)
      ;; (beacon-mode 0)
      (org-bullets-mode 1) ; hide bullets
      (redraw-frame (selected-frame))
      ))

  ;; add a shortcut for hiding mode-line

  (defun my/olivetti-off ()
      "Disable writing environment with olivetti & Co."
    (interactive)
    (olivetti-mode -1)
    (set-window-fringes (selected-window) nil) ; Use default width
    (hide-mode-line-mode -1)
    (display-line-numbers-mode 1)
    (setq redraw-frame (selected-frame))
    )


;; Always enable scroll-centre cursor mode

  ;; :bind ("C-c o" . prot/olivetti-mode)
  :bind ("C-c o" . my/olivetti-on)
  ("C-c O" . my/olivetti-off)
  )

  ;; (add-hook! text-mode-hook #'prot/olivetti-mode)
  ;; (add-hook! 'olivetti-mode-hook '(lambda() (redraw-frame)))
  ;; (add-hook! 'olivetti-mode-hook #'prot/scroll-centre-cursor-mode)
  ;; (add-hook! 'prot/olivetti-mode-hook #'(lambda() (display-line-numbers-mode -1)))

;; ====================
;; PYTHON
;; ====================

;; set local key: C-c g to +lookup/definition
(use-package! elpy
  :defer t
  :init
  (advice-add 'python-mode :before 'elpy-enable))

(map! :map python-mode-map
      "C-c g"    #'+lookup/definition
      "<C-up>"   #'move-line-up
      "<C-down>" #'move-line-down
      )

;; ====================
;; TRAMP Remote Editing
;; ====================
(setq tramp-default-method "sshx")       ;instead of scp. sshx has fewer auth prompts than ssh
(defvar disable-tramp-backups '(all))   ;fewer requests without autosaves
(setq tramp-verbose 10)
;; Disable completion when remote-editing.

(add-hook
 'python-mode-hook
 (lambda () (when (file-remote-p default-directory)
              (company-mode -1)
              (projectile-mode -1)
              (turn-off-anaconda-eldoc-mode)
              (anaconda-mode -1))))

;; Synchronizing Todo Calendars
;; currently just manually exporting the deadlines to todo_next-tasks.ics, accessed by gcal via Dropbox

;; ;; TODO
;; ADD
;; - writeroom-mode-support
;; - a switch for serif fonts in buffer (maybe with a hook for latex-buffers) see emacswiki ""faces-per-buffer""
;; - olivetti-mode
;; - load a separate file my-snippets.el for the defun my/* functions that I use
;; - use proper hook! macros for doom config!
;; Shortcut for fullscreen/fullframe toggle!
;; Add deft!

;; DEBUG
;; - Emacs-client + daemon setup
;; - better scrolling

;; ADOPT
;; - org-roam-capture
;; - templates for .tex, .gitignore, .py
;; - org-roam-bibtex
;; - org-noter
;; - org-agenda
;; - better use of AucTEX
;; - better use of ivy and company

;; IMPROVE
;; - change background colour / adaptive background colour
;; - add shellscript to open up emacsclients natively with .org files
;; - default template for latex (central config file)
;; - templates for org-capture

;; ;; define default article class
(after! org
  (add-to-list 'org-latex-classes
               '("kcl-beamer"
                 "\\documentclass[presentation, usepdftitle=false, aspectratio=1610]{beamer}
                  \\usepackage{preamble-lualatex}
                  \\include{preamble}
                 [NO-DEFAULT-PACKAGES]
                 [NO-PACKAGES]"
                  ("\\section{%s}" . "\\section*{%s}")
                  ("\\subsection{%s}" . "\\subsection*{%s}")
                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
  (add-to-list 'org-latex-classes
               '("phd-chapter"
                 "\\documentclass[class=article, crop=false]{standalone}
                  \\usepackage{standalone}
                  \\usepackage{phd_chapter}
                  \\usepackage[authordate, backend=biber, bibencoding=utf8, cmsdate=both]{biblatex-chicago} % for original-dates
                  \\bibliography{/mnt/d/Dropbox/org/full_zotbib.bib} %Ubuntu Path
                  \\input {chapter_bibstyles.tex}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))

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

;; ;;   ;; define default dissertation class
;; ;;   ;; define default beamer class
;; ;;   ;; default packages for all latex exports
;; ;;   (add-to-list 'org-latex-packages-alist '("" "amsmath"))
;; ;; )
