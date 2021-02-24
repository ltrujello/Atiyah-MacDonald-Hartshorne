%%% Typical LaTeX Nonsense 
\NeedsTeXFormat{LaTeX2e}[1995/01/01]
\ProvidesClass{hw_pset}
\RequirePackage{ifpdf}
\ProcessOptions
\LoadClass[10pt]{article}

%% Tell dvips/pdflatex correct page size
\ifpdf
  \AtBeginDocument{%
    \setlength{\pdfpageheight}{\paperheight}%
    \setlength{\pdfpagewidth}{\paperwidth}%
  }
\else
  \AtBeginDvi{\special{papersize=\the\paperwidth,\the\paperheight}}%
\fi

% Exercise environment
\newenvironment{exercise}[1][]{
    % Space below is required

    \noindent\rule{\textwidth}{0.25pt}
    {\noindent \bf #1}
}{
    % Space below is required

    \noindent\rule{\textwidth}{0.25pt}
    \hfill\break
    \vspace*{-\baselineskip}
}

% Solution environment
\newenvironment{solution}{{
    \noindent\textit{Solution:}
}}
{ 
    {\mbox{}\hfill$\square$}
}
