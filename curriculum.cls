\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculum}[2020/05/13 Curriculum Style by mazunki]

% Base class
\LoadClass{article}

% Margins
\RequirePackage{geometry}
\geometry{top=1.25in, left=1.0in, bottom=0.75in, right=0.80in}

% Variables for title
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\website}[1]{\def\@website{#1}}
\newcommand*{\jobtitle}[1]{\def\@jobtitle{#1}}

\RequirePackage{titlesec}
% Title + Name
\RequirePackage{tabularx}
\RequirePackage[hidelinks]{hyperref}
\renewcommand{\maketitle}{%
	{\Huge\@author}\\*[0.3in]
	{\Huge\bfseries\hspace*{\parindent}\@jobtitle}\\[0.3in]
	\begin{tabularx}{\textwidth}{X X r l r l}
	& & mail: &\href{mailto:\@email}{\@email} &GitHub:  & \href{https://github.com/\@github}{\@github}\\[0.3em]
	& & phone:&\href{tel:\@phone}{\@phone} &LinkedIn:& \href{https://linkedin.com/in/\@linkedin}{\@linkedin} \\[0.3em]
	& & 	  &        &url:     & \url{\@website}
	\end{tabularx}
}

% Custom section formatting

\titleformat{\section}%
	{\vspace{1.5em}\huge\bfseries}% format
	{}% label
	{1em}% hsep
	{}% before
	[\titlerule\vspace*{0.5em}] % after

\titleformat{\subsection}%
	{\large\bfseries}%
	{}%
	{-1em}%
	{}%
	[]

\titleformat{\subsubsection}%
	{\small\bfseries}%
	{}%
	{1em}%
	{}%
	[]	

% Visual of lists
\RequirePackage{enumitem}
\setlist[itemize]{label=---}


% Allowing for easy columning
\newenvironment{half}
	{\begin{minipage}[t]{0.4\textwidth}}
	{\end{minipage}\hspace{0.1\textwidth}}

% eof
