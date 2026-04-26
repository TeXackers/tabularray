\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TabularrayDoc}[2026A LaTeX document class]
\def\baseclass{memoir}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do{
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\ProcessOptions\relax
\LoadClass{\baseclass}

% Layout
% % This is the big outer size
% \setstocksize{326mm}{265mm}
% % This is where the machine cuts
% \settrimmedsize{276mm}{215mm}{*}
% % This is where the text goes
% \settypeblocksize{276mm}{215mm}{*}
% \setpagecc{276mm}{215mm}{*}
% % \setlrmarginsandblock{21mm}{21mm}{*}
% \setlrmarginsandblock{21mm}{21mm}{*}
% \setulmarginsandblock{0.875in}{0.625in}{*}
% \setheadfoot{0.875in}{0mm}
% \setheaderspaces{*}{0mm}{*}
% \setmarginnotes{0.1875in}{.5in}{0in}
% \setcolsepandrule{0.25in}{0pt}
\checkandfixthelayout
% \setlength{\oddsidemargin}{0mm}
% \setlength{\evensidemargin}{0mm}
\setSingleSpace{0.875}
\OnehalfSpacing*
% \hyphenpenalty=0
% \widowpenalty=10000
% \clubpenalty=10000
\flushbottom
\setlength{\parskip}{0pt}
\setlength{\parindent}{1.5ex}
\setlength{\hangindent}{0pt}

\chapterstyle{article}

% \semiisopage[11]
\raggedbottom
\checkandfixthelayout
\checkthelayout
\fixthelayout

% Fonts
\usepackage[no-math]{fontspec}
\setmainfont{TeX Gyre Pagella}[
  Scale=MatchUppercase,
  % UprightFont = *-SmCond,
  % ItalicFont = *-SmCondItalic,
  % BoldFont = *-SmExpBold,
  % BoldItalicFont = *-SmExpBoldItalic,
  RawFeatures={+lnum;+tnum}
]
\setmonofont{JetBrainsMono}[
  Scale=MatchUppercase,
  CharacterVariant={1,2,4,8,12,14,18,19,20,99}
]
\usepackage{microtype}
\DeclareMicrotypeAlias{TeX Gyre Pagella}{TU-basic}
\microtypesetup{nopatch=footnote}

% Colours
\usepackage{xcolor}
\definecolor{red}       {HTML}{EA4425} % #EA4425
\definecolor{yellow}    {HTML}{F7CB45} % #F7CB45
\definecolor{darkyellow}{HTML}{E4E36F} % #E4E36F
\definecolor{green}     {HTML}{80DC49} % #80DC49
\definecolor{darkgreen} {HTML}{377E22} % #377E22
\definecolor{blue}      {HTML}{48A0F7} % #48A0F7
\definecolor{darkblue}  {HTML}{010183} % #010183
\colorlet{navy}{darkblue}
\definecolor{pink}      {HTML}{E134F0} % #E134F0
\definecolor{magenta}   {HTML}{752963} % #752963
\definecolor{cyan}      {HTML}{387F81} % #387F81
\definecolor{grey}      {HTML}{C1C1C1} % #C1C1C1
\definecolor{darkgrey}  {HTML}{808082} % #808082

% Code description
\usepackage{codelisting}
\input{codelisting.tabularray.sty}
\usepackage[index, infograb, silence]{codedescribe}
\NewDocumentCommand{\ttbf}{}{\normalfont\ttfamily\bfseries}
\defgroupfmt{meta}{ meta, color = darkgreen }
\defgroupfmt{verb}{ color = magenta }
\defgroupfmt{code}{ code, color = darkgrey!50!black }
\defgroupfmt{oarg}{ meta, color = pink!50!magenta }
\defgroupfmt{syntax}{ color = magenta }
\defgroupfmt{env}{ font = \ttbf, color = blue!50!darkgreen }
\defgroupfmt{pkg}{ shape = noshape, color = red!50!magenta }
\defgroupfmt{option}{ color = cyan }
\defgroupfmt{keys}{ shape = noshape, font = \ttbf, color = darkgreen }
\defgroupfmt{values}{ shape = noshape, color = magenta }
\setcolorscheme{
  error = red,
  verb = blue,
  args = magenta,
  code = blue,
  keys = cyan,
  values = magenta,
  env = darkgreen,
  pack = yellow
}


\RenewDocumentCommand{\arg}{ O{} m }{\tsobj[marg,#1]{#2}}
\NewDocumentCommand{\key}{ O{} m }{\tsobj[keys,#1]{#2}}
\NewDocumentCommand{\keyval}{ m m }{\tsobj[keys]{#1} \tsobj[code]= \tsobj[values]{#2}}
\RenewDocumentCommand{\oarg}{ O{} m }{\tsobj[oarg,#1]{#2}}
\NewDocumentCommand{\env}{ s O{} m }{%
  \tsobj[env,#2]{#3} environment%
  \IfBooleanTF{#1}{s}{}%
}
\NewDocumentCommand{\pkg}{ s O{no index} m }{%
  \tsobj[pkg, #2]{#3} package%
  \IfBooleanTF{#1}{s}{}%
}
\NewDocumentCommand{\val}{ O{} m }{\tsobj[values, #1]{#2}}
\NewDocumentCommand{\vrb}{ O{} m }{\tsobj[verb, #1]{#2}}

\NewDocumentCommand{\deschead}{ m }{\describe{}{\bfseries #1}}