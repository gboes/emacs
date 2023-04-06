;;-*-coding: utf-8;-*-
(define-abbrev-table 'global-abbrev-table
  '(
    ("8Alpha" "Α" my/expand-without-space :count 0)
    ("8Beta" "Β" my/expand-without-space :count 0)
    ("8Chi" "Χ" my/expand-without-space :count 0)
    ("8Delta" "Δ" my/expand-without-space :count 0)
    ("8Epsilon" "Ε" my/expand-without-space :count 0)
    ("8Eta" "Η" my/expand-without-space :count 0)
    ("8Gamma" "Γ" my/expand-without-space :count 0)
    ("8Iota" "Ι" my/expand-without-space :count 0)
    ("8Kappa" "Κ" my/expand-without-space :count 0)
    ("8Lambda" "Λ" my/expand-without-space :count 0)
    ("8Mu" "Μ" my/expand-without-space :count 0)
    ("8Nu" "Ν" my/expand-without-space :count 0)
    ("8Omega" "Ω" my/expand-without-space :count 0)
    ("8Omicron" "Ο" my/expand-without-space :count 0)
    ("8Phi" "Φ" my/expand-without-space :count 0)
    ("8Pi" "Π" my/expand-without-space :count 0)
    ("8Psi" "Ψ" my/expand-without-space :count 0)
    ("8Rho" "Ρ" my/expand-without-space :count 0)
    ("8Sigma" "Σ" my/expand-without-space :count 0)
    ("8Tau" "Τ" my/expand-without-space :count 0)
    ("8Theta" "Θ" my/expand-without-space :count 0)
    ("8Upsilon" "Υ" my/expand-without-space :count 0)
    ("8Xi" "Ξ" my/expand-without-space :count 0)
    ("8Zeta" "Ζ" my/expand-without-space :count 0)
    ("8alpha" "α" my/expand-without-space :count 0)
    ("8arrow" "→" my/expand-without-space :count 2)
    ("8beta" "β" my/expand-without-space :count 0)
    ("8box" "□" my/expand-without-space :count 8)
    ("8cdot" "·" my/expand-without-space :count 1)
    ("8chi" "χ" my/expand-without-space :count 0)
    ("8del" "∂" my/expand-without-space :count 0)
    ("8delta" "δ" my/expand-without-space :count 0)
    ("8diamond" "◇" my/expand-without-space :count 7)
    ("8dots" "…" nil :count 5)
    ("8dturn" "⊨" my/expand-without-space :count 2)
    ("8dturnstyle" "⊨" my/expand-without-space :count 1)
    ("8element" "∈" my/expand-without-space :count 0)
    ("8empty" "∅" nil :count 0)
    ("8entails" "⊃" nil :count 2)
    ("8epsilon" "ε" my/expand-without-space :count 0)
    ("8eta" "η" my/expand-without-space :count 0)
    ("8forall" "∀" my/expand-without-space :count 15)
    ("8gamma" "γ" my/expand-without-space :count 0)
    ("8gbp" "£" nil :count 12)
    ("8gbpp" "￡" nil :count 2)
    ("8grequal" "≥" my/expand-without-space :count 0)
    ("8hlregex" "\\([^.?!…‽\\\"'”’  
]+ \\)\\{19,999\\}[^.?!…‽\\\"'”’  ]+[.?!…‽\\\"'”’
]" nil :count 1)
    ("8horseshoe" "⊃" nil :count 16)
    ("8in" "∈" my/expand-without-space :count 130)
    ("8iota" "ι" my/expand-without-space :count 0)
    ("8kappa" "κ" my/expand-without-space :count 0)
    ("8lambda" "λ" my/expand-without-space :count 0)
    ("8land" "∧" nil :count 17)
    ("8larrow" "←" my/expand-without-space :count 1)
    ("8lequal" "≤" nil :count 0)
    ("8lneg" "¬" my/expand-without-space :count 1)
    ("8lor" "∨" nil :count 8)
    ("8lrarrow" "↔" my/expand-without-space :count 2)
    ("8mu" "μ" my/expand-without-space :count 0)
    ("8nabla" "∇" my/expand-without-space :count 0)
    ("8nec" "□" my/expand-without-space :count 0)
    ("8necessarily" "□" my/expand-without-space :count 0)
    ("8neg" "¬" my/expand-without-space :count 67)
    ("8negation" "¬" my/expand-without-space :count 2)
    ("8nelement" "∉" my/expand-without-space :count 0)
    ("8neq" "≠" my/expand-without-space :count 13)
    ("8nil" "∅" nil :count 0)
    ("8nin" "∉" my/expand-without-space :count 1)
    ("8notelement" "∉" my/expand-without-space :count 0)
    ("8notin" "∉" my/expand-without-space :count 0)
    ("8nthereis" "∄" my/expand-without-space :count 0)
    ("8nu" "ν" my/expand-without-space :count 0)
    ("8omega" "ω" my/expand-without-space :count 0)
    ("8omicron" "ο" my/expand-without-space :count 0)
    ("8phi" "φ" my/expand-without-space :count 13)
    ("8pi" "π" my/expand-without-space :count 0)
    ("8pos" "◇" my/expand-without-space :count 0)
    ("8poss" "◇" my/expand-without-space :count 0)
    ("8possible" "◇" my/expand-without-space :count 0)
    ("8possibly" "◇" my/expand-without-space :count 0)
    ("8psi" "ψ" my/expand-without-space :count 0)
    ("8rarrow" "→" my/expand-without-space :count 2)
    ("8rho" "ρ" my/expand-without-space :count 0)
    ("8rhorseshoe" "⊃" nil :count 0)
    ("8sigma" "σ" my/expand-without-space :count 3)
    ("8tau" "τ" my/expand-without-space :count 0)
    ("8thereis" "∃" my/expand-without-space :count 2)
    ("8thereisnt" "∄" my/expand-without-space :count 0)
    ("8theta" "θ" my/expand-without-space :count 6)
    ("8ti" "transcendental idealism" nil :count 11)
    ("8unequal" "≠" my/expand-without-space :count 3)
    ("8upsilon" "υ" my/expand-without-space :count 0)
    ("8varsigma" "ς" my/expand-without-space :count 0)
    ("8wp" "** Week of
*** Mo
**** Writing Block
**** Admin Block
*** Tu
**** Writing Block
**** Admin Block
*** We
**** Writing Block
**** Admin Block
*** Th
**** Writing Block
**** Admin Block
*** Fr
**** Writing Block
**** Admin Block
" nil :count 1)
    ("8xi" "ξ" my/expand-without-space :count 0)
    ("8zeta" "ζ" my/expand-without-space :count 0)
    ("ALl" "All" nil :count 3)
    ("ANd" "And" nil :count 5)
    ("BUt" "But" nil :count 30)
    ("CHeck" "Check" nil :count 25)
    ("DIe" "Die" nil :count 5)
    ("DUmmett" "Dummett" nil :count 8)
    ("FOr" "For" nil :count 28)
    ("HUsserl" "Husserl" nil :count 34)
    ("Hls" "Husserl's" nil :count 1)
    ("Mpy" "Merleau-Ponty" nil :count 10)
    ("Mpys" "Merleau-Ponty's" nil :count 10)
    ("PHenomenological" "Phenomenological" nil :count 7)
    ("REalism" "Realism" nil :count 3)
    ("SUmmary" "Summary" nil :count 1)
    ("TEh" "The" nil :count 0)
    ("THat" "That" nil :count 18)
    ("THe" "The" nil :count 708)
    ("THeir" "Their" nil :count 5)
    ("THen" "Then" nil :count 20)
    ("THere" "There" nil :count 43)
    ("THese" "These" nil :count 15)
    ("THey" "They" nil :count 15)
    ("THis" "This" nil :count 293)
    ("THomas" "Thomas" nil :count 3)
    ("THose" "Those" nil :count 2)
    ("THus" "Thus" nil :count 11)
    ("WHat" "What" nil :count 59)
    ("WHen" "When" nil :count 30)
    ("WHere" "Where" nil :count 12)
    ("WHile" "While" nil :count 8)
    ("WHo" "Who" nil :count 3)
    ("WHy" "Why" nil :count 5)
    ("WIthin" "Within" nil :count 2)
    ("WIthout" "Without" nil :count 6)
    ("WIttgenstein" "Wittgenstein" nil :count 19)
    ("abotu" "about" nil :count 34)
    ("adn" "and" nil :count 27)
    ("ahve" "have" nil :count 16)
    ("anyting" "anything" nil :count 4)
    ("approahces" "approaches" nil :count 4)
    ("archies" "archives" nil :count 1)
    ("argumenet" "argument" nil :count 1)
    ("baout" "about" nil :count 42)
    ("btu" "but" nil :count 12)
    ("chagne" "change" nil :count 8)
    ("chagnes" "changes" nil :count 3)
    ("classicla" "classical" nil :count 1)
    ("clsoe" "close" nil :count 3)
    ("clsoely" "closely" nil :count 3)
    ("cness" "consciousness" nil :count 6)
    ("conditios" "conditions" nil :count 1)
    ("conditiosn" "conditions" nil :count 2)
    ("consitution" "constitution" nil :count 2)
    ("contemporaray" "contemporary" nil :count 1)
    ("contian" "contain" nil :count 1)
    ("correpsond" "correspond" nil :count 1)
    ("coudl" "could" nil :count 30)
    ("ctpry" "contemporary" nil :count 3)
    ("defintion" "definition" nil :count 2)
    ("destrution" "destruction" nil :count 1)
    ("deterines" "determines" nil :count 1)
    ("distinctino" "distinction" nil :count 1)
    ("ebtween" "between" nil :count 1)
    ("enirely" "entirely" nil :count 1)
    ("explainign" "explaining" nil :count 1)
    ("fidnen" "finden" nil :count 1)
    ("furhter" "further" nil :count 3)
    ("harv" "Husserl Archives" nil :count 1)
    ("hgiher" "higher" nil :count 1)
    ("hsa" "has" nil :count 4)
    ("hsould" "should" nil :count 7)
    ("htat" "that" nil :count 11)
    ("hte" "the" nil :count 553)
    ("htem" "them" nil :count 1)
    ("hten" "then" nil :count 1)
    ("hteory" "theory" nil :count 1)
    ("htere" "there" nil :count 4)
    ("htese" "these" nil :count 10)
    ("htey" "they" nil :count 25)
    ("htink" "think" nil :count 8)
    ("htis" "this" nil :count 64)
    ("husser" "Husserl" nil :count 16)
    ("hwat" "what" nil :count 3)
    ("hwen" "when" nil :count 1)
    ("hwoever" "however" nil :count 1)
    ("hwy" "why" nil :count 1)
    ("hypohteses" "hypotheses" nil :count 3)
    ("iener" "einer" nil :count 1)
    ("intentinoality" "intentionality" nil :count 1)
    ("iwth" "with" nil :count 5)
    ("jsut" "just" nil :count 38)
    ("jsutified" "justified" nil :count 2)
    ("judgmeent" "judgement" nil :count 2)
    ("knowlege" "knowledge" nil :count 8)
    ("konw" "know" nil :count 9)
    ("konwledge" "knowledge" nil :count 1)
    ("langauge" "language" nil :count 1)
    ("lanugage" "language" nil :count 3)
    ("laso" "also" nil :count 4)
    ("lgoical" "logical" nil :count 14)
    ("liek" "like" nil :count 33)
    ("lifworld" "lifeworld" nil :count 15)
    ("logism" "logical empiricism" nil :count 2)
    ("logist" "logical empiricist" nil :count 4)
    ("logists" "logical empiricists" nil :count 5)
    ("ltxgitignore" "*moving-parts.tex
beamertheme*
*.png
*.backup
*.*~
*.bbl
*.pdf
*.toc
*.blg
*.aux
*.bcf
*.synctex*
*.xml
*.blg
*.toc
*.mtc*
*.maf
*.fls
*.sta
*.latexmk
*.fdb_latexmk
*.org
*.auctex-auto
*.out
" nil :count 1)
    ("menaing" "meaning" nil :count 13)
    ("menas" "means" nil :count 7)
    ("metaphyiscs" "metaphysics" nil :count 11)
    ("mgiht" "might" nil :count 20)
    ("mhigt" "might" nil :count 2)
    ("mpy" "Merleau-Ponty" nil :count 10)
    ("mroe" "more" nil :count 36)
    ("msut" "must" nil :count 4)
    ("muhc" "much" nil :count 1)
    ("mvoe" "move" nil :count 1)
    ("nad" "and" nil :count 103)
    ("notino" "notion" nil :count 27)
    ("notinos" "notions" nil :count 5)
    ("nto" "not" nil :count 54)
    ("nubmer" "number" nil :count 4)
    ("obejctive" "objective" nil :count 1)
    ("ocncept" "concept" nil :count 1)
    ("ocnflict" "conflict" nil :count 1)
    ("ocnsider" "consider" nil :count 1)
    ("oculd" "could" nil :count 11)
    ("odne" "done" nil :count 1)
    ("onyl" "only" nil :count 3)
    ("otehr" "other" nil :count 19)
    ("owrk" "work" nil :count 10)
    ("owrld" "world" nil :count 18)
    ("owrst" "worst" nil :count 1)
    ("owuld" "would" nil :count 8)
    ("oyu" "you" nil :count 3)
    ("oyur" "your" nil :count 2)
    ("percepual" "perceptual" nil :count 1)
    ("phenical" "phenomenological" nil :count 2)
    ("phenist" "phenomenologist" nil :count 1)
    ("phenomenlogical" "phenomenological" nil :count 1)
    ("phenomenoloy" "phenomenology" nil :count 3)
    ("pheny" "phenomenology" nil :count 1)
    ("philsoophy" "philosophy" nil :count 1)
    ("pical" "phenomenological" nil :count 13)
    ("pist" "phenomenologist" nil :count 3)
    ("pists" "phenomenologists" nil :count 0)
    ("pogist" "phenomenologist" nil :count 2)
    ("pogists" "phenomenologists" nil :count 4)
    ("pogy" "phenomenology" nil :count 26)
    ("possiblity" "possibility" nil :count 2)
    ("ppaus" "\\pause" nil :count 4)
    ("pps" "\\pause" nil :count 16)
    ("prase" "paraphrase" nil :count 1)
    ("proejct" "project" nil :count 7)
    ("qualitites" "qualities" nil :count 4)
    ("quetsion" "question" nil :count 3)
    ("quetsions" "questions" nil :count 1)
    ("quikc" "quick" nil :count 1)
    ("ratehr" "rather" nil :count 7)
    ("relevnat" "relevant" nil :count 2)
    ("resaerch" "research" nil :count 12)
    ("respnose" "response" nil :count 3)
    ("rvw" "review" nil :count 4)
    ("rvwr" "reviewer" nil :count 1)
    ("saem" "same" nil :count 1)
    ("scic" "scientific" nil :count 2)
    ("scietnific" "scientific" nil :count 10)
    ("scii" "science" nil :count 2)
    ("scinetific" "scientific" nil :count 13)
    ("scist" "scientist" nil :count 2)
    ("shoudl" "should" nil :count 2)
    ("sicne" "since" nil :count 1)
    ("srevice" "service" nil :count 1)
    ("suhc" "such" nil :count 14)
    ("syntehtic" "synthetic" nil :count 6)
    ("taht" "that" nil :count 99)
    ("teh" "the" nil :count 341)
    ("tehory" "theory" nil :count 2)
    ("tehre" "there" nil :count 36)
    ("tehse" "these" nil :count 13)
    ("tehy" "they" nil :count 2)
    ("temrs" "terms" nil :count 4)
    ("themelves" "themselves" nil :count 1)
    ("therefoer" "therefore" nil :count 1)
    ("throuhg" "through" nil :count 3)
    ("thsi" "this" nil :count 2)
    ("thsoe" "those" nil :count 1)
    ("tiem" "time" nil :count 11)
    ("tkae" "take" nil :count 3)
    ("tral" "transcendental" nil :count 1)
    ("tranl" "transcendental" nil :count 0)
    ("transcendenal" "transcendental" nil :count 5)
    ("trat" "transcenden" nil :count 0)
    ("turht" "truth" nil :count 1)
    ("uach" "auch" nil :count 1)
    ("udnerstand" "understand" nil :count 4)
    ("udnerstood" "understood" nil :count 1)
    ("undertand" "understand" nil :count 5)
    ("verificaionist" "verificationist" nil :count 1)
    ("vism" "verificationism" nil :count 7)
    ("vist" "verificationist" nil :count 1)
    ("vists" "verificationists" nil :count 0)
    ("waht" "what" nil :count 54)
    ("whcih" "which" nil :count 23)
    ("whehter" "whether" nil :count 3)
    ("whetehr" "whether" nil :count 6)
    ("whihc" "which" nil :count 5)
    ("wiht" "with" nil :count 14)
    ("wihtout" "without" nil :count 8)
    ("woudl" "would" nil :count 44)
   ))

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("8Lar" "\\Leftarrow" nil :count 0)
    ("8Lrar" "\\Leftrightarrow" nil :count 0)
    ("8Rar" "\\Rightarrow" nil :count 0)
    ("8c" "\\cite[]{}" nil :count 3)
    ("8cd" "\\cdot" my/expand-without-space :count 6)
    ("8d" "[\\dots]" nil :count 70)
    ("8deenq" "\\deenquote{
}{
}%end of deenquote" nil :count 5)
    ("8dmnd" "\\(\\Diamond\\)" nil :count 1)
    ("8hf" "\\hfill" nil :count 9)
    ("8lar" "\\leftarrow" nil :count 0)
    ("8lb" "\\{" my/expand-without-space :count 9)
    ("8lrar" "\\leftrightarrow" nil :count 0)
    ("8rar" "\\rightarrow" nil :count 0)
    ("8rb" "\\}" my/expand-without-space :count 10)
    ("8th" "\\thesis{" my/expand-without-space :count 110)
    ("8thc" "\\thesis{V-M-Criterion}" nil :count 13)
    ("8tht" "\\thesis{V-Truth}" nil :count 12)
    ("8todo" "% TODO::::::::::::::::::::::::::::::TODO::::::::::::::::::::::::::::::TODO
%
% TODO::::::::::::::::::::::::::::::TODO::::::::::::::::::::::::::::::TODO" nil :count 4)
    ("8ts" "\\textsubscript{" my/expand-without-space :count 4)
    ("8vc" "\\thesis{V-Crit}" nil :count 12)
    ("Lar" "\\Leftarrow" nil :count 2)
    ("Rar" "\\Rightarrow" nil :count 2)
    ("argline" "         \\vspace{2mm}
        \\hrule
        \\vspace{1mm}" "bbs" :count 1)
    ("argrule" "         \\vspace{2mm}
        \\hrule
        \\vspace{1mm}" nil :count 2)
    ("cd" "\\cdot" my/expand-without-space :count 6)
    ("dd" "[\\dots]" nil :count 4)
    ("deenq" "\\deenquote{
}{
}" nil :count 50)
    ("dmd" "\\Diamond" nil :count 21)
    ("eg" "e.g.\\" nil :count 18)
    ("hwo" "who" nil :count 4)
    ("ie" "i.e.\\" nil :count 14)
    ("lar" "\\leftarrow" nil :count 4)
    ("lnd" "\\land" nil :count 13)
    ("lrar" "\\leftrightarrow" nil :count 1)
    ("ng" "\\neg" nil :count 35)
    ("pps" "\\pause" nil :count 4)
    ("rar" "\\rightarrow" nil :count 25)
    ("rightarow" "rightarrow" nil :count 1)
    ("tdc" "% TODO Citation" nil :count 3)
    ("thereis" "exists" nil :count 6)
    ("tsub" "\\textsubscript{" my/expand-without-space :count 3)
    ("vphent" "\\thesis{V-Phen-T}" nil :count 7)
    ("xst" "\\exists" nil :count 3)
    ("zall" "\\forall" nil :count 2)
    ("zex" "\\exists" nil :count 1)
    ("zn" "\\neg" nil :count 0)
   ))

(define-abbrev-table 'mhtml-mode-abbrev-table
  '(
    ("8nd" "&ndash;" nil :count 3)
    ("br" "<br>" nil :count 9)
   ))

(define-abbrev-table 'org-journal-mode-abbrev-table
  '(
    ("8nik" "** Today's Nikki: :nikki:
- What went well: 

- What went not so well: 

- My goal for tomorrow:
" nil :count 7)
    ("8td" "** TODAY [0/5]
--- FOCUS ---
1. [ ]
--- TASKS ---
1. [ ]
2. [ ]
3. [ ]
4. [ ]
5. [ ]
--- BONUS ---
1. [ ] 
2. [ ] 
3. [ ]
** Reflection
*** What worked? 
*** What did not? 
*** What should I change, what should I build on?
*** Energy levels, sources and drains:
*** My goal for tomorrow:
** A Paragraph of Prose:
" nil :count 175)
   ))

(define-abbrev-table 'org-mode-abbrev-table
  '(
    ("8acadtemp01" "#+LATEX_HEADER: \\input{/mnt/d/Dropbox (Personal)/paper_ideas/preamble_01_noclass.tex}
#+LATEX_HEADER: \\renewcommand{\\cite}{\\autocite}
#+LATEX_HEADER: \\setcounter{tocdepth}{1}
# #+LATEX_HEADER: \\usepackage{parskip}

#+BEGIN_EXPORT latex
\\setcounter{tocdepth}{1}
% \\allsectionsfont{\\sffamily}     % Sans-Serif Headings
#+END_EXPORT

# words:

# abstract:
#+BEGIN_EXPORT latex
\\thispagestyle{empty}
\\vfill
\\begin{center}
\\begin{minipage}{0.9\\linewidth}
\\abstract{\\noindent


}
\\end{minipage}
\\end{center}
\\pagebreak
#+END_EXPORT

* Notes :noexport:
" nil :count 3)
    ("8acadtemp02" "#+LATEX_HEADER: \\input{./../preamble_01_noclass.tex}
#+LATEX_HEADER: \\renewcommand{\\cite}{\\autocite}
#+LATEX_HEADER: \\setcounter{tocdepth}{1}
# #+LATEX_HEADER: \\usepackage{parskip}

#+BEGIN_EXPORT latex
\\setcounter{tocdepth}{1}
% \\allsectionsfont{\\sffamily}     % Sans-Serif Headings
#+END_EXPORT

# words:

# abstract:
#+BEGIN_EXPORT latex
\\thispagestyle{empty}
\\vfill
\\begin{center}
\\begin{minipage}{0.9\\linewidth}
\\abstract{\\noindent


}
\\end{minipage}
\\end{center}
\\pagebreak
#+END_EXPORT

* Notes :noexport:
" nil :count 1)
    ("blax" "#+BEGIN_SRC latex" nil :count 4)
    ("bq" "#+BEGIN_QUOTE" nil :count 31)
    ("bsrc" "#+BEGIN_SRC " nil :count 1)
    ("deenq" " #+BEGIN_SRC latex 
\\deenquote{
Deutsch
}{
English
}
#+END_SRC " nil :count 4)
    ("elax" "#+END_SRC" nil :count 3)
    ("eq" "#+END_QUOTE" nil :count 30)
    ("esrc" "#+END_SRC" nil :count 2)
    ("lc" "#+latex: % " nil :count 59)
    ("testfun" "None" (lambda nil) :count 0)
   ))

