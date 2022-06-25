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
    ("8box" "□" my/expand-without-space :count 7)
    ("8cdot" "·" my/expand-without-space :count 1)
    ("8chi" "χ" my/expand-without-space :count 0)
    ("8del" "∂" my/expand-without-space :count 0)
    ("8delta" "δ" my/expand-without-space :count 0)
    ("8diamond" "◇" my/expand-without-space :count 7)
    ("8dots" "…" nil :count 4)
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
    ("8in" "∈" my/expand-without-space :count 14)
    ("8iota" "ι" my/expand-without-space :count 0)
    ("8kappa" "κ" my/expand-without-space :count 0)
    ("8lambda" "λ" my/expand-without-space :count 0)
    ("8land" "∧" nil :count 14)
    ("8larrow" "←" my/expand-without-space :count 1)
    ("8lequal" "≤" nil :count 0)
    ("8lneg" "¬" my/expand-without-space :count 1)
    ("8lor" "∨" nil :count 7)
    ("8lrarrow" "↔" my/expand-without-space :count 2)
    ("8mu" "μ" my/expand-without-space :count 0)
    ("8nabla" "∇" my/expand-without-space :count 0)
    ("8nec" "□" my/expand-without-space :count 0)
    ("8necessarily" "□" my/expand-without-space :count 0)
    ("8neg" "¬" my/expand-without-space :count 63)
    ("8negation" "¬" my/expand-without-space :count 2)
    ("8nelement" "∉" my/expand-without-space :count 0)
    ("8neq" "≠" my/expand-without-space :count 11)
    ("8nil" "∅" nil :count 0)
    ("8nin" "∉" my/expand-without-space :count 1)
    ("8notelement" "∉" my/expand-without-space :count 0)
    ("8notin" "∉" my/expand-without-space :count 0)
    ("8nthereis" "∄" my/expand-without-space :count 0)
    ("8nu" "ν" my/expand-without-space :count 0)
    ("8omega" "ω" my/expand-without-space :count 0)
    ("8omicron" "ο" my/expand-without-space :count 0)
    ("8phi" "φ" my/expand-without-space :count 11)
    ("8pi" "π" my/expand-without-space :count 0)
    ("8pos" "◇" my/expand-without-space :count 0)
    ("8poss" "◇" my/expand-without-space :count 0)
    ("8possible" "◇" my/expand-without-space :count 0)
    ("8possibly" "◇" my/expand-without-space :count 0)
    ("8psi" "ψ" my/expand-without-space :count 0)
    ("8rarrow" "→" my/expand-without-space :count 1)
    ("8rho" "ρ" my/expand-without-space :count 0)
    ("8rhorseshoe" "⊃" nil :count 0)
    ("8sigma" "σ" my/expand-without-space :count 3)
    ("8tau" "τ" my/expand-without-space :count 0)
    ("8thereis" "∃" my/expand-without-space :count 2)
    ("8thereisnt" "∄" my/expand-without-space :count 0)
    ("8theta" "θ" my/expand-without-space :count 6)
    ("8ti" "transcendental idealism" nil :count 10)
    ("8unequal" "≠" my/expand-without-space :count 3)
    ("8upsilon" "υ" my/expand-without-space :count 0)
    ("8varsigma" "ς" my/expand-without-space :count 0)
    ("8xi" "ξ" my/expand-without-space :count 0)
    ("8zeta" "ζ" my/expand-without-space :count 0)
    ("ALl" "All" nil :count 3)
    ("ANd" "And" nil :count 4)
    ("BUt" "But" nil :count 20)
    ("CHeck" "Check" nil :count 14)
    ("DIe" "Die" nil :count 5)
    ("DUmmett" "Dummett" nil :count 3)
    ("FOr" "For" nil :count 23)
    ("HUsserl" "Husserl" nil :count 21)
    ("Hls" "Husserl's" nil :count 1)
    ("Mpy" "Merleau-Ponty" nil :count 10)
    ("Mpys" "Merleau-Ponty's" nil :count 10)
    ("PHenomenological" "Phenomenological" nil :count 7)
    ("REalism" "Realism" nil :count 3)
    ("SUmmary" "Summary" nil :count 1)
    ("TEh" "The" nil :count 0)
    ("THat" "That" nil :count 14)
    ("THe" "The" nil :count 530)
    ("THeir" "Their" nil :count 4)
    ("THen" "Then" nil :count 14)
    ("THere" "There" nil :count 28)
    ("THese" "These" nil :count 12)
    ("THey" "They" nil :count 12)
    ("THis" "This" nil :count 189)
    ("THomas" "Thomas" nil :count 3)
    ("THose" "Those" nil :count 1)
    ("THus" "Thus" nil :count 9)
    ("WHat" "What" nil :count 42)
    ("WHen" "When" nil :count 20)
    ("WHere" "Where" nil :count 6)
    ("WHile" "While" nil :count 5)
    ("WHo" "Who" nil :count 3)
    ("WHy" "Why" nil :count 4)
    ("WIthin" "Within" nil :count 2)
    ("WIthout" "Without" nil :count 5)
    ("WIttgenstein" "Wittgenstein" nil :count 18)
    ("abotu" "about" nil :count 23)
    ("adn" "and" nil :count 17)
    ("ahve" "have" nil :count 1)
    ("anyting" "anything" nil :count 3)
    ("argumenet" "argument" nil :count 1)
    ("baout" "about" nil :count 10)
    ("btu" "but" nil :count 3)
    ("chagne" "change" nil :count 5)
    ("clsoely" "closely" nil :count 1)
    ("cness" "consciousness" nil :count 2)
    ("conditios" "conditions" nil :count 1)
    ("conditiosn" "conditions" nil :count 2)
    ("consitution" "constitution" nil :count 1)
    ("contian" "contain" nil :count 1)
    ("correpsond" "correspond" nil :count 1)
    ("coudl" "could" nil :count 22)
    ("defintion" "definition" nil :count 1)
    ("deterines" "determines" nil :count 1)
    ("distinctino" "distinction" nil :count 1)
    ("enirely" "entirely" nil :count 1)
    ("furhter" "further" nil :count 2)
    ("hgiher" "higher" nil :count 1)
    ("hsa" "has" nil :count 1)
    ("hsould" "should" nil :count 3)
    ("htat" "that" nil :count 1)
    ("hte" "the" nil :count 335)
    ("hteory" "theory" nil :count 1)
    ("htere" "there" nil :count 1)
    ("htese" "these" nil :count 4)
    ("htey" "they" nil :count 19)
    ("htink" "think" nil :count 5)
    ("htis" "this" nil :count 42)
    ("hwat" "what" nil :count 1)
    ("hwen" "when" nil :count 1)
    ("hypohteses" "hypotheses" nil :count 2)
    ("iwth" "with" nil :count 2)
    ("jsut" "just" nil :count 31)
    ("jsutified" "justified" nil :count 2)
    ("konw" "know" nil :count 7)
    ("konwledge" "knowledge" nil :count 1)
    ("langauge" "language" nil :count 1)
    ("lanugage" "language" nil :count 2)
    ("laso" "also" nil :count 2)
    ("lgoical" "logical" nil :count 9)
    ("liek" "like" nil :count 25)
    ("lifworld" "lifeworld" nil :count 8)
    ("logism" "logical empiricism" nil :count 2)
    ("logist" "logical empiricist" nil :count 4)
    ("logists" "logical empiricists" nil :count 5)
    ("menaing" "meaning" nil :count 9)
    ("menas" "means" nil :count 1)
    ("metaphyiscs" "metaphysics" nil :count 1)
    ("mgiht" "might" nil :count 5)
    ("mhigt" "might" nil :count 2)
    ("mpy" "Merleau-Ponty" nil :count 10)
    ("mroe" "more" nil :count 28)
    ("msut" "must" nil :count 3)
    ("nad" "and" nil :count 69)
    ("notino" "notion" nil :count 27)
    ("notinos" "notions" nil :count 5)
    ("nto" "not" nil :count 42)
    ("obejctive" "objective" nil :count 1)
    ("ocnflict" "conflict" nil :count 1)
    ("ocnsider" "consider" nil :count 1)
    ("oculd" "could" nil :count 5)
    ("odne" "done" nil :count 1)
    ("onyl" "only" nil :count 3)
    ("otehr" "other" nil :count 13)
    ("owrk" "work" nil :count 7)
    ("owrld" "world" nil :count 5)
    ("owrst" "worst" nil :count 1)
    ("owuld" "would" nil :count 2)
    ("oyu" "you" nil :count 1)
    ("oyur" "your" nil :count 2)
    ("percepual" "perceptual" nil :count 1)
    ("phenical" "phenomenological" nil :count 2)
    ("phenist" "phenomenologist" nil :count 1)
    ("pheny" "phenomenology" nil :count 1)
    ("phil" "philosophy" nil :count 2)
    ("pical" "phenomenological" nil :count 12)
    ("pist" "phenomenologist" nil :count 3)
    ("pists" "phenomenologists" nil :count 0)
    ("pogist" "phenomenologist" nil :count 2)
    ("pogists" "phenomenologists" nil :count 3)
    ("pogy" "phenomenology" nil :count 24)
    ("ppaus" "\\pause" nil :count 4)
    ("pps" "\\pause" nil :count 1)
    ("prase" "paraphrase" nil :count 1)
    ("qualitites" "qualities" nil :count 2)
    ("quetsion" "question" nil :count 1)
    ("quetsions" "questions" nil :count 1)
    ("quikc" "quick" nil :count 1)
    ("ratehr" "rather" nil :count 3)
    ("relevnat" "relevant" nil :count 1)
    ("resaerch" "research" nil :count 4)
    ("scic" "scientific" nil :count 2)
    ("scietnific" "scientific" nil :count 4)
    ("scii" "science" nil :count 2)
    ("scist" "scientist" nil :count 2)
    ("suhc" "such" nil :count 2)
    ("syntehtic" "synthetic" nil :count 6)
    ("taht" "that" nil :count 76)
    ("teh" "the" nil :count 233)
    ("tehre" "there" nil :count 23)
    ("tehse" "these" nil :count 9)
    ("throuhg" "through" nil :count 1)
    ("thsoe" "those" nil :count 1)
    ("tiem" "time" nil :count 7)
    ("tkae" "take" nil :count 1)
    ("tral" "transcendental" nil :count 0)
    ("tranl" "transcendental" nil :count 0)
    ("transcendenal" "transcendental" nil :count 5)
    ("trat" "transcenden" nil :count 0)
    ("udnerstand" "understand" nil :count 3)
    ("undertand" "understand" nil :count 2)
    ("vism" "verificationism" nil :count 7)
    ("vist" "verificationist" nil :count 1)
    ("vists" "verificationists" nil :count 0)
    ("waht" "what" nil :count 30)
    ("whcih" "which" nil :count 15)
    ("whehter" "whether" nil :count 2)
    ("whetehr" "whether" nil :count 2)
    ("whihc" "which" nil :count 2)
    ("wiht" "with" nil :count 6)
    ("wihtout" "without" nil :count 3)
    ("woudl" "would" nil :count 36)
   ))

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("8Lar" "\\Leftarrow" nil :count 0)
    ("8Lrar" "\\Leftrightarrow" nil :count 0)
    ("8Rar" "\\Rightarrow" nil :count 0)
    ("8c" "\\cite[]{}" nil :count 3)
    ("8cd" "\\cdot" my/expand-without-space :count 6)
    ("8d" "[\\dots]" nil :count 19)
    ("8dmnd" "\\(\\Diamond\\)" nil :count 1)
    ("8lar" "\\leftarrow" nil :count 0)
    ("8lb" "\\{" my/expand-without-space :count 4)
    ("8lrar" "\\leftrightarrow" nil :count 0)
    ("8rar" "\\rightarrow" nil :count 0)
    ("8rb" "\\}" my/expand-without-space :count 4)
    ("8th" "\\thesis{" my/expand-without-space :count 55)
    ("8thc" "\\thesis{V-M-Criterion}" nil :count 11)
    ("8tht" "\\thesis{V-Truth}" nil :count 8)
    ("8todo" "% TODO::::::::::::::::::::::::::::::TODO::::::::::::::::::::::::::::::TODO
%
% TODO::::::::::::::::::::::::::::::TODO::::::::::::::::::::::::::::::TODO" nil :count 2)
    ("8ts" "\\textsubscript{" my/expand-without-space :count 4)
    ("8vc" "\\thesis{V-Crit}" nil :count 12)
    ("Lar" "\\Leftarrow" nil :count 2)
    ("Rar" "\\Rightarrow" nil :count 2)
    ("bbs" "\\bigskip" nil :count 5)
    ("cd" "\\cdot" my/expand-without-space :count 5)
    ("dd" "[\\dots]" nil :count 4)
    ("eg" "e.g.\\" nil :count 17)
    ("hwo" "who" nil :count 2)
    ("ie" "i.e.\\" nil :count 14)
    ("lar" "\\leftarrow" nil :count 2)
    ("pps" "\\pause" nil :count 4)
    ("rar" "\\rightarrow" nil :count 3)
    ("tdc" "% TODO Citation" nil :count 3)
    ("thereis" "exists" nil :count 4)
    ("tsub" "\\textsubscript{" my/expand-without-space :count 3)
    ("vphent" "\\thesis{V-Phen-T}" nil :count 7)
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
*** My goal for tomorrow:" nil :count 53)
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
    ("blax" "#+BEGIN_SRC latex" nil :count 1)
    ("bq" "#+BEGIN_QUOTE" nil :count 22)
    ("bsrc" "#+BEGIN_SRC " nil :count 1)
    ("elax" "#+END_SRC" nil :count 1)
    ("eq" "#+END_QUOTE" nil :count 21)
    ("esrc" "#+END_SRC" nil :count 2)
    ("testfun" "None" (lambda nil) :count 0)
   ))

