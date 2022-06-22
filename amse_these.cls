% Aix-Marseille Université <@univ-amu.fr>
% Aix-Marseille School of Economics
% Version 1.0 by Fabien Petit released 01/09/2022
% https://www.fabienpetit.com
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{amse_these}[01/09/2022 Classe personnelle, V1.0]

%%%%% BASE CLASS (KOMA-Script)
\LoadClass{scrreprt}						%% report KOMA-Script
\KOMAoptions{
	paper=a4,								%% paper size
	fontsize=12pt,							%% font size
	DIV=12,									%% margin size
	BCOR=0mm,								%% book cover size
	twoside=off,							%% recto-verso
	listof=totoc,							%% LOFT in TOC
	index=totoc								%% index in TOC
	}

\RequirePackage{lipsum}						%% lorem ipsum (example)

%%%%% MINIMAL EXTENSIONS
\RequirePackage[utf8]{inputenc}				%% text encodage
\RequirePackage[TS1,T1]{fontenc}			%% font encodage
%\RequirePackage{lmodern}					%% latin font
\RequirePackage{fourier}					%% Adobe Utopia font

%%%%% TYPOGRAPHY
\RequirePackage{scrhack}					%% macros (KOMA-Script)
\RequirePackage[automark,
    autooneside=false]{scrlayer-scrpage}	%% header (KOMA-Script)
\RequirePackage{textcomp}					%% symboles complémentaires
\RequirePackage{hyphenat}					%% césure explicite
\RequirePackage{microtype}					%% microtypographie

\RequirePackage[bottom=10em]{geometry}		%% bottom space
\RequirePackage{setspace}					%% between-line space

\pagestyle{scrheadings}						%% page style

%%% TABLES AND FIGURES
\RequirePackage{float}						%% define floating objects
\RequirePackage{graphicx}					%% graphics and figures
\RequirePackage[export]{adjustbox}			%% min and max size for boxes
\RequirePackage{subcaption}					%% multiple figures
\RequirePackage{caption}					%% caption for figures
\RequirePackage{tabularx}					%% tables
\RequirePackage{multirow}					%% merge rows in table
\RequirePackage{makecell}					%% jump lines
\RequirePackage{array}						%% array
\RequirePackage{booktabs}					%% formal tables
\RequirePackage{tikz}						%% figures en code natif
\usetikzlibrary{decorations.markings}

%%% BIBLIOGRAPHY
\usepackage{csquotes}
\usepackage[backend=biber, style=apa, natbib=true, doi=false, url=false, isbn=false, eprint=false, related=false]{biblatex}
\addbibresource{biblio.bib}

%%% TABLE OF CONTENTS (TOC)
\RequirePackage{imakeidx}					%% make index
\RequirePackage[titles]{tocloft}	        %% TOC LOF LOT
\RequirePackage{etoc}						%% local TOC
\setuptoc{toc}{totoc}						%% setup TOC
\newcommand{\chaptertoc}[1][Contents]{%		%% chapter TOC
	\etocsetnexttocdepth{3}%				%% depth of the local TOC
	\etocsettocstyle{\addsec*{#1}}{}%
	\localtableofcontents%
}
\setcounter{secnumdepth}{3}					%% depth of numbered sections
\setcounter{tocdepth}{2}					%% depth of the TOC
\makeindex[program=makeindex, 
    options=-s these, columns=1, intoc]     %% make index

%%% PACKAGES FOR MATHS
\RequirePackage{amsmath}					%% formula
\RequirePackage{amssymb}					%% symbols
\RequirePackage{amsfonts}					%% fonts

%%% PDF
\RequirePackage{pdfpages}					%% insert pdf
\RequirePackage{pdflscape}                  %% landscape pdf
\RequirePackage{hyperref}					%% interactive pdf

\pdfminorversion=5							%% PDF en version 1.5
\pdfobjcompresslevel 0						%% compression des objets
\pdfcompresslevel 0							%% compression du PDF

%%% PACKAGES FOR TABLES
\RequirePackage{threeparttable}             %% threeparttable
\RequirePackage{booktabs}                   %% booktabs
\RequirePackage{caption}                    %% caption
\RequirePackage{dcolumn}                    %% align numbers in table
\RequirePackage{threeparttablex}            %% threepartable
\RequirePackage{longtable}                  %% table sur plusieurs pages
\RequirePackage{rotating}                   %% rotate pages
\RequirePackage{ragged2e}                   %% alignement

%%% PACKAGE OPTIONS
% HYPERREF
\hypersetup{                                %% links in color
	colorlinks = true,
	linkcolor = blue,
	anchorcolor = blue,
	citecolor = blue,
	filecolor = blue,
	urlcolor = blue
}
% BASE
\setlength{\parindent}{20pt}                %% indent
\interfootnotelinepenalty=10000             %% avoid split in footnotes
% AMSMATH
\newtheorem{theorem}{Theorem}
\newtheorem{assumption}{Assumption}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{conjecture}{Conjecture}
\newtheorem{algorithm}{Algorithm}
\newtheorem{example}{Example}
\newtheorem{remark}{Remark}
\newenvironment{proof}[1][Proof]{\noindent\textbf{#1.} }{\ \rule{0.5em}{0.5em}}

%%% TITLE PAGE DESIGN
\definecolor{blueamu}{RGB}{0, 101, 189}         %% blue AMU
\definecolor{cyanamu}{RGB}{61, 183, 228}        %% cyan AMU

\newcommand{\dhorline}[3][0]{%                  %% horizontal dots
    \tikz[baseline=-2pt]{\path[decoration={markings, 
      mark=between positions 0 and 1 step 2*#3
      with {\node[color=blueamu, fill, circle, minimum width=#3, inner sep=0pt, anchor=south west] {};}},postaction={decorate}]  (0,#1) -- ++(#2,0);}}
\newcommand{\dvertline}[3][0]{%                 %% vertical dots
    \tikz[baseline=2em]{\path[decoration={markings,
      mark=between positions 0 and 1 step 2*#2
      with {\node[color=black!50, fill, circle, minimum width=#2, inner sep=0pt, anchor=south west] {};}},postaction={decorate}] (0, #1) -- ++(0,#3);}}

\newcommand\titel[1]{{\usefont{T1}{tit}{el}{n} #1 }}
\newcommand\titl[1]{{\usefont{T1}{tit}{l}{n} #1 }}
\newcommand\titm[1]{{\usefont{T1}{tit}{m}{n} #1 }}
\newcommand\titsb[1]{{\usefont{T1}{tit}{sb}{n} #1 }}
\newcommand\titb[1]{{\usefont{T1}{tit}{b}{n} #1 }}
\makeatletter\newcommand\HUGE{\@setfontsize\Huge{28}{0}}\makeatother

\renewcommand*{\sfdefault}{phv}     % select Helvetica font for SF
\renewcommand{\ifstr}{\Ifstr}       % delete 'warnings' from packages
\renewcommand{\iftocfeature}{\Iftocfeature} % LaTeX Project Team
