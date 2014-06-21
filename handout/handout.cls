% ------
% This is a handout document class. It is based on the article class. It is design for creating handouts for a college class
% Created By: Roger Cortesi, 27 JUN 2007
% ----
% ---- Identification -----

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{handout}

% ---- Initial Code ----

\RequirePackage{ifthen}


% Schrift & Sprache
\usepackage[utf8]{inputenc} % Schriftsatz utf8 verwenden 
\RequirePackage[T1]{fontenc} % T1-Fonts
\RequirePackage[ngerman]{babel} % Deutsche Sonderzeichen und Silbentrennung (neue Rechtschreibung)
\usepackage{mathpazo}
\RequirePackage{marvosym} % diverse Symbole
\RequirePackage{wasysym} % diverse Symbole 
\RequirePackage{eulervm} % Mathematische Symbole 
\RequirePackage{amssymb} % Mathematische Symbole 
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{color}
\RequirePackage{pifont} % einige Befehle brauchen pifont (Symbole)
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{boxedminipage}
\RequirePackage{arydshln}
%\RequirePackage[backend=biber, style=authortitle-dw]{biblatex}
\usepackage{bibgerm}

\usepackage[a4paper,bottom=15mm]{geometry} % für Seitenränder, 

\pagenumbering{arabic}

% ---- Execution of Options ----

\ProcessOptions \relax

% --- Package Loading ----

\LoadClass[12pt]{scrartcl}

% ---- Main Code ----

% --- Setup the Page Layout ---
	\setlength\textwidth{170mm}
	\setlength\textheight{220mm}
	\setlength\oddsidemargin{-5mm}
	\setlength\evensidemargin{0in}
	\setlength\topmargin{-0.25in}
	\setlength\parindent{0in}
	\setlength\parskip{0.5em}

% --- Define Some Useful Commands ---
	% Define the default values for these commands
	\newcommand{\Universitaet}{}
	\newcommand{\HandoutTitle}{}
	\newcommand{\Datum}{}
	\newcommand{\Fakultaet}{}
	\newcommand{\Semester}{}
	\newcommand{\Dozent}{}
	\newcommand{\Referent}{}
	\newcommand{\Matrikelnr}{}
	\newcommand{\Seminar}{}
	\newcommand{\Blank}{}

	% change the values if the user sets these commands
	\newcommand{\SetHandoutTitle}[1]{\renewcommand{\HandoutTitle}{#1}}
	\newcommand{\SetUniversitaet}[1]{\renewcommand{\Universitaet}{#1}}
	\newcommand{\SetFakultaet}[1]{\renewcommand{\Fakultaet}{#1}}
	\newcommand{\SetSemester}[1]{\renewcommand{\Semester}{#1}}
	\newcommand{\SetDozent}[1]{\renewcommand{\Dozent}{#1}}
	\newcommand{\SetReferent}[1]{\renewcommand{\Referent}{#1}}
	\newcommand{\SetMatrikelnr}[1]{\renewcommand{\Matrikelnr}{#1}}
	\newcommand{\SetDatum}[1]{\renewcommand{\Datum}{#1}}
	\newcommand{\SetSeminar}[1]{\renewcommand{\Seminar}{#1}}
	
	\newcommand{\makeliteratur}[1]{
	
		\singlespacing
		\nocite{*}
		\bibliography{#1}
	}
	
	% redefine the make title command
	\renewcommand\maketitle{
		\thispagestyle{handouttitle}
		\vspace*{-10mm}
		\begin{center}
		\LARGE{\HandoutTitle} \\
		\end{center}
		\onehalfspacing 
	}

	% Redefine the sectioning commands \section \subsection and \subsubsection
	\renewcommand\section{\@startsection
		{section}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\normalfont\large\textbf}
	}
	\renewcommand\subsection{\@startsection
		{subsection}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\normalfont\normalsize\textbf}
	}
	\renewcommand\subsubsection{\@startsection
		{subsubsection}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\normalfont\normalsize\textbf}
	}
	\newenvironment{noindlist}
	 {\begin{list}{\labelitemi}{\leftmargin=1em\itemindent=0em\topsep=-5em\itemsep=-4pt}}
	 {\end{list}}
	 

% --- Define the Header and Footer Styles ---

	% The style for the page with \maketitle called on it.
	\fancypagestyle{handouttitle} {
		\renewcommand\headrulewidth{0.5pt}
		\renewcommand\footrulewidth{0.5pt}
		\chead{}
		\fancyfoot[L]{\includegraphics[scale=0.1]{../grafiken/sap_logo.png}}
		\fancyfoot[C]{\thepage\ von \pageref{LastPage}}
		\fancyfoot[R]{\includegraphics[scale=0.04]{../grafiken/dhbw_logo.png}}
		\lhead{ \small
				\textbf{\Universitaet}\\
				\textit{\Fakultaet}\\
				Seminar: \Seminar\\
				Dozent: \Dozent
			  }	
		\rhead{\Blank \small
				Referenten: \Referent\\
				Matrikelnummern: \Matrikelnr\\
				Datum: \Datum\\
				\Semester
			  }
		\addtolength{\headheight}{10mm}
	}

	% The style for pages without \maketitle called on it.
	\fancypagestyle{handout} {
		\renewcommand\headrulewidth{0.5pt}
		\renewcommand\footrulewidth{0.5pt}
		\chead{}
		\fancyfoot[L]{\includegraphics[scale=0.1]{../grafiken/sap_logo.png}}
		\fancyfoot[C]{\thepage\ von \pageref{LastPage}}
		\fancyfoot[R]{\includegraphics[scale=0.04]{../grafiken/dhbw_logo.png}}
		\rhead{ \Blank \textbf{\small \HandoutTitle} \\  \small \textbf{\Datum} }
		\lhead{ \small \Seminar \\ \Semester\ }
	}
	
% Set the default page style to handout.
	\pagestyle{handout}

% Load at last
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage{longtable}
\RequirePackage{multirow}
\usepackage[
   % Farben fuer die Links
   colorlinks=true,         % Links erhalten Farben statt Kaeten
   urlcolor=black,    % \href{...}{...} external (URL)
   filecolor=black,  % \href{...} local file
   linkcolor=black,  % \ref{...} and \pageref{...}
   citecolor=black,
   menucolor=black,
   % Links
   raiselinks=true,			 % calculate real height of the link
   breaklinks,              % Links berstehen Zeilenumbruch
   verbose,
   hyperfootnotes=false,    % Keine Links auf Fussnoten
   % Anchors
   plainpages=false,        % Anchors even on plain pages ?
   pageanchor=true,         % Pages are linkable
   pdfstartview=FitH,       % Dokument wird Fit Width geoeffnet
]{hyperref}

% new entry for using itemize in tabular environment
%http://tex.stackexchange.com/questions/75717/how-can-i-mix-itemize-and-tabular-environments
\newcolumntype{L}{>{\labelitemi~~}l<{}}

%include graphics to table
\newlength{\myx} % Variable zum Speichern der Bildbreite
\newlength{\myy} % Variable zum Speichern der Bildhöhe
\newcommand\includegraphicstotab[2][\relax]{%
% Abspeichern der Bildabmessungen
\settowidth{\myx}{\includegraphics[{#1}]{#2}}%
\settoheight{\myy}{\includegraphics[{#1}]{#2}}%
% das eigentliche Einfügen
\parbox[c][1.1\myy][c]{\myx}{%
\includegraphics[{#1}]{#2}}%
}