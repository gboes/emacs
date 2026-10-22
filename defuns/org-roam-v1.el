;;; defuns/org-roam-v1.el -*- lexical-binding: t; -*-

;; org-roam v1 integration, ported from Doom's lang/org/contrib/roam.el as of
;; doomemacs 8951de19 (Jan 2025). Newer Doom maps the org module's +roam flag to
;; org-roam v2, so +roam is off in init.el and v1 is declared in packages.el.

;; emacsql-sqlite3 starts sqlite3 with :coding 'utf-8-auto, which on Emacs 30
;; prefixes sent strings with a BOM; sqlite3 rejects them and every query
;; times out. Use plain UTF-8 for that process.
(define-advice make-process (:filter-args (args) emacsql-sqlite3-utf-8)
  (if (equal (plist-get args :name) "emacsql-sqlite3")
      (plist-put (copy-sequence args) :coding 'utf-8-unix)
    args))

(defvar +org-roam-open-buffer-on-find-file t
  "If non-nil, open the org-roam buffer when opening an org roam file.")

(use-package! org-roam
  :hook (org-roam-backlinks-mode . turn-on-visual-line-mode)
  :commands (org-roam-buffer-toggle-display
             org-roam-dailies-find-date
             org-roam-dailies-find-today
             org-roam-dailies-find-tomorrow
             org-roam-dailies-find-yesterday)
  :preface
  (defvar org-roam-directory nil)
  (defvar org-roam-db-location nil)
  (defun +org-init-roam-maybe-h ()
    "Activate `org-roam-mode'. If it fails, fail gracefully."
    (unless (with-demoted-errors "ORG ROAM ERROR: %s"
              (org-roam-mode +1)
              t)
      (message "To try reinitializing org-roam, run 'M-x org-roam-mode'")
      (org-roam-mode -1)))
  :init
  ;; Doom's module hooked `org-load-hook'; here org may already be loaded by
  ;; the time this file is read, and `after!' covers both cases.
  (after! org (+org-init-roam-maybe-h))
  (map! :after org
        :map org-mode-map
        :localleader
        :prefix ("m" . "org-roam")
        "b" #'org-roam-switch-to-buffer
        "f" #'org-roam-find-file
        "g" #'org-roam-graph
        "i" #'org-roam-insert
        "I" #'org-roam-insert-immediate
        "m" #'org-roam
        "t" #'org-roam-tag-add
        "T" #'org-roam-tag-delete
        (:prefix ("d" . "by date")
         :desc "Find previous note" "b" #'org-roam-dailies-find-previous-note
         :desc "Find date"          "d" #'org-roam-dailies-find-date
         :desc "Find next note"     "f" #'org-roam-dailies-find-next-note
         :desc "Find tomorrow"      "m" #'org-roam-dailies-find-tomorrow
         :desc "Capture today"      "n" #'org-roam-dailies-capture-today
         :desc "Find today"         "t" #'org-roam-dailies-find-today
         :desc "Capture Date"       "v" #'org-roam-dailies-capture-date
         :desc "Find yesterday"     "y" #'org-roam-dailies-find-yesterday
         :desc "Find directory"     "." #'org-roam-dailies-find-directory))
  :config
  (setq org-roam-directory
        (file-name-as-directory
         (file-truename
          (expand-file-name (or org-roam-directory "roam")
                            org-directory)))
        ;; Old Doom kept the v1 db in .local/etc/; `doom-data-dir' has moved
        ;; since, and the v2 db now lives in .local/cache/.
        org-roam-db-location (or org-roam-db-location
                                 (concat doom-local-dir "etc/org-roam.db"))
        ;; Make org-roam buffer sticky; i.e. don't replace it when opening a
        ;; file with an *-other-window command.
        org-roam-buffer-window-parameters '((no-delete-other-windows . t))
        org-roam-link-use-custom-faces 'everywhere
        org-roam-completion-everywhere t
        org-roam-completion-system
        (cond ((modulep! :completion helm) 'helm)
              ((modulep! :completion ivy) 'ivy)
              ((modulep! :completion ido) 'ido)
              ('default)))

  ;; Open the org-roam buffer on `org-roam-find-file' (not plain `find-file')
  ;; when `+org-roam-open-buffer-on-find-file' is non-nil.
  (add-hook! 'find-file-hook
    (defun +org-roam-open-buffer-maybe-h ()
      (and +org-roam-open-buffer-on-find-file
           (memq 'org-roam-buffer--update-maybe post-command-hook)
           (not (window-parameter nil 'window-side)) ; don't proc for popups
           (not (eq 'visible (org-roam-buffer--visibility)))
           (with-current-buffer (window-buffer)
             (org-roam-buffer--get-create)))))

  (add-hook 'org-roam-buffer-prepare-hook #'hide-mode-line-mode))

(use-package! org-roam-protocol
  :after org-protocol)
