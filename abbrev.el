;;-*-coding: utf-8;-*-
(define-abbrev-table 'LaTeX-mode-abbrev-table
  '(
    ("sref" "(sec.~\\ref{sec:})" nil :count 2)
    ("tdsrc" "% TODO Check source" nil :count 1)
    ("tdtrans" "% TODO Check translation" nil :count 1)
   ))

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
    ("8Pi" "Π" my/expand-without-space :count 3)
    ("8Psi" "Ψ" my/expand-without-space :count 2)
    ("8Rho" "Ρ" my/expand-without-space :count 0)
    ("8Sigma" "Σ" my/expand-without-space :count 0)
    ("8Tau" "Τ" my/expand-without-space :count 0)
    ("8Theta" "Θ" my/expand-without-space :count 0)
    ("8Upsilon" "Υ" my/expand-without-space :count 0)
    ("8Xi" "Ξ" my/expand-without-space :count 0)
    ("8Zeta" "Ζ" my/expand-without-space :count 0)
    ("8alpha" "α" my/expand-without-space :count 2)
    ("8arrow" "→" my/expand-without-space :count 2)
    ("8beta" "β" my/expand-without-space :count 0)
    ("8box" "□" my/expand-without-space :count 11)
    ("8cdot" "·" my/expand-without-space :count 1)
    ("8chi" "χ" my/expand-without-space :count 0)
    ("8del" "∂" my/expand-without-space :count 0)
    ("8delta" "δ" my/expand-without-space :count 0)
    ("8diamond" "◇" my/expand-without-space :count 8)
    ("8dmd" "◇" my/expand-without-space :count 41)
    ("8dots" "…" nil :count 7)
    ("8dturn" "⊨" my/expand-without-space :count 2)
    ("8dturnstyle" "⊨" my/expand-without-space :count 1)
    ("8element" "∈" my/expand-without-space :count 0)
    ("8empty" "∅" nil :count 0)
    ("8entails" "⊃" nil :count 2)
    ("8epsilon" "ε" my/expand-without-space :count 1)
    ("8eta" "η" my/expand-without-space :count 0)
    ("8forall" "∀" my/expand-without-space :count 16)
    ("8gamma" "γ" my/expand-without-space :count 0)
    ("8gbp" "£" nil :count 12)
    ("8gbpp" "￡" nil :count 2)
    ("8grequal" "≥" my/expand-without-space :count 0)
    ("8hlregex" "\\([^.?!…‽\\\"'”’  
]+ \\)\\{19,999\\}[^.?!…‽\\\"'”’  ]+[.?!…‽\\\"'”’
]" nil :count 1)
    ("8horseshoe" "⊃" nil :count 16)
    ("8in" "∈" my/expand-without-space :count 217)
    ("8iota" "ι" my/expand-without-space :count 0)
    ("8kappa" "κ" my/expand-without-space :count 0)
    ("8lambda" "λ" my/expand-without-space :count 0)
    ("8land" "∧" nil :count 18)
    ("8larrow" "←" my/expand-without-space :count 1)
    ("8lequal" "≤" nil :count 0)
    ("8lneg" "¬" my/expand-without-space :count 1)
    ("8lor" "∨" nil :count 8)
    ("8lrarrow" "↔" my/expand-without-space :count 4)
    ("8mu" "μ" my/expand-without-space :count 0)
    ("8nabla" "∇" my/expand-without-space :count 0)
    ("8nec" "□" my/expand-without-space :count 0)
    ("8necessarily" "□" my/expand-without-space :count 0)
    ("8neg" "¬" my/expand-without-space :count 79)
    ("8negation" "¬" my/expand-without-space :count 2)
    ("8nelement" "∉" my/expand-without-space :count 0)
    ("8neq" "≠" my/expand-without-space :count 14)
    ("8nil" "∅" nil :count 0)
    ("8nin" "∉" my/expand-without-space :count 1)
    ("8notelement" "∉" my/expand-without-space :count 0)
    ("8notin" "∉" my/expand-without-space :count 0)
    ("8nthereis" "∄" my/expand-without-space :count 0)
    ("8nu" "ν" my/expand-without-space :count 0)
    ("8omega" "ω" my/expand-without-space :count 1)
    ("8omicron" "ο" my/expand-without-space :count 0)
    ("8phi" "φ" my/expand-without-space :count 21)
    ("8pi" "π" my/expand-without-space :count 0)
    ("8pos" "◇" my/expand-without-space :count 0)
    ("8poss" "◇" my/expand-without-space :count 0)
    ("8possible" "◇" my/expand-without-space :count 0)
    ("8possibly" "◇" my/expand-without-space :count 0)
    ("8psi" "ψ" my/expand-without-space :count 3)
    ("8rarrow" "→" my/expand-without-space :count 11)
    ("8rho" "ρ" my/expand-without-space :count 0)
    ("8rhorseshoe" "⊃" nil :count 0)
    ("8sigma" "σ" my/expand-without-space :count 3)
    ("8tau" "τ" my/expand-without-space :count 0)
    ("8thereis" "∃" my/expand-without-space :count 3)
    ("8thereisnt" "∄" my/expand-without-space :count 0)
    ("8theta" "θ" my/expand-without-space :count 7)
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
    ("ALl" "All" nil :count 6)
    ("ANd" "And" nil :count 13)
    ("BUt" "But" nil :count 68)
    ("CHeck" "Check" nil :count 40)
    ("DIe" "Die" nil :count 5)
    ("DUmmett" "Dummett" nil :count 12)
    ("FOr" "For" nil :count 43)
    ("HUsserl" "Husserl" nil :count 46)
    ("Hls" "Husserl's" nil :count 1)
    ("Hrl" "Husserl" my/expand-without-space :count 2)
    ("Mpy" "Merleau-Ponty" nil :count 10)
    ("Mpys" "Merleau-Ponty's" nil :count 10)
    ("PHenomenological" "Phenomenological" nil :count 7)
    ("REalism" "Realism" nil :count 4)
    ("SUmmary" "Summary" nil :count 2)
    ("TEh" "The" nil :count 0)
    ("THat" "That" nil :count 28)
    ("THe" "The" nil :count 1054)
    ("THeir" "Their" nil :count 7)
    ("THen" "Then" nil :count 41)
    ("THere" "There" nil :count 85)
    ("THese" "These" nil :count 23)
    ("THey" "They" nil :count 20)
    ("THis" "This" nil :count 469)
    ("THomas" "Thomas" nil :count 9)
    ("THose" "Those" nil :count 2)
    ("THus" "Thus" nil :count 19)
    ("WHat" "What" nil :count 79)
    ("WHen" "When" nil :count 43)
    ("WHere" "Where" nil :count 14)
    ("WHile" "While" nil :count 9)
    ("WHo" "Who" nil :count 4)
    ("WHy" "Why" nil :count 11)
    ("WIthin" "Within" nil :count 3)
    ("WIthout" "Without" nil :count 10)
    ("WIttgenstein" "Wittgenstein" nil :count 19)
    ("abotu" "about" nil :count 73)
    ("accommodatinos" "accommodations" nil :count 1)
    ("adn" "and" nil :count 64)
    ("ahve" "have" nil :count 65)
    ("anyting" "anything" nil :count 5)
    ("appr" "approach" nil :count 2)
    ("approahces" "approaches" nil :count 6)
    ("apprs" "approaches" nil :count 2)
    ("archies" "archives" nil :count 2)
    ("argumenet" "argument" nil :count 1)
    ("baout" "about" nil :count 71)
    ("btu" "but" nil :count 35)
    ("chagne" "change" nil :count 13)
    ("chagnes" "changes" nil :count 6)
    ("chsoen" "chosen" nil :count 1)
    ("classicla" "classical" nil :count 7)
    ("clsoe" "close" nil :count 6)
    ("clsoely" "closely" nil :count 5)
    ("cna" "can" nil :count 2)
    ("cness" "consciousness" nil :count 6)
    ("conditios" "conditions" nil :count 1)
    ("conditiosn" "conditions" nil :count 4)
    ("confernece" "Conference" nil :count 3)
    ("consitution" "constitution" nil :count 3)
    ("contemporaray" "contemporary" nil :count 1)
    ("contian" "contain" nil :count 1)
    ("correpsond" "correspond" nil :count 1)
    ("coudl" "could" nil :count 57)
    ("ctpry" "contemporary" nil :count 3)
    ("defintion" "definition" nil :count 2)
    ("destrution" "destruction" nil :count 1)
    ("deterines" "determines" nil :count 2)
    ("differetn" "different" nil :count 1)
    ("discussoin" "discussion" nil :count 1)
    ("distinctino" "distinction" nil :count 1)
    ("ebtween" "between" nil :count 3)
    ("elps" "[…]" nil :count 4)
    ("enirely" "entirely" nil :count 1)
    ("experinence" "experience" nil :count 1)
    ("explainign" "explaining" nil :count 1)
    ("fidnen" "finden" nil :count 1)
    ("functinos" "functions" nil :count 1)
    ("fup" "follow up: " nil :count 1)
    ("furhter" "further" nil :count 4)
    ("goasl" "goals" nil :count 1)
    ("habti" "habit" nil :count 1)
    ("hadn" "hand" nil :count 1)
    ("harv" "Husserl Archives" nil :count 1)
    ("hgiher" "higher" nil :count 1)
    ("hsa" "has" nil :count 5)
    ("hsould" "should" nil :count 19)
    ("htan" "than" nil :count 3)
    ("htat" "that" nil :count 23)
    ("hte" "the" nil :count 904)
    ("hteir" "their" nil :count 5)
    ("htem" "them" nil :count 4)
    ("hten" "then" nil :count 1)
    ("hteory" "theory" nil :count 1)
    ("htere" "there" nil :count 11)
    ("htese" "these" nil :count 24)
    ("htey" "they" nil :count 41)
    ("htink" "think" nil :count 11)
    ("htis" "this" nil :count 89)
    ("husser" "Husserl" nil :count 33)
    ("hwat" "what" nil :count 11)
    ("hwen" "when" nil :count 1)
    ("hwoever" "however" nil :count 4)
    ("hwy" "why" nil :count 1)
    ("hypohteses" "hypotheses" nil :count 3)
    ("idnependent" "independent" nil :count 1)
    ("iener" "einer" nil :count 1)
    ("inlcuding" "including" nil :count 1)
    ("intentinoality" "intentionality" nil :count 1)
    ("iwth" "with" nil :count 18)
    ("jsut" "just" nil :count 76)
    ("jsutification" "justification" nil :count 1)
    ("jsutified" "justified" nil :count 2)
    ("judgmeent" "judgement" nil :count 5)
    ("knowlege" "knowledge" nil :count 10)
    ("konw" "know" nil :count 13)
    ("konwledge" "knowledge" nil :count 1)
    ("langauge" "language" nil :count 3)
    ("lanugage" "language" nil :count 5)
    ("laod" "load" nil :count 2)
    ("laso" "also" nil :count 6)
    ("leanigns" "leanings" nil :count 1)
    ("lgoical" "logical" nil :count 16)
    ("liek" "like" nil :count 51)
    ("lifeowrld" "lifeworld" nil :count 4)
    ("lifworld" "lifeworld" nil :count 16)
    ("logism" "logical empiricism" nil :count 2)
    ("logist" "logical empiricist" nil :count 4)
    ("logists" "logical empiricists" nil :count 5)
    ("lsot" "lost" nil :count 6)
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
    ("matehmatical" "mathematical" nil :count 1)
    ("menaing" "meaning" nil :count 19)
    ("menas" "means" nil :count 17)
    ("mentiosn" "mentions" nil :count 2)
    ("metaphyiscs" "metaphysics" nil :count 19)
    ("mgiht" "might" nil :count 54)
    ("mhigt" "might" nil :count 2)
    ("modellign" "modelling" nil :count 1)
    ("mpy" "Merleau-Ponty" nil :count 10)
    ("mroe" "more" nil :count 49)
    ("msot" "most" nil :count 1)
    ("msut" "must" nil :count 9)
    ("muhc" "much" nil :count 2)
    ("mvoe" "move" nil :count 3)
    ("mysefl" "myself" nil :count 1)
    ("nad" "and" nil :count 159)
    ("nciht" "nicht" nil :count 10)
    ("notino" "notion" nil :count 27)
    ("notinos" "notions" nil :count 5)
    ("nto" "not" nil :count 77)
    ("nubmer" "number" nil :count 11)
    ("obejctive" "objective" nil :count 1)
    ("ocncept" "concept" nil :count 2)
    ("ocnducive" " conducive" nil :count 1)
    ("ocnflict" "conflict" nil :count 1)
    ("ocnsider" "consider" nil :count 1)
    ("oculd" "could" nil :count 21)
    ("odl" "old" nil :count 1)
    ("odne" "done" nil :count 1)
    ("onyl" "only" nil :count 3)
    ("otehr" "other" nil :count 56)
    ("otehrs" "others" nil :count 5)
    ("owrk" "work" nil :count 13)
    ("owrld" "world" nil :count 21)
    ("owrst" "worst" nil :count 1)
    ("owuld" "would" nil :count 12)
    ("oyu" "you" nil :count 4)
    ("oyur" "your" nil :count 2)
    ("pcal" "phenomenological" nil :count 2)
    ("peolpe" "people" nil :count 1)
    ("percepual" "perceptual" nil :count 1)
    ("phenical" "phenomenological" nil :count 2)
    ("phenist" "phenomenologist" nil :count 1)
    ("phenomenlogical" "phenomenological" nil :count 3)
    ("phenomenoloy" "phenomenology" nil :count 4)
    ("pheny" "phenomenology" nil :count 1)
    ("philosopehrs" "philosophers" nil :count 2)
    ("philsoophical" "philosophical" nil :count 1)
    ("philsoophy" "philosophy" nil :count 4)
    ("pical" "phenomenological" nil :count 18)
    ("pist" "phenomenologist" nil :count 4)
    ("pists" "phenomenologists" nil :count 0)
    ("pogical" "phenomenological" nil :count 4)
    ("pogist" "phenomenologist" nil :count 2)
    ("pogists" "phenomenologists" nil :count 4)
    ("pogy" "phenomenology" nil :count 40)
    ("popertyies" "properties" nil :count 1)
    ("possibilites" "possibilities" nil :count 1)
    ("possiblity" "possibility" nil :count 13)
    ("ppaus" "\\pause" nil :count 4)
    ("pps" "\\pause" nil :count 16)
    ("prase" "paraphrase" nil :count 1)
    ("proejct" "project" nil :count 16)
    ("propostions" "propositions" nil :count 1)
    ("qualitites" "qualities" nil :count 4)
    ("quetsion" "question" nil :count 5)
    ("quetsions" "questions" nil :count 1)
    ("quikc" "quick" nil :count 1)
    ("ratehr" "rather" nil :count 28)
    ("registratoin" "Registration" nil :count 1)
    ("relevnat" "relevant" nil :count 2)
    ("resaerch" "research" nil :count 38)
    ("respnose" "response" nil :count 10)
    ("roel" "role" nil :count 2)
    ("ruels" "rules" nil :count 2)
    ("rvw" "review" nil :count 4)
    ("rvwr" "reviewer" nil :count 1)
    ("saem" "same" nil :count 3)
    ("schiz" "schizophrenia" nil :count 3)
    ("scic" "scientific" nil :count 3)
    ("sciecne" "science" nil :count 2)
    ("scietnific" "scientific" nil :count 12)
    ("scii" "science" nil :count 2)
    ("scinetific" "scientific" nil :count 15)
    ("scist" "scientist" nil :count 2)
    ("semianr" "seminar" nil :count 2)
    ("shceint" "scheint" nil :count 1)
    ("shoudl" "should" nil :count 15)
    ("shuold" "should" nil :count 5)
    ("sicentifc" "scientific" nil :count 1)
    ("sicne" "since" nil :count 5)
    ("slef" "self" nil :count 4)
    ("srevice" "service" nil :count 1)
    ("suhc" "such" nil :count 27)
    ("syntehtic" "synthetic" nil :count 6)
    ("taht" "that" nil :count 168)
    ("teh" "the" nil :count 648)
    ("tehir" "their" nil :count 1)
    ("tehory" "theory" nil :count 4)
    ("tehre" "there" nil :count 65)
    ("tehse" "these" nil :count 21)
    ("tehy" "they" nil :count 19)
    ("temrs" "terms" nil :count 7)
    ("themelves" "themselves" nil :count 1)
    ("theoreis" "theories" nil :count 2)
    ("therefoer" "therefore" nil :count 1)
    ("thigns" "things" nil :count 1)
    ("throuhg" "through" nil :count 5)
    ("thsi" "this" nil :count 9)
    ("thsoe" "those" nil :count 4)
    ("tiem" "time" nil :count 19)
    ("tkae" "take" nil :count 4)
    ("topcis" "topics" nil :count 1)
    ("tral" "transcendental" nil :count 1)
    ("tranl" "transcendental" nil :count 0)
    ("transcendenal" "transcendental" nil :count 6)
    ("trat" "transcenden" nil :count 0)
    ("turht" "truth" nil :count 2)
    ("uach" "auch" nil :count 2)
    ("udnerstand" "understand" nil :count 9)
    ("udnerstood" "understood" nil :count 4)
    ("undertand" "understand" nil :count 7)
    ("unliek" "unlike" nil :count 1)
    ("verificaionist" "verificationist" nil :count 1)
    ("vism" "verificationism" nil :count 7)
    ("vist" "verificationist" nil :count 1)
    ("vists" "verificationists" nil :count 0)
    ("waht" "what" nil :count 118)
    ("wahtever" "whatever" nil :count 1)
    ("whcih" "which" nil :count 38)
    ("whehter" "whether" nil :count 4)
    ("whetehr" "whether" nil :count 15)
    ("whihc" "which" nil :count 5)
    ("wiht" "with" nil :count 23)
    ("wihtout" "without" nil :count 12)
    ("wnat" "want" nil :count 2)
    ("workign" "working" nil :count 8)
    ("woudl" "would" nil :count 84)
    ("wuold" "would" nil :count 1)
    ("xx" "×" nil :count 3)
    ("xxx" " × " nil :count 2)
   ))

(define-abbrev-table 'latex-mode-abbrev-table
  '(
    ("8Lar" "\\Leftarrow" nil :count 0)
    ("8Lrar" "\\Leftrightarrow" nil :count 0)
    ("8Rar" "\\Rightarrow" nil :count 0)
    ("8c" "\\cite[]{}" nil :count 3)
    ("8cd" "\\cdot" my/expand-without-space :count 6)
    ("8d" "[\\dots]" nil :count 124)
    ("8deenq" "\\deenquote{
}{
}%end of deenquote" nil :count 5)
    ("8dmnd" "\\(\\Diamond\\)" nil :count 1)
    ("8hf" "\\hfill" nil :count 23)
    ("8lar" "\\leftarrow" nil :count 0)
    ("8lb" "\\{" my/expand-without-space :count 9)
    ("8lrar" "\\leftrightarrow" nil :count 0)
    ("8rar" "\\rightarrow" nil :count 0)
    ("8rb" "\\}" my/expand-without-space :count 10)
    ("8th" "\\thesis{" my/expand-without-space :count 211)
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
    ("cd" "\\cdot" my/expand-without-space :count 10)
    ("dd" "[\\dots]" nil :count 4)
    ("deenq" "\\deenquote{
}{
}" nil :count 101)
    ("dmd" "\\Diamond" nil :count 22)
    ("eg" "e.g.\\" nil :count 20)
    ("hwo" "who" nil :count 6)
    ("lar" "\\leftarrow" nil :count 4)
    ("lnd" "\\land" nil :count 13)
    ("lrar" "\\leftrightarrow" nil :count 1)
    ("ng" "\\neg" nil :count 46)
    ("pps" "\\pause" nil :count 4)
    ("rar" "\\rightarrow" nil :count 30)
    ("rightarow" "rightarrow" nil :count 1)
    ("tdc" "% TODO Citation" nil :count 3)
    ("thereis" "exists" nil :count 9)
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
    ("divc" "<div class='container'>" nil :count 21)
   ))

(define-abbrev-table 'org-journal-mode-abbrev-table
  '(
    ("8nik" "** Today's Nikki: :nikki:
- What went well: 

- What went not so well: 

- My goal for tomorrow:
" nil :count 7)
    ("8td" "** TODAY [0/5]
:PROPERTIES:
:VISIBILITY: all
:END:
*Deep Work needs protection.*
Less planning, more doing.
Prioritize the long-term goods, because nobody else will.
Offline by default.
--- FOCUS ---
1. [ ]
--- LTERM ---
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
*** Did I respect blocked time?
*** What should I change, what should I build on?
*** Energy levels, sources and drains:
*** My goal for tomorrow:
" nil :count 589)
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
    ("bc" "#+BEGIN_COMMENT" nil :count 42)
    ("blax" "#+BEGIN_SRC latex" nil :count 6)
    ("bq" "#+BEGIN_QUOTE" nil :count 65)
    ("bsrc" "#+BEGIN_SRC " nil :count 1)
    ("deenq" " #+BEGIN_SRC latex 
\\deenquote{
Deutsch
}{
English
}
#+END_SRC " nil :count 4)
    ("ec" "#+END_COMMENT" nil :count 38)
    ("elax" "#+END_SRC" nil :count 4)
    ("eq" "#+END_QUOTE" nil :count 63)
    ("esrc" "#+END_SRC" nil :count 0)
    ("lc" "#+latex: % " nil :count 59)
    ("testfun" "None" (lambda nil) :count 0)
   ))

(define-abbrev-table 'web-mode-abbrev-table
  '(
    ("8nd" "&ndash;" nil :count 3)
    ("br" "<br>" nil :count 10)
    ("divc" "<div class='container'>" nil :count 67)
    ("edp" "{{edhiphy()}}" nil :count 15)
   ))

