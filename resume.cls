%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CV Template
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2021/12/15 v1 Resume Class]

% mind font size and paper type
\LoadClass[10pt, a4paper, headings=standardclasses]{scrartcl}
\usepackage[a4paper, left=2cm, right=2cm, top=3cm, bottom=3cm]{geometry}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{ifthen} % Required for ifthenelse statements

\usepackage{microtype}
\usepackage{graphicx}
\usepackage{enumitem}
\usepackage{changepage}
\usepackage{tabularx}
\usepackage{svg}
\usepackage[T1]{fontenc}

% pagenumbering
\usepackage{lastpage}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\cfoot{\hfill Page\nobreakspace\thepage\nobreakspace
    of\nobreakspace\pageref*{LastPage}}
% color
\usepackage{xcolor}
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}

% the following stops a clash
\usepackage{bibentry}
\let\saved@bibitem\@bibitem
\usepackage[hyperfootnotes=false]{hyperref}
\hypersetup{
  colorlinks=false,
  urlbordercolor=airforceblue,
  pdfborder=0 0 .5
}
\let\@bibitem\saved@bibitem

\newcommand*\bigcdot{\mathpalette\bigcdot@{.5}}
\newcommand*\bigcdot@[2]{\mathbin{\vcenter{\hbox{\scalebox{#2}{$\m@th#1\bullet$}}}}}

\newcommand{\descriptionwidth}[1]{\def\@descriptionwidth{#1}}

\newcommand{\logo}[1]{\def\@logo{#1}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phone}[1]{\def\@phone{#1}}
\newcommand{\homepage}[1]{\def\@homepage{#1}}
\newcommand{\github}[1]{\def\@github{#1}}
\newcommand{\address}[1]{\def\@address{#1}}
\newcommand{\dob}[1]{\def\@dob{#1}}
\newcommand{\pdftitle}[1]{\def\@pdftitle{#1}}
\newcommand{\pdfsubject}[1]{\def\@pdfsubject{#1}}


\newcommand{\pdfmetadata}[0]
{
\hypersetup{
pdftitle={\@pdftitle},
pdfsubject={\@pdfsubject},
pdfauthor={\@name}
}
}

\newcommand{\topsection}[0]
{\begin{minipage}[l]{.8\textwidth}
\begin{flushright}
    \fontsize{11}{1.15\baselineskip}%
    \selectfont{\LARGE \textbf{\@name}}
    \vspace{0.175em}
    \\
    \href{mailto:\@email}{\texttt{\@email}}
    \\
    \href{https://\@homepage}{\texttt{\@homepage}}
    \hspace*{1mm}
    $\bigcdot$
    \hspace*{1mm}
    Github: \href{https://github.com/\@github}{\texttt{\@github}}
    \\
    \@address
    \\
    Date~of~Birth:~\@dob
\end{flushright}
\end{minipage}%
\begin{minipage}[r]{.2\textwidth}
\begin{flushright}
    \@logo
\end{flushright}
\end{minipage}%
}

\newcommand{\interestrow}[1]
{   \item[]
    \begin{adjustwidth}{2.1mm}{2.1mm}#1
    \end{adjustwidth}
}

\newcommand{\headerrow}[2]
{\item[$\bigcdot$] \begin{tabular*}{\linewidth}{l@{\extracolsep{\fill}}r}
	\textbf{#1} &
	#2 \\
\end{tabular*}}

\newcommand{\subrow}[2]
{\begin{tabular*}{\linewidth}{l@{\extracolsep{\fill}}r}
	\textit{#1} &
	#2\\
\end{tabular*}}

\newcommand{\subdescriptionrow}[1]
{\begin{tabular*}{\linewidth}{l}
    \parbox{\@descriptionwidth}{\vspace*{1mm} {\small #1 \par}}\\
\end{tabular*}}

\newcommand{\pubrow}[2]
{   
    \item[#1] \begin{adjustwidth}{2.1mm}{2.1mm}#2\end{adjustwidth}
}

\newcommand{\pubdescriptionrow}[1]
{   \vspace{-1mm}
    \begin{adjustwidth}{2.1mm}{2.1mm}{\small #1\par}
    \end{adjustwidth}
}

\newcommand{\skillsrow}[2]
{
\item[]
\begin{adjustwidth}{2.1mm}{0mm}
\begin{tabularx}{\linewidth}{@{}>{\bfseries}l@{\hspace{.5em}}X@{}}
	#1:& #2\\
\end{tabularx}
\end{adjustwidth}
}
\newcommand{\refsrow}[2]
{
\item[]
\begin{adjustwidth}{2.1mm}{0mm}
{\small #1}
\end{adjustwidth}
}

\newenvironment{rSection}[2]{ % 1 input argument - section name
  %\sectionskip
  \subsection*{#1} % Section title
  \vspace{1mm}
  \hrule % Horizontal line
  \begin{itemize}[labelindent=1mm,labelsep=0mm,leftmargin=*]
  \setlength\itemsep{#2}
}{
  \end{itemize}
}
