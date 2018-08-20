\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{modelo}

\LoadClass[11pt, a4paper]{article} 
  
 % Fontes
 \usepackage{times} 
  
  
 \usepackage{graphics}
 \usepackage{subfigure}
 \usepackage{epsfig}
 \usepackage[centertags]{amsmath}
 \usepackage{amsthm,newlfont}
 \usepackage{longtable}
 \usepackage{cite}
 \usepackage[usenames,dvipsnames]{color}  
 \usepackage{titlesec}

    
\makeatletter
%Setting section style
\renewcommand\section{%
  \@startsection{section}{1}
                {\z@}%
                {-3.5ex \@plus -1ex \@minus -.2ex}%
                {2.3ex \@plus.2ex}%
                {\color{teal}\normalfont\normalsize\bfseries\MakeUppercase}%
}    
    
\titleformat{\section}{\normalfont\bfseries} 
{\thesection}{6pt}{\bfseries\MakeUppercase} 
\titlespacing*{\section}{1pc}{*4}{*2.3}[1pc]   
   
   
\titleformat{\subsection}{\normalfont} 
{\thesubsection}{6pt}{\MakeUppercase} 
%\titlespacing*{\section}{1pc}{*4}{*2.3}[1pc]  

\titleformat{\subsubsection}{\normalfont} 
{\thesubsubsection}{6pt}{\bfseries\normalfont} 
%\titlespacing*{\section}{1pc}{*4}{*2.3}[1pc]  

\titleformat{\paragraph}{\normalfont} 
{\thesubsection}{6pt}{\thesubsection.1.1 \bfseries\normalfont} 
%\titlespacing*{\section}{1pc}{*4}{*2.3}[1pc]    
       
\titleformat{\section}{\color{teal}\MakeUppercase\large\bfseries}{\color{teal}\thesection}{1em}{} 
\titleformat{\subsection}{\color{teal}\normalfont\bfseries}{\color{teal}\thesubsection}{1em}{}
        
 
% Margens
\usepackage[left=3.00cm, right=2.00cm, top=3.00cm, bottom=2.00cm,includehead,includefoot,asymmetric,footskip=60pt,includehead,includefoot]{geometry}   

% Espaçamento dos parágrafos
\parindent 1cm
\parskip   0pt
  
  
% Teoremas em português
  
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{definition}{Definition}[section]
\newtheorem{remark}{Remark}[section]
\newtheorem{corollary}{Corollary}[section]
\newtheorem{teorema}{Teorema}[section]
\newtheorem{lema}{Lema}[section]
\newtheorem{prop}{Proposi\c{c}\~ao}[section]
\newtheorem{defi}{Defini\c{c}\~ao}[section]
\newtheorem{obs}{Observa\c{c}\~ao}[section]
\newtheorem{cor}{Corol\'ario}[section]    

 
% Título 
  
 \usepackage{titling}
 \pretitle{\begin{center}\LARGE\bfseries}
 	\posttitle{\par\end{center}\vskip 0.5em}
 \date{}
 \thanksmarkseries{alph}
 \thanksheadextra{}{,}
 
 \usepackage{authblk}
 \renewcommand\Affilfont{\small}
 \renewcommand\Authand{, }
 \renewcommand\Authands{, }
 
 \usepackage{setspace} 
 \usepackage{indentfirst}
 \setlength\parindent{1.5cm} 
 
 
 
\renewenvironment{abstract}
{\begin{list}{}{%
			\setlength{\rightmargin}{0.5cm}
			\setlength{\leftmargin}{0.5cm}
			\small} 
		\item[] }
	{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ps@headreport}
{ \renewcommand{\@oddhead}
	{\begin{minipage}{\textwidth}
			%HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
			{\normalsize {\bf Modelo para o SEI}}\\
			{\normalsize {\em }} \\
			%HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
			\rule{\textwidth}{0.6pt} 
		\end{minipage}
	}
	\renewcommand{\@oddfoot}{}
	\renewcommand{\@evenhead}{\@oddhead}
	\renewcommand{\@evenfoot}{\@oddfoot}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\criartitulo{\par
	\begingroup
	\renewcommand\thefootnote{\@arabic\c@footnote}%
	\def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
	\long\def\@makefntext##1{\parindent 1em\noindent
		\hb@xt@1.8em{%
			\hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
	
	\newpage
	\global\@topnum\z@   % Prevents figures from going at top of page.
	\@criartitulo
	
	\thispagestyle{headreport}\@thanks
	\endgroup
	\global\let\thanks\relax
	\global\let\criartitulo\relax
	\global\let\@criartitulo\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
}
\def\@criartitulo{%
	\newpage
	\null
	\vskip 0em%
	\begin{flushleft}%
		\let \footnote \thanks
		{\Large \MakeUppercase{\@title} \par}%
	\end{flushleft}%  
	\vskip 1.5em%  
	\begin{flushleft} 
		{\Large \MakeUppercase{\tituloingles}}
	\end{flushleft}
	{\normalsize
		\lineskip .5em%
		\begin{minipage}{.40\linewidth}
			\small{\@author}
		\end{minipage} 
		\begin{minipage}{.60\linewidth} 
		\begin{resumo} 
		\footnotesize
        \resumotexto
        \end{resumo}   
        \begin{keywords}  
        \footnotesize
        \palavraschave
        \end{keywords}  
        
        \begin{abstractt}
            \footnotesize
            \resumoingles 
        \end{abstractt}    
        
        \begin{keywordss} 
            \footnotesize
            \kwords
        \end{keywordss}
        \end{minipage}
		\par}%
	\vskip 1em}
	

    	


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
\newenvironment{resumo}
{\parindent 0pt \small \textbf{\begin{center}\textcolor{teal}{\textbf{RESUMO}} \end{center}}} 
   
 \newenvironment{abstractt}
{\parindent 0pt \small \textbf{\begin{center}\textcolor{teal}{\textbf{ABSTRACT}} \end{center}}}   

\newenvironment{keywords}
{\vspace{6pt}\noindent \small \textbf{\textcolor{teal}{PALAVRAS-CHAVE:}}}   
 
\newenvironment{keywordss}
{\vspace{6pt}\noindent \small \textbf{\textcolor{teal}{KEYWORDS:}}}  

\newenvironment{citacao}{
 \list{}
 \noindent\small
 \addtolength{\leftskip}{8cm}
 \item[]
 }{\endlist} 
 
 
% Criar autores de uma universidade 
     
\newcommand{\criarautor}[3]{% 
\small{%  

  \textbf{\small#1} \\ \textcolor{blue}{\small#2} \\ \ #3  
 }

 
    
}   
\newcommand{\criaruniversidade}[1]{\small{#1} \\} 
 

% Conteudo do resumo estruturado 
 
% Primeira página  
 
\newcommand{\runningheads}{\markboth}
\normalsize
 
\endinput
