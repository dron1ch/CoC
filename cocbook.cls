\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cocbook}[2019/09/10 v0.1.0 Template for COC 7e material]

\RequirePackage{xkeyval}
\RequirePackage{xstring}
% Pass these class options to the core dnd package.
\newcommand{\coc@packageoptions}{bg=,justified,nomultitoc}

% Pass package options to dnd package; pass all other options to book class.
\DeclareOptionX*{
  \@for \option:=\coc@packageoptions \do{
    \IfBeginWith{\CurrentOption}{\option}{
      \PassOptionsToPackage{\CurrentOption}{coc}
    }{
      \PassOptionsToClass{\CurrentOption}{book}
    }
  }
}
\ProcessOptionsX*\relax

\LoadClass[8pt]{book}

\PassOptionsToPackage{layout=true}{coc}
\RequirePackage{coc}
