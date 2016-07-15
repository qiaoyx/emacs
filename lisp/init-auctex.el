(setq load-path (cons "/usr/local/share/emacs/site-lisp" load-path))

(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; LaTex模式下，不打开自动折行
(turn-off-auto-fill)
(auto-complete-mode t)
;;(LaTeX-math-mode t)
(outline-minor-mode t)

;; 编译Tex相关设定
(setq TeX-clean-confirm nil)
(setq TeX-save-query nil)

;; 按\后光标跳到mini-bufer中输入命令
;;(setq TeX-electric-escape t)
;; 重新设定pdf viewer为evince
(setq TeX-view-program-list '(("Evince" "evince %o")
                              ("Okular" "okular --unique %o")
                              ("Firefox" "firefox %o")))
(setq TeX-view-program-selection '((output-pdf "Evince")))
;; 设置编译引擎为XeTeX
(setq TeX-global-PDF-mode t
      TeX-engine 'xetex
      TeX-show-compilation nil) ;; 不在当前窗口中显示编译信息
;; 使用XeLaTeX作为默认程序来编译LaTeX
;;(add-to-list 'TeX-command-list
;;             '("XeLaTeX" "%'xelatex%(mode)%' %t"
;;               TeX-run-TeX nil t))
;;(setq TeX-command-default "XeLaTeX")

;; C-c C-c TeX-command-master： 编译
;; C-c C-e LaTeX-environment: 插入环境，默认section
;; C-c C-f TeX-font: 字体设置快捷键前缀
;; C-c C-j LaTeX-insert-item: 插入item
;; C-c C-k TeX-kill-job: 取消编译
;; C-c C-v TeX-view: 打开pdf viewer
;; C-c ;   Tex-comment-or-uncomment-region: 注释

(TeX-fold-mode t)
;; C-c C-o C-b: 折叠
;; 配置可被折叠的环境
(setq TeX-fold-env-spec-list
      (quote (("[figure]" ("figure"))
              ("[table]" ("table"))
              ("[itemize]" ("itemize"))
              ("[overpic]" ("overpic")))))

(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-enable-partial-scans t)
(setq reftex-save-parse-info t)
(setq reftex-use-multiple-selection-buffers t)
(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t)

;; C-c = 生成章节目录

;; toc-buffer在左侧
(setq reftex-toc-split-windows-horizontally t)
;; toc-buffer使用整个frame的比例
(setq reftex-toc-split-windows-fraction 0.2)

;; 添加索引菜单
;;(imenu-add-menubar-index)

(setq org-export-latex-listings t)
(setq org-export-collect-listings t)

(provide 'init-auctex)
