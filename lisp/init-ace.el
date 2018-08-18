;;; init-ace.el --- summery
;;; Commentary:

(add-to-list 'load-path "~/.emacs.d/elpa/linum-ace")
(require 'ace-jump-mode)

(require 'linum-ace)
(setq linum-format 'linum-ace)
;; (global-set-key [(meta ?.)]  'linum-ace-jump)
(global-set-key [(meta ?.)]  'ace-jump-mode)

;; (global-set-key (kbd "C-;") 'ace-jump-mode)
;; (global-set-key (kbd "C-:") 'ace-jump-word-mode)

(setq ace-jump-mode-case-fold t)
(setq ace-jump-mode-scope 'window) ; limit scope to current buffer(window)
(setq ace-jump-mode-submode-list
      '(ace-jump-word-mode ; C-c SPC
        ace-jump-line-mode ; C-u C-c SPC
        ace-jump-char-mode)) ; C-u C-u C-c SPC
;; you can select the key you prefer to
(global-set-key (kbd "M-l") 'ace-jump-line-mode)

(global-set-key "\C-cn" 'linum-mode)
(global-set-key "\C-cf" 'next-buffer)
(global-set-key "\C-cb" 'previous-buffer)

;; (local-set-key (kbd "<f7>") 'hs-toggle-hiding)
(global-set-key (kbd "<f7>") 'hs-toggle-hiding)
;; (global-set-key (kbd "<f7>") 'sanityinc/split-window)

(provide 'init-ace)
;;; init-ace.el ends here
