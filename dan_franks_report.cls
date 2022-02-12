\ProvidesClass{dan_franks_report}
\LoadClass[11pt, titlepage]{report}

%% Doc vars
\title{\projecttitle}
\author{\studentname}
\date{\submitdate}

%% Colours
\usepackage{xcolor}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{grayDark}{rgb}{0.85,0.85,0.85}
\definecolor{redLight}{rgb}{0.89,0.15,0.21}
\definecolor{greenLight}{rgb}{0.31,0.78,0.47}
\definecolor{blueLight}{rgb}{0.2,0.6,0.86}
\definecolor{gray75}{gray}{0.75}

% Chapter styling
%% Simple
\usepackage{titlesec, blindtext}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\Huge\bfseries}

%% Fancy chapter
%\usepackage[Bjornstrup]{fncychap} % Options: Sonny, Lenny, Glenn, Conny, Rejne, Bjarne, Bjornstrup

% Basic packages
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{siunitx}

% Fancy Header
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[CO]{}
\fancyhead[LO]{\small{\projecttitle}}
\fancyhead[RO]{\small{\studentname}}
\renewcommand{\headrulewidth}{0.4pt}
\fancyfoot[CO]{}
\fancyfoot[RO]{\small\thepage~of~\pageref{endpage}}
\fancyfoot[LO]{\coursecode:\ \coursetitle}
\renewcommand{\footrulewidth}{0.4pt}

\usepackage{etoolbox}
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}

% Section depth
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% Date
\usepackage[UKenglish]{babel}
\usepackage[nodayofweek, level]{datetime}
% \selectlanguage{UKenglish}

% Allows to create box outside of text area
\usepackage{adjustbox}

% Allows variable with table columns
\usepackage{tabularx}
% Allows cell formatting such as newline
\usepackage{makecell}

% Figures
\usepackage{rotating}

% Math-mode strikeout
\usepackage{cancel}
\newcommand\hcancel[2][black]{\setbox0=\hbox{$#2$}%
\rlap{\raisebox{.45\ht0}{\textcolor{#1}{\rule{\wd0}{1pt}}}}#2} 

% Code blocks
\usepackage{listings}

\lstdefinestyle{JavaStyle}{
  language=Java,
  basicstyle=\ttfamily\small,
  numbers=left,
  numberstyle=\tiny\color{gray},
  stepnumber=1,
  numbersep=5pt,
  backgroundcolor=\color{white},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  frame=single,
  rulecolor=\color{black},
  tabsize=4,
  captionpos=b,
  breaklines=true,
  breakatwhitespace=false,
  title=\lstname,
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  escapeinside={\%*}{*)},
  morekeywords={*,...},
  belowskip=0em,
}
 
\lstdefinestyle{JavaStyleNormal}{
  language=Java,                
  basicstyle=\ttfamily
}

% Tikz for graphs
\usepackage{tikz}
\usetikzlibrary{arrows,positioning}
\tikzset{
    %Define standard arrow tip
    >=stealth',
    %Define style for boxes
    punkt/.style={
           rectangle,
           rounded corners,
           draw=black, very thick,
           text width=6.5em,
           minimum height=2em,
           text centered},
    % Define arrow style
    pil/.style={
           ->,
           thick,
           shorten <=2pt,
           shorten >=2pt,}
}

% Naughts and crosses tree
\usepackage{forest,calc}
\forestset{
    make tab/.style args={#1:#2:#3/#4:#5:#6/#7:#8:#9}{%
        content={%
            \tabcolsep=.6\tabcolsep
            \begin{tabular}{p{\widthof{x}}|p{\widthof{x}}|p{\widthof{x}}}
            #1 & #2 & #3\\\hline#4&#5&#6\\\hline#7&#8&#9
            \end{tabular}}},
    label position r/.initial=right,
    label position b/.initial=below
}

% Binary Trees
% \usepackage[edges]{forest}

% Creates abbreviation '\ts' for command '\textsuperscript'
\newcommand{\ts}{\textsuperscript}

% Removes line indent on new paragraphs and replaces with line break
\usepackage[parfill]{parskip}

% Allows for hyper links
\usepackage{hyperref}
%\usepackage{url}

% Images
\usepackage{graphicx}

% Center figure ignoring textwidth
\makeatletter
\newcommand*{\centerfloat}{%
  \parindent \z@
  \leftskip \z@ \@plus 1fil \@minus \textwidth
  \rightskip\leftskip
  \parfillskip \z@skip}
\makeatother

% More figure captioning functionality
\usepackage[center]{caption}
\usepackage{subcaption}

% Custom Title Page
\renewcommand{\maketitle}{
	\begin{titlepage}
		\
	
		\vspace{1cm}
		
		\begin{center}
			{\LARGE \projecttitle}
			
			\vspace{0.4cm}
			
			{\large \studentname}
			
			\vspace{0.4cm}
			
			{\large \submitdate}
		\end{center}
	
		\vfill
	
		\begin{center}
			An assignment submitted in part fulfilment of the degree of
		
			{\large BSc (Hons) in Computer Science}
		
			\vspace{0.4cm}
		
			\supervisorTitle: \supervisor
		
			\vspace{0.4cm}
		
			\coursecode:\ \coursetitle\\
 		
 			\vspace{0.4cm}
 		
	 		Royal Holloway, University of London\\
	
 			\vspace{0.8cm}	
	
 			\begin{center}
 				\includegraphics[scale=1]{./images/root/university.png}
	 		\end{center}
 	
 		\end{center}
		
		\thispagestyle{empty}
	\end{titlepage}
}