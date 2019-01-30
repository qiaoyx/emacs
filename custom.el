(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#c0c0c0" "#336c6c" "#806080" "#0f2050" "#732f2c" "#23733c" "#6c1f1c" "#232333"])
 '(auto-hscroll-mode (quote current-line))
 '(beacon-color "#cc6666")
 '(column-number-mode t)
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (poet)))
 '(custom-safe-themes
   (quote
    ("732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "242527ce24b140d304381952aa7a081179a9848d734446d913ca8ef0af3cef21" "3e2fd26606cba08448283cc16860c1deab138ede73c38c91fdaf4e5c60ece485" "5e5345ea15d0c2234356bc5958a224776b83198f0c3df7155d1f7575405ce990" "07ed389142fef99649ebcfe1f835cf564fc40bb342d8d2f4e13f05302378a47a" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "99b2fdc7de612b74fcb76eb3a1962092cf729909223434f256c7007d490d787a" "44247f2a14c661d96d2bff302f1dbf37ebe7616935e4682102b68c0b6cc80095" "713f898dd8c881c139b62cf05b7ac476d05735825d49006255c0a31f9a4f46ab" "73c69e346ec1cb3d1508c2447f6518a6e582851792a8c0e57a22d6b9948071b4" "3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" "30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" default)))
 '(fci-rule-color "#c7c7c7")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(graphviz-dot-indent-width 4)
 '(haskell-complete-module-preferred (quote ("")))
 '(haskell-completing-read-function (quote helm--completing-read-default))
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(hl-sexp-background-color "#1c1f26")
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(latex-preview-pane-use-frame t)
 '(line-spacing 0.2)
 '(menu-bar-mode nil)
 '(moody-mode-line-height 24)
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(org-allow-promoting-top-level-subtree nil)
 '(org-directory "~/notes")
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.6 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-highlight-latex-and-related (quote (latex script entities)))
 '(org-inlinetask-show-first-star t)
 '(org-insert-mode-line-in-empty-file nil)
 '(org-latex-caption-above nil)
 '(org-latex-compiler "xelatex")
 '(org-latex-default-class "report")
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("xelatex"))
     ("T1" "fontenc" t
      ("xelatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("" "hyperref" nil nil))))
 '(org-latex-listings t)
 '(org-latex-listings-langs
   (quote
    ((emacs-lisp "Lisp")
     (lisp "Lisp")
     (clojure "Lisp")
     (c "C")
     (cc "C++")
     (fortran "fortran")
     (perl "Perl")
     (cperl "Perl")
     (python "Python")
     (ruby "Ruby")
     (html "HTML")
     (xml "XML")
     (tex "TeX")
     (latex "[LaTeX]TeX")
     (shell-script "bash")
     (gnuplot "Gnuplot")
     (ocaml "Caml")
     (caml "Caml")
     (sql "SQL")
     (sqlite "sql")
     (makefile "make")
     (R "r")
     (haskell "haskell"))))
 '(org-level-color-stars-only nil)
 '(org-outline-path-complete-in-steps t)
 '(org-pretty-entities t)
 '(org-special-ctrl-o t)
 '(org-src-lang-modes
   (quote
    (("ocaml" . tuareg)
     ("elisp" . emacs-lisp)
     ("ditaa" . artist)
     ("asymptote" . asy)
     ("dot" . graphviz-dot)
     ("sqlite" . sql)
     ("calc" . fundamental)
     ("C" . c)
     ("cpp" . c++)
     ("C++" . c++)
     ("screen" . shell-script)
     ("shell" . sh)
     ("bash" . sh))))
 '(org-startup-with-inline-images t)
 '(org-startup-with-latex-preview t)
 '(org-structure-template-alist
   (quote
    (("s" "#+BEGIN_SRC ?

#+END_SRC")
     ("e" "#+BEGIN_EXAMPLE
?
#+END_EXAMPLE")
     ("q" "#+BEGIN_QUOTE
?
#+END_QUOTE")
     ("v" "#+BEGIN_VERSE
?
#+END_VERSE")
     ("V" "#+BEGIN_VERBATIM
?
#+END_VERBATIM")
     ("c" "#+BEGIN_CENTER
?
#+END_CENTER")
     ("C" "#+BEGIN_COMMENT
?
#+END_COMMENT")
     ("l" "#+BEGIN_EXPORT latex
?
#+END_EXPORT")
     ("L" "#+LaTeX: ")
     ("h" "#+BEGIN_EXPORT html
?
#+END_EXPORT")
     ("H" "#+HTML: ")
     ("a" "#+BEGIN_EXPORT ascii
?
#+END_EXPORT")
     ("A" "#+ASCII: ")
     ("i" "#+INDEX: ?")
     ("I" "#+INCLUDE: %file ?")
     ("hs" "#+BEGIN_SRC haskell
?
#+END_SRC")
     ("p" "#+BEGIN_SRC python
?
#+END_SRC")
     ("vdm" "#+BEGIN_EXPORT latex
\\begin{vdmpp}
?
\\end{vdmpp}
#+END_EXPORT"))))
 '(orgtbl-optimized nil)
 '(package-selected-packages
   (quote
    (plantuml-mode graphviz-dot-mode yasnippet-snippets company-reftex latex-math-preview latex-pretty-symbols latex-preview-pane esh-autosuggest ox-ioslide dash dashboard hindent hasky-stack ghc-imported-from dante intero shm helm-ghc helm-dash neotree scion poet-theme ob-ipython pydoc google-this gh-md markdown-mode+ markdown-toc markdownfmt ledger-mode flycheck-clojure elein zenburn-theme yari yaml-mode yagist whole-line-or-region whitespace-cleanup-mode wgrep vc-darcs unfill undo-tree tidy textile-mode tangotango-theme tagedit switch-window sql-indent session scss-mode scratch sass-mode ruby-hash-syntax robe rinari redshank rainbow-mode rainbow-delimiters project-local-variables plan9-theme pip-requirements paredit-everywhere page-break-lines org-trello org-tree-slide org-pomodoro org-pdfview org-onenote org-linkany org-fstree org-edit-latex org-download org-brain org-attach-screenshot mwe-log-commands multiple-cursors move-dup moody mmm-mode minimap material-theme magithub magit-gh-pulls lively json-mode js-comint ipretty ido-ubiquitous ibuffer-vc hl-sexp hippie-expand-slime highlight-symbol highlight-quoted highlight-escape-sequences helm-swoop helm-recoll helm-gtags helm-git-grep helm-git helm-fuzzy-find helm-directory helm-dictionary helm-company helm-anything hayoo guide-key google-c-style goldendict gitignore-mode github-clone github-browse-file gitconfig-mode git-timemachine git-messenger git-blame ghci-completion fullframe flymake-yaml flymake-lua flymake-json flycheck-ycmd flycheck-package flycheck-hdevtools flycheck-haskell flycheck-elm fill-column-indicator eziam-theme expand-region expand-line exec-path-from-shell erlang elpy elm-mode elisp-slime-nav dropdown-list dired-sort dired-rainbow dired-imenu dired-explorer dired+ diminish diff-hl default-text-scale dash-at-point darcsum csv-nav csv-mode csv css-eldoc crontab-mode cpputils-cmake counsel-projectile company-ycmd company-ycm company-web company-statistics company-shell company-math company-lua company-ghc company-c-headers company-auctex color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme coffee-mode cmake-project cmake-mode cmake-ide cljsbuild-mode clang-format cl-lib-highlight caroline-theme bug-reference-github browse-kill-ring auto-compile aurora-theme auctex-latexmk anzu anti-zenburn-theme aggressive-indent adjust-parens ack ace-popup-menu ace-pinyin ace-link ace-jump-zap ace-jump-buffer ac-slime ac-math ac-js2 ac-inf-ruby ac-helm ac-haskell-process ac-clang ac-cider)))
 '(pdf-latex-command "xelatex")
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SimSun" :foundry "ZYEC" :slant normal :weight normal :height 143 :width normal))))
 '(bookmark-menu-bookmark ((t (:box (:line-width 2 :color "grey75" :style released-button) :weight bold))))
 '(haskell-keyword-face ((t (:inherit font-lock-keyword-face :box (:line-width 2 :color "grey75" :style released-button)))))
 '(vc-state-base ((t nil))))
