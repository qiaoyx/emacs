
(add-to-list 'org-export-latex-classes
             '("article"
               "\\documentclass[utf-8,xcolor=dvips,adobefonts,12pt]{article}
		\\usepackage[margin=24mm]{geometry}
		\\usepackage[CJKbookmarks,colorlinks,linkcolor=blue,anchorcolor=gray,citecolor=green]{hyperref}
		\\usepackage{tabularx,multirow,multicol,longtable,threeparttable,tabu,colortbl,dcolumn}
		\\usepackage[labelfont=bf,labelsep=quad]{caption}
		\\usepackage{titlesec,titletoc,xeCJK,ulem}
		\\usepackage{booktabs,contour}
		\\usepackage{amsmath,graphics}
		\\usepackage[svgnames]{xcolor}
		\\usepackage{fontspec}
		\\usepackage{subfigure,indentfirst}
		\\usepackage{fancyhdr,fancybox,lastpage}
		\\usepackage{picinpar,pifont}
		\\usepackage{times,appendix,calligra,rotating}
		\\usepackage{enumitem,listings,lettrine}
		\\usepackage{paralist,mdwlist}
		\\usepackage{pstricks,pdftricks}
		\\setmainfont{New Century Schoolbook LT Std}
		\\setCJKmainfont{Adobe Song Std}
		\\setCJKmonofont{Adobe Heiti Std}
		\\setCJKsansfont{Adobe Fangsong Std}
		\\lstset{
		  showspaces=false,
		  showtabs=false,
		  tabsize=4,
		  numbers=left,
		  numberstyle=\\small,
		  basicstyle=\\tt,
		  identifierstyle=\\tt,
		  commentstyle=\\tt,
		  stringstyle=\\tt,
		  keywordstyle=\\color{blue}\\tt
		}
		\\newcommand{\\qyxreserve}[1]{
		  \\makebox[0pt][l]{
		    \\scalebox{1}[1]{#1}}
		  \\raisebox{-1.2mm}{\\scalebox{1}[-1]{\\color[gray]{0.7}{#1}}}
		}
		\\definecolor{shadow}{gray}{0.65}
		\\newcommand{\\shadow}[2]{\\contour{shadow}{\\color{#1} \\selectfont {#2}}}
                 [NO-DEFAULT-PACKAGES]
                 [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq org-export-latex-listings t)
;; Options for \lset command（reference to listing Manual)
(setq org-export-latex-listings-options
      '(
        ("basicstyle" "\\color{foreground}\\small\\mono")           ; 源代码字体样式
        ("keywordstyle" "\\color{function}\\bfseries\\small\\mono") ; 关键词字体样式
        ("identifierstyle" "\\color{doc}\\small\\mono")
        ("commentstyle" "\\color{comment}\\small\\itshape")         ; 批注样式
        ("stringstyle" "\\color{string}\\small")                    ; 字符串样式
        ("showstringspaces" "false")                                ; 字符串空格显示
        ("numbers" "left")                                          ; 行号显示
        ("numberstyle" "\\color{preprocess}")                       ; 行号样式
        ("stepnumber" "1")                                          ; 行号递增
        ("backgroundcolor" "\\color{background}")                   ; 代码框背景色
        ("tabsize" "4")                                             ; TAB等效空格数
        ("captionpos" "t")                                          ; 标题位置 top or buttom(t|b)
        ("breaklines" "true")                                       ; 自动断行
        ("breakatwhitespace" "true")                                ; 只在空格分行
        ("showspaces" "false")                                      ; 显示空格
        ("columns" "flexible")                                      ; 列样式
        ("frame" "single")                                          ; 代码框：阴影盒
        ("frameround" "tttt")                                       ; 代码框： 圆角
        ("framesep" "0pt")
        ("framerule" "8pt")
        ("rulecolor" "\\color{background}")
        ("fillcolor" "\\color{white}")
        ("rulesepcolor" "\\color{comdil}")
        ("framexleftmargin" "10mm")
        ))

(provide 'to-latex)
