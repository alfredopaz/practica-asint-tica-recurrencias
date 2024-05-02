\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{practicaEPCC}[2024/05/01 Practicas EPCC]
\LoadClass[a4paper, twoside, 10pt]{article}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[spanish]{babel} 

% Ajustes de espacio para el encabezado
\setlength{\headheight}{30pt} % Altura del encabezado
\setlength{\headsep}{30pt} % Espacio entre el encabezado y el texto

% Datos del curso
\newcommand{\school}[1]{\gdef\@school{#1}}
\newcommand{\course}[1]{\gdef\@course{#1}}
\newcommand{\professor}[1]{\gdef\@professor{#1}}

% Inicialización de datos del curso
\course{}
\school{}
\professor{}

% Redefinición de \maketitle
\renewcommand{\maketitle}{%
  \begin{center}
    {\LARGE\bfseries \@title \par}
    \vskip 0.5em
    {\large \@author \par}
    \vskip 0.5em
    {\large \@date \par}
  \end{center}
}

% Configuración del encabezado
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.3]{logos/LOGO_UNSA.png}}
\fancyhead[C]{\footnotesize Universidad Nacional de San Agustín de Arequipa \\ \@school \\ \textbf{\@course}}
\fancyhead[R]{\includegraphics[scale=0.08]{logos/logo Escuela.png}}

% Línea después del encabezado
%\renewcommand{\headrulewidth}{0.4pt} % Grosor de la línea
%\renewcommand{\headrule}{\hbox to\headwidth{\color{black}\leaders\hrule height \headrulewidth\hfill}}

% Configuración del pie de página
\fancyfoot[L]{\footnotesize \@professor}
\fancyfoot[C]{\@course}
\fancyfoot[R]{\thepage}


\ProcessOptions\relax