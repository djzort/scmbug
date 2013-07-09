\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{usetex-v1}[2002/10/31 v1.2 usetex Usenix article class]

% usetex-v1.cls - to be used with LaTeX2e for Usenix articles
%
% To use this style file, do this:
%
%    \documentclass{usetex-v1}
%
% The following definitions are modifications of standard article.cls
% definitions, arranged to do a better job of matching the Usenix
% guidelines. and make for convenient Usenix paper writing
%
% Choose the appropriate option:
%
% 1. workingdraft:
%
%       For initial submission and shepherding.  Features prominent
%       date, notice of draft status, page numbers, and annotation
%       facilities.
%
% 2. proof:
%
%         A galley proof identical to the final copy except for page
%         numbering and proof date on the bottom.  Annotations are
%         removed.
%
% 3. webversion:
%
%       A web-publishable version, uses \docstatus{} to indicate
%       publication information (where and when paper was published),
%       and page numbers.
%
% 4. finalversion:
%
%       The final camera-ready-copy (CRC) version of the paper.
%       Published in conference proceedings.  This doesn't include
%       page numbers, annotations, or draft status (Usenix adds
%       headers, footers, and page numbers onto the CRC).
%
% If several are used, the last one in this list wins
%

%
% In addition, the option "endnotes" permits the use of the
% otherwise-disabled, Usenix-deprecated footnote{} command in
% documents.  In this case, be sure to include a
% \makeendnotes command at the end of your document or
% the endnotes will not actually appear.
%

\newif\if@draftcopy \newif\ifworkingdraft
\DeclareOption{workingdraft}{\workingdrafttrue\@draftcopytrue}
\newif\ifproof \DeclareOption{proof}{\prooftrue\@draftcopytrue}
\newif\ifwebversion
\DeclareOption{webversion}{\prooftrue\webversiontrue\@draftcopytrue}
\DeclareOption{finalversion}{}
\newif\ifhasendnotes
\DeclareOption{endnotes}{\hasendnotestrue}

% pass all other options to the article class
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}

% actually process the options
\ProcessOptions

% usetex is based on article
\LoadClass[twocolumn]{article}

% Footnotes are not currently allowed, but
% endnotes (while a bad idea) are.
\ifhasendnotes
  \RequirePackage{endnotes}
\fi

% save any provided document status information
\def\@docstatus{}
\def\docstatus#1{\gdef\@docstatus{#1}}

\ifworkingdraft

  % formatting helper for draft notes
  \newcommand{\@noteleader[1]}{%
    {\marginpar{\framebox{\scriptsize\textbf{#1}}}}%
    \bfseries\itshape
  }

  % put a small anonymous editing note in the draft copy
  \newcommand{\edannote}[1]{{\@noteleader[note] (#1)}}

  % put a small attributed editing note in the draft copy
  \newcommand{\edatnote}[2]{{\@noteleader[#1] #2}}

  % put an attributed editing note paragraph in the draft copy
  \newenvironment{ednote}[1]
    {\newcommand{\who}{#1}\@noteleader[\who]}

  % mark a spot where work has been left off for later
  \newcommand{\HERE}{%
    {\mbox{}\marginpar{\framebox{\textbf{here}}}}{\bf\ldots}}

\else

  % dummy versions of editing commands to produce warnings

  \newcommand{\edannote}[1]{\@latex@warning
    {Leftover edannote command in final version ignored}}

  \newcommand{\edatnote}[1]{\@latex@warning
    {Leftover edatnote command in final version ignored}}

  \newsavebox{\@discard}
  \newenvironment{ednote}[1]{\@latex@warning
    {Leftover ednote environment in final version ignored}%
    \begin{lrbox}{\@discard}}{\end{lrbox}}

  \newcommand{\HERE}{\@latex@warning
    {Leftover HERE command in final version ignored}}

\fi

% set up the footers appropriately
\def\@setfoot{%
  \ifwebversion
    % webversions get whatever status the author says
    \gdef\@evenfoot{\@docstatus \hfil \thepage}%
  \else
    % all other drafts get the standard draft footer
    \gdef\@evenfoot{\textbf{Draft:} \@draftdate\hfil \textbf{Page:} \thepage}%
  \fi
  \gdef\@oddfoot{\@evenfoot}%
}

%
% Usenix wants no page numbers for submitted papers, so that
% they can number them themselves.  Drafts should have
% numbered pages, so they can be edited.
% 
\if@draftcopy
  % Compute a date and time for the draft for use
  % either in \@setfoot (proof) or in \maketitle (workingdraft)
  %
  % Time code adapted from custom-bib/makebst.tex
  % Copyright 1993-1999 Patrick W Daly
  % Max-Planck-Institut f\"ur Aeronomie
  % E-mail: daly@linmp.mpg.de
  \newcount\hour
  \hour=\time
  \divide\hour by 60
  \newcount\minute
  \minute=\hour
  \multiply\minute by 60
  \advance\minute by -\time
  \multiply\minute by -1
  \newcommand{\@draftdate}
    {{\the\year/\/\two@digits{\the\month}/\/\two@digits{\the\day}%
          ~\two@digits{\the\hour}:\two@digits{\the\minute}}}
  \pagestyle{plain}
  \@setfoot
\else
  \pagestyle{empty}
\fi

% Times-Roman font is nice if you can get it (requires NFSS,
% which is in latex2e).
\usepackage{times}

% endnote support, as described at
%   http://www.lyx.org/help/footnotes.php
\ifhasendnotes
  \typeout
    {Warning: endnotes support is deprecated (see documentation for details)}
  \let\footnote=\endnote
  \def\enoteformat{\rightskip\z@ \leftskip\z@
       \parindent=0pt\parskip=\baselineskip
       \@theenmark. }
  \newcommand{\makeendnotes}{
    \begingroup
    \def\enotesize{\normalsize}
    \theendnotes
    \endgroup
  }
\else
  \long\gdef\footnote{\@latex@error
    {Deprecated footnote command (see documentation for details)}}
  \long\gdef\endnote{\@latex@error
    {Deprecated endnote command (see documentation for details)}}
\fi

%
% Usenix margins 
% Gives active areas of 6.45" x 9.0"
%
\setlength{\textheight}{9.0in}
\setlength{\columnsep}{0.25in}
\setlength{\textwidth}{6.45in}
%\setlength{\footskip}{0.0in}
%\setlength{\footheight}{0.0in}
\setlength{\topmargin}{0.0in}
\setlength{\headheight}{0.0in}
\setlength{\headsep}{0.0in}
\setlength{\evensidemargin}{0.0in}
\setlength{\oddsidemargin}{0.0in}
\setlength{\marginparsep}{1.5em}
\setlength{\marginparwidth}{0.35in}

% The standard maketitle insists on
% messing with the style of the first page.
% Thus, we will wrap maketitle with code to put
% things right again.
\let \save@maketitle=\maketitle
\def\maketitle{
  \save@maketitle
  \if@draftcopy
    \@specialpagefalse
  \else
    \thispagestyle{empty}
  \fi
}

%
% Usenix titles are in 14-point bold type, with no date, and with no
% change in the empty page headers.  The author section is
% 12 point roman and italic: see below.
%
\def\@maketitle{%
  \newpage
  \null
  \vskip 3ex%
  \begin{center}%
  \let \footnote \thanks
  {\Large \bf \@title \par}%            % use 14 pt bold
  \vskip 2ex%
  {\large
    \lineskip .5ex%
    \begin{tabular}[t]{c}%
      \@author
    \end{tabular}\par}%
  \ifworkingdraft
    \vskip 3ex \textbf{Draft of \@draftdate} \vskip 3ex
  \fi
  \ifwebversion
    \vskip 3ex \textbf{\@docstatus} \vskip 3ex
  \fi
  \end{center}%
  \par
  \vskip 2ex}

%
% The author section
% should have names in Roman, address in
% italic, e-mail/http in typewriter.
% This is enforced by use of these macros
%
\def\authname#1{{#1}\\}
\def\authaddr#1{\itshape{#1}\\}
\def\authurl#1{{\normalsize #1}\\}

%
% The abstract is preceded by a 12-pt bold centered heading
%
\def\abstract{\begin{center}%
  {\large\bf \abstractname\vspace{-.5ex}\vspace{\z@}}%
  \end{center}}
\def\endabstract{}

%
% Main section titles are 12-pt bold.  Lower divisions can
% be same size or smaller: we choose same.
% Main section leading is tight.  Subsection leading is even
% slightly tighter.  All lower divisions are formatted like subsections.
% 
\newcommand\@sectionfont{\reset@font\large\bf}
\newlength\@sectionaboveskip
\setlength\@sectionaboveskip{-0.7\baselineskip
  plus -0.1\baselineskip
  minus -0.1\baselineskip}
\newlength\@sectionbelowskip
\setlength\@sectionbelowskip{0.3\baselineskip
  plus 0.1\baselineskip}
\newlength\@subsectionaboveskip
\setlength\@subsectionaboveskip{-0.5\baselineskip
  plus -0.1\baselineskip}
\renewcommand\section{\@startsection {section}{1}{\z@}%
    {\@sectionaboveskip}{\@sectionbelowskip}{\@sectionfont}}
\newcommand\@gensubsection[2]{\@startsection {#1}{#2}{\z@}%
    {\@subsectionaboveskip}{\@sectionbelowskip}{\@sectionfont}}
\renewcommand\subsection{\@gensubsection{subsection}{2}}
\renewcommand\subsubsection{\@gensubsection{subsubsection}{3}}
%\renewcommand\paragraph{\@gensubsection{paragraph}{4}}
%\renewcommand\subparagraph{\@gensubsection{subparagaph}{5}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {1.25ex \@plus 0.2ex \@minus 0.2ex}%
                                    {-1.0em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                    {1.25ex \@plus 0.2ex \@minus 0.2ex}%
                                    {-1.0em}%
                                    {\normalfont\normalsize\bfseries}}

% List items need to be tightened up.
% There must be a better way than copying
% the definitions to modify the list environment...
\def\@itemspacings{\listparindent=\parindent
  \parsep=0pt\topsep=0.3\baselineskip\partopsep=0pt\itemsep=0pt}
% now make envs use itemspacings
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\@itemspacings\def\makelabel##1{\hss\llap{##1}}}%
  \fi}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\@itemspacings\usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}}%
  \fi}
\def\description{%
  \list{}{\labelwidth\z@ \itemindent-\leftmargin
          \@itemspacings\let\makelabel\descriptionlabel}}

% Bibliography items need to be tightened up.
% Again, there must be a better way than copying
% the definitions to modify the list environment...
\def\thebibliography#1%
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}%
            \parsep=0pt}% pack entries
      \sloppy
      \hbadness=8000% mostly don't whine about bibliography fmt
      \clubpenalty=4000%
      \@clubpenalty=\clubpenalty
      \widowpenalty=4000%
      \sfcode`\.\@m}

% Floating bodies need to be tightened up.
\setlength\textfloatsep{14pt plus 2pt}
\setlength\dbltextfloatsep{\textfloatsep}
\setlength\intextsep{0.8\textfloatsep}
\setlength\abovecaptionskip{8pt minus 2pt}
