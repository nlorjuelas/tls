\ProvidesClass{tls}[2015/05/19 TLS Proceedings]

\LoadClass[letterpaper,11pt]{article}

\RequirePackage[vmargin=1.25in,hmargin=1.5in]{geometry}
\RequirePackage{times}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage[font={small}]{caption}

% coloring
\RequirePackage{color}
\RequirePackage{colortbl}
\RequirePackage{xcolor}

% urls
\RequirePackage{url}

\pagestyle{empty} % No page numbers

% floats
\setlength{\intextsep}{6pt plus 2pt minus 2pt}
\setlength{\textfloatsep}{6pt plus 2pt minus 2pt}

% maketitle, mostly from article.cls (2007/10/19 v1.4h)
\makeatletter
\def\institution#1{\gdef\@institution{#1}}
\def\email#1{\gdef\@email{#1}}
\def\@maketitle{%
  \newpage
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\Large \bfseries\@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author\\[1pt]
        \@institution\\
        {\small\@email}\\
      \end{tabular}\par}%
    \vskip 1em%
  \end{center}%
  \par
  \vskip 1.5em}
\makeatother


% list environments from tweaklist.sty
\makeatletter
\def\enumhook{}
\def\enumhooki{}
\def\enumhookii{}
\def\enumhookiii{}
\def\enumhookiv{}
\def\itemhook{}
\def\itemhooki{}
\def\itemhookii{}
\def\itemhookiii{}
\def\itemhookiv{}
\def\descripthook{}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}%
          \enumhook \csname enumhook\romannumeral\the\@enumdepth\endcsname}%
  \fi}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\hss\llap{##1}}%
        \itemhook \csname itemhook\romannumeral\the\@itemdepth\endcsname}%
  \fi}

\renewenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\descriptionlabel\descripthook}}
  {\endlist}

\makeatother

% itemize environment lengths
\renewcommand{\itemhook}{
  \setlength{\topsep}{6pt}%
  \setlength{\parskip}{0pt}%
  \setlength{\partopsep}{0pt}%
  \setlength{\parsep}{0pt}%
  \setlength{\itemsep}{0pt}%
}

% enumerate environment lengths
\renewcommand{\enumhook}{
  \setlength{\topsep}{6pt}%
  \setlength{\parskip}{0pt}%
  \setlength{\partopsep}{0pt}%
  \setlength{\parsep}{0pt}%
  \setlength{\itemsep}{0pt}%
}

%bibliography - orig
\makeatletter
\renewenvironment{thebibliography}[1]
  {\section*{\refname}%
    \medskip
    \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
    \list{\@biblabel{\@arabic\c@enumiv}}%
         {\setlength{\leftmargin}{20pt}
          \setlength{\itemindent}{-20pt}
          \setlength{\parsep}{4pt}
       	  \setlength{\itemsep}{0pt}
          \@openbib@code
          \usecounter{enumiv}%
          \let\p@enumiv\@empty
          \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist}
\makeatother

%% All the citation style stuff from lsalike
\makeatletter
\let\@internalcite\cite

\def\xcite{\def\@citeseppen{-1000}%
 \def\@cite##1##2{(\nobreak\hskip 0in{##1\if@tempswa , ##2\fi})}%
 \def\citeauthoryear##1##2{\frenchspacing##1 ##2}\@internalcite}

\def\xpagecite[#1]#2{\def\@citeseppen{-1000}%
 \def\@cite##1##2{(\nobreak\hskip 0in{##1\if@tempswa , ##2\fi})}%
 \def\citeauthoryear##1##2{\frenchspacing##1 ##2:#1}\@internalcite{#2}}

\def\cite{\@ifnextchar [{\xpagecite}{\xcite}}

\def\xnamecite{\def\@citeseppen{1000}%
 \def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{\frenchspacing##1 (##2)}\@internalcite}

\def\quotecite{\def\@citeseppen{1000}%
 \def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{\frenchspacing##1's (##2)}\@internalcite}

\def\citeboth{\def\@citeseppen{1000}%
 \def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{\frenchspacing##1 ##2}\@internalcite}

% \def\item{\@ifnextchar [{\@item}{\@noitemargtrue \@item[\@itemlabel]}}
\def\namecite{\@ifnextchar [{\pagecite}{\xnamecite}}

\def\pagecite[#1]#2{\def\@citeseppen{1000}%
 \def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{\frenchspacing##1 (##2:#1)}\@internalcite{#2}}

\def\citeauthor#1{\def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{\frenchspacing##1}\@citedata{#1}}

\def\citeyear#1{\def\@cite##1##2{{##1\if@tempswa , ##2\fi}}%
 \def\citeauthoryear##1##2{##2}\@citedata{#1}}

\def\@citedata#1{\@tempswafalse%
 \if@filesw\immediate\write\@auxout{\string\citation{#1}}\fi
  \def\@citea{}\@cite{\@for\@citeb:=#1\do
    {\@citea\def\@citea{,\penalty\@citeseppen\ }\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
{\csname b@\@citeb\endcsname}}}{}}

% don't box citations, separate with ; and a space
% also, make the penalty between citations negative: a good place to break
\def\@citex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
  \def\@citea{}\@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{;\penalty\@citeseppen\ }\@ifundefined
       {b@\@citeb}{{\bf ?}\@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
{\csname b@\@citeb\endcsname}}}{#1}}

% raise the brackets in bibliography labels
\def\@biblabel#1{}

% lsalike currently uses the ampersand (&) instead of the
% word "and" in author lists, and it also replaces names by dashes in one
% more situation than the journal Language.
% Both these can be returned to standard Language style by switching the comments on
% the appropriate functions for \lsadashifynew  and \lsaand below.
% (The non-standard situation occurs for ordered examples like:
%
% Robin, Christopher and Winnie Pooh
% Robin, Christopher and Eeyore
%
% The style will currently dashify the second Christopher Robin -
% this is not standard.
\def\lsadashify#1{---\hspace*{-2pt}---}
\def\lsadashifynew#1{---\hspace*{-2pt}---}
%\def\lsadashifynew#1{#1}
\def\lsaand{\& }
%\def\lsaand{and }
\makeatother
