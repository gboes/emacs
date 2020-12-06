;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'TeX-error-overview-mode-abbrev-table '())

(define-abbrev-table 'TeX-output-mode-abbrev-table '())

(define-abbrev-table 'TeX-special-mode-abbrev-table '())

(define-abbrev-table 'array-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'bat-mode-abbrev-table '())

(define-abbrev-table 'biblio-selection-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'bookmark-bmenu-mode-abbrev-table '())

(define-abbrev-table 'bookmark-edit-annotation-mode-abbrev-table '())

(define-abbrev-table 'c++-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'change-log-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'conf-colon-mode-abbrev-table '())

(define-abbrev-table 'conf-desktop-mode-abbrev-table '())

(define-abbrev-table 'conf-javaprop-mode-abbrev-table '())

(define-abbrev-table 'conf-ppd-mode-abbrev-table '())

(define-abbrev-table 'conf-space-mode-abbrev-table '())

(define-abbrev-table 'conf-toml-mode-abbrev-table '())

(define-abbrev-table 'conf-unix-mode-abbrev-table '())

(define-abbrev-table 'conf-windows-mode-abbrev-table '())

(define-abbrev-table 'conf-xdefaults-mode-abbrev-table '())

(define-abbrev-table 'css-mode-abbrev-table '())

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'display-time-world-mode-abbrev-table '())

(define-abbrev-table 'doctex-mode-abbrev-table '())

(define-abbrev-table 'edebug-eval-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'elisp-refs-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'epa-info-mode-abbrev-table '())

(define-abbrev-table 'epa-key-list-mode-abbrev-table '())

(define-abbrev-table 'epa-key-mode-abbrev-table '())

(define-abbrev-table 'eshell-mode-abbrev-table '())

(define-abbrev-table 'flycheck-error-list-mode-abbrev-table '())

(define-abbrev-table 'flycheck-error-message-mode-abbrev-table '())

(define-abbrev-table 'flymake-diagnostics-buffer-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'gfm-mode-abbrev-table '())

(define-abbrev-table 'gfm-view-mode-abbrev-table '())

(define-abbrev-table 'git-commit-elisp-text-mode-abbrev-table '())

(define-abbrev-table 'gitconfig-mode-abbrev-table '())

(define-abbrev-table 'gitignore-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table
  '(
    ("8Alpha" "Α" my/expand-without-space 0)
    ("8Beta" "Β" my/expand-without-space 0)
    ("8Chi" "Χ" my/expand-without-space 0)
    ("8Delta" "Δ" my/expand-without-space 0)
    ("8Epsilon" "Ε" my/expand-without-space 0)
    ("8Eta" "Η" my/expand-without-space 0)
    ("8Gamma" "Γ" my/expand-without-space 0)
    ("8Iota" "Ι" my/expand-without-space 0)
    ("8Kappa" "Κ" my/expand-without-space 0)
    ("8Lambda" "Λ" my/expand-without-space 0)
    ("8Mu" "Μ" my/expand-without-space 0)
    ("8Nu" "Ν" my/expand-without-space 0)
    ("8Omega" "Ω" my/expand-without-space 0)
    ("8Omicron" "Ο" my/expand-without-space 0)
    ("8Phi" "Φ" my/expand-without-space 0)
    ("8Pi" "Π" my/expand-without-space 0)
    ("8Psi" "Ψ" my/expand-without-space 0)
    ("8Rho" "Ρ" my/expand-without-space 0)
    ("8Sigma" "Σ" my/expand-without-space 0)
    ("8Tau" "Τ" my/expand-without-space 0)
    ("8Theta" "Θ" my/expand-without-space 0)
    ("8Upsilon" "Υ" my/expand-without-space 0)
    ("8Xi" "Ξ" my/expand-without-space 0)
    ("8Zeta" "Ζ" my/expand-without-space 0)
    ("8alpha" "α" my/expand-without-space 0)
    ("8beta" "β" my/expand-without-space 0)
    ("8box" "□" my/expand-without-space 7)
    ("8cdot" "·" my/expand-without-space 1)
    ("8chi" "χ" my/expand-without-space 0)
    ("8del" "∂" my/expand-without-space 0)
    ("8delta" "δ" my/expand-without-space 0)
    ("8diamond" "◇" my/expand-without-space 5)
    ("8dots" "…" nil 1)
    ("8empty" "∅" nil 0)
    ("8entails" "⊃" nil 1)
    ("8epsilon" "ε" my/expand-without-space 0)
    ("8eta" "η" my/expand-without-space 0)
    ("8forall" "∀" my/expand-without-space 12)
    ("8gamma" "γ" my/expand-without-space 0)
    ("8grequal" "≥" my/expand-without-space 0)
    ("8hlregex" "\\([^.?!…‽\\\"'”’  
]+ \\)\\{19,999\\}[^.?!…‽\\\"'”’  ]+[.?!…‽\\\"'”’
]" nil 1)
    ("8horseshoe" "⊃" nil 15)
    ("8iota" "ι" my/expand-without-space 0)
    ("8kappa" "κ" my/expand-without-space 0)
    ("8lambda" "λ" my/expand-without-space 0)
    ("8land" "∧" nil 14)
    ("8lequal" "≤" nil 0)
    ("8lneg" "¬" my/expand-without-space 1)
    ("8lor" "∨" nil 3)
    ("8mu" "μ" my/expand-without-space 0)
    ("8nabla" "∇" my/expand-without-space 0)
    ("8nec" "□" my/expand-without-space 0)
    ("8necessarily" "□" my/expand-without-space 0)
    ("8neg" "¬" my/expand-without-space 48)
    ("8negation" "¬" my/expand-without-space 2)
    ("8neq" "≠" my/expand-without-space 7)
    ("8nil" "∅" nil 0)
    ("8nthereis" "∄" my/expand-without-space 0)
    ("8nu" "ν" my/expand-without-space 0)
    ("8omega" "ω" my/expand-without-space 0)
    ("8omicron" "ο" my/expand-without-space 0)
    ("8phi" "φ" my/expand-without-space 7)
    ("8pi" "π" my/expand-without-space 0)
    ("8pos" "◇" my/expand-without-space 0)
    ("8poss" "◇" my/expand-without-space 0)
    ("8possible" "◇" my/expand-without-space 0)
    ("8possibly" "◇" my/expand-without-space 0)
    ("8psi" "ψ" my/expand-without-space 0)
    ("8rho" "ρ" my/expand-without-space 0)
    ("8rhorseshoe" "⊃" nil 0)
    ("8sigma" "σ" my/expand-without-space 1)
    ("8tau" "τ" my/expand-without-space 0)
    ("8thereis" "∃" my/expand-without-space 1)
    ("8thereisnt" "∄" my/expand-without-space 0)
    ("8theta" "θ" my/expand-without-space 6)
    ("8ti" "transcendental idealism" nil 7)
    ("8unequal" "≠" my/expand-without-space 3)
    ("8upsilon" "υ" my/expand-without-space 0)
    ("8varsigma" "ς" my/expand-without-space 0)
    ("8xi" "ξ" my/expand-without-space 0)
    ("8zeta" "ζ" my/expand-without-space 0)
    ("ALl" "All" nil 2)
    ("ANd" "And" nil 2)
    ("BUt" "But" nil 10)
    ("CHeck" "Check" nil 4)
    ("DIe" "Die" nil 5)
    ("DUmmett" "Dummett" nil 2)
    ("FOr" "For" nil 10)
    ("HUsserl" "Husserl" nil 13)
    ("PHenomenological" "Phenomenological" nil 7)
    ("TEh" "The" nil 0)
    ("THat" "That" nil 8)
    ("THe" "The" nil 178)
    ("THeir" "Their" nil 2)
    ("THen" "Then" nil 11)
    ("THere" "There" nil 10)
    ("THese" "These" nil 4)
    ("THey" "They" nil 7)
    ("THis" "This" nil 88)
    ("THomas" "Thomas" nil 3)
    ("THose" "Those" nil 1)
    ("THus" "Thus" nil 6)
    ("WHat" "What" nil 21)
    ("WHen" "When" nil 7)
    ("WHere" "Where" nil 5)
    ("WHo" "Who" nil 3)
    ("WHy" "Why" nil 4)
    ("WIthout" "Without" nil 2)
    ("WIttgenstein" "Wittgenstein" nil 17)
    ("abotu" "about" nil 5)
    ("adn" "and" nil 5)
    ("argumenet" "argument" nil 1)
    ("chagne" "change" nil 2)
    ("cness" "consciousness" nil 2)
    ("conditiosn" "conditions" nil 2)
    ("consitution" "constitution" nil 1)
    ("contian" "contain" nil 1)
    ("coudl" "could" nil 5)
    ("deterines" "determines" nil 1)
    ("distinctino" "distinction" nil 1)
    ("enirely" "entirely" nil 1)
    ("hgiher" "higher" nil 1)
    ("hte" "the" nil 72)
    ("htey" "they" nil 5)
    ("htis" "this" nil 11)
    ("hwen" "when" nil 1)
    ("hypohteses" "hypotheses" nil 2)
    ("jsut" "just" nil 11)
    ("konw" "know" nil 3)
    ("konwledge" "knowledge" nil 1)
    ("lanugage" "language" nil 2)
    ("lgoical" "logical" nil 3)
    ("liek" "like" nil 8)
    ("lifworld" "lifeworld" nil 2)
    ("logism" "logical empiricism" nil 2)
    ("logist" "logical empiricist" nil 4)
    ("logists" "logical empiricists" nil 5)
    ("mpy" "Merleau-Ponty" nil 10)
    ("mroe" "more" nil 8)
    ("nad" "and" nil 18)
    ("nto" "not" nil 16)
    ("onyl" "only" nil 2)
    ("otehr" "other" nil 4)
    ("owrld" "world" nil 2)
    ("owrst" "worst" nil 1)
    ("phenical" "phenomenological" nil 2)
    ("phenist" "phenomenologist" nil 1)
    ("pheny" "phenomenology" nil 1)
    ("pical" "phenomenological" nil 4)
    ("pist" "phenomenologist" nil 3)
    ("pists" "phenomenologists" nil 0)
    ("pogist" "phenomenologist" nil 1)
    ("pogy" "phenomenology" nil 8)
    ("ppaus" "\\pause" nil 4)
    ("pps" "\\pause" nil 1)
    ("quetsion" "question" nil 1)
    ("quetsions" "questions" nil 1)
    ("scic" "scientific" nil 2)
    ("scii" "science" nil 2)
    ("scist" "scientist" nil 2)
    ("taht" "that" nil 26)
    ("teh" "the" nil 53)
    ("tehre" "there" nil 2)
    ("tehse" "these" nil 4)
    ("throuhg" "through" nil 1)
    ("tiem" "time" nil 5)
    ("transcendenal" "transcendental" nil 2)
    ("udnerstand" "understand" nil 1)
    ("undertand" "understand" nil 1)
    ("vism" "verificationism" nil 7)
    ("vist" "verificationist" nil 1)
    ("vists" "verificationists" nil 0)
    ("waht" "what" nil 8)
    ("whcih" "which" nil 4)
    ("whehter" "whether" nil 1)
    ("woudl" "would" nil 16)
   ))

(define-abbrev-table 'grep-mode-abbrev-table '())

(define-abbrev-table 'helm-grep-mode-abbrev-table '())

(define-abbrev-table 'helm-major-mode-abbrev-table '())

(define-abbrev-table 'helm-occur-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'helpful-mode-abbrev-table '())

(define-abbrev-table 'html-mode-abbrev-table '())

(define-abbrev-table 'ibuffer-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'inferior-python-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-grep-mode-abbrev-table '())

(define-abbrev-table 'ivy-occur-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'js-jsx-mode-abbrev-table '())

(define-abbrev-table 'js-mode-abbrev-table '())

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("8Lar" "\\Leftarrow" nil 0)
    ("8Lrar" "\\Leftrightarrow" nil 0)
    ("8Rar" "\\Rightarrow" nil 0)
    ("8c" "\\cite[]{}" nil 3)
    ("8cd" "\\cdot" my/expand-without-space 6)
    ("8lar" "\\leftarrow" nil 0)
    ("8lrar" "\\leftrightarrow" nil 0)
    ("8rar" "\\rightarrow" nil 0)
    ("8th" "\\thesis{" my/expand-without-space 21)
    ("8ts" "\\textsubscript{}" nil 4)
    ("8vc" "\\thesis{V-Crit}" nil 12)
    ("Lar" "\\Leftarrow" nil 2)
    ("Rar" "\\Rightarrow" nil 2)
    ("bbs" "\\bigskip" nil 5)
    ("cd" "\\cdot" my/expand-without-space 5)
    ("eg" "e.g.\\" nil 11)
    ("ie" "i.e.\\" nil 6)
    ("lar" "\\leftarrow" nil 2)
    ("pps" "\\pause" nil 4)
    ("rar" "\\rightarrow" nil 3)
    ("vphent" "\\thesis{V-Phen-T}" nil 7)
    ("zall" "\\forall" nil 2)
    ("zex" "\\exists" nil 1)
    ("zn" "\\neg" nil 0)
   ))

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'log-edit-mode-abbrev-table '())

(define-abbrev-table 'magit-cherry-mode-abbrev-table '())

(define-abbrev-table 'magit-diff-mode-abbrev-table '())

(define-abbrev-table 'magit-log-mode-abbrev-table '())

(define-abbrev-table 'magit-log-select-mode-abbrev-table '())

(define-abbrev-table 'magit-merge-preview-mode-abbrev-table '())

(define-abbrev-table 'magit-mode-abbrev-table '())

(define-abbrev-table 'magit-popup-mode-abbrev-table '())

(define-abbrev-table 'magit-process-mode-abbrev-table '())

(define-abbrev-table 'magit-reflog-mode-abbrev-table '())

(define-abbrev-table 'magit-refs-mode-abbrev-table '())

(define-abbrev-table 'magit-repolist-mode-abbrev-table '())

(define-abbrev-table 'magit-revision-mode-abbrev-table '())

(define-abbrev-table 'magit-section-mode-abbrev-table '())

(define-abbrev-table 'magit-stash-mode-abbrev-table '())

(define-abbrev-table 'magit-stashes-mode-abbrev-table '())

(define-abbrev-table 'magit-status-mode-abbrev-table '())

(define-abbrev-table 'magit-submodule-list-mode-abbrev-table '())

(define-abbrev-table 'magit-todos-list-mode-abbrev-table '())

(define-abbrev-table 'markdown-mode-abbrev-table '())

(define-abbrev-table 'markdown-view-mode-abbrev-table '())

(define-abbrev-table 'message-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'mhtml-mode-abbrev-table
  '(
    ("8nd" "&ndash;" nil 3)
    ("br" "<br>" nil 9)
   ))

(define-abbrev-table 'objc-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'octave-abbrev-table '())

(define-abbrev-table 'org-export-stack-mode-abbrev-table '())

(define-abbrev-table 'org-journal-mode-abbrev-table '())

(define-abbrev-table 'org-journal-search-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table
  '(
    ("bq" "#+BEGIN_QUOTE" nil 3)
    ("eq" "#+END_QUOTE" nil 3)
    ("testfun" "None" (lambda nil) 0)
   ))

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'overseer-buffer-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'pdf-annot-list-mode-abbrev-table '())

(define-abbrev-table 'pdf-occur-buffer-mode-abbrev-table '())

(define-abbrev-table 'pdf-outline-buffer-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table
  '(
   ))

(define-abbrev-table 'plain-tex-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'python-mode-abbrev-table '())

(define-abbrev-table 'python-mode-skeleton-abbrev-table
  '(
   ))

(define-abbrev-table 'reb-lisp-mode-abbrev-table '())

(define-abbrev-table 'reb-mode-abbrev-table '())

(define-abbrev-table 'reftex-index-mode-abbrev-table '())

(define-abbrev-table 'reftex-index-phrases-mode-abbrev-table '())

(define-abbrev-table 'reftex-select-bib-mode-abbrev-table '())

(define-abbrev-table 'reftex-select-label-mode-abbrev-table '())

(define-abbrev-table 'reftex-toc-mode-abbrev-table '())

(define-abbrev-table 'ruby-mode-abbrev-table '())

(define-abbrev-table 'rxt-help-mode-abbrev-table '())

(define-abbrev-table 'scss-mode-abbrev-table '())

(define-abbrev-table 'select-tags-table-mode-abbrev-table '())

(define-abbrev-table 'sgml-mode-abbrev-table '())

(define-abbrev-table 'sh-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'slitex-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'so-long-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'tablist-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'tex-mode-abbrev-table '())

(define-abbrev-table 'tex-shell-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'url-cookie-mode-abbrev-table '())

(define-abbrev-table 'use-package-statistics-mode-abbrev-table '())

(define-abbrev-table 'vc-bzr-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-dir-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())

(define-abbrev-table 'vc-hg-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-mtn-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-svn-log-view-mode-abbrev-table '())

(define-abbrev-table 'xref--xref-buffer-mode-abbrev-table '())

(define-abbrev-table 'zen-mode-abbrev-table '())

