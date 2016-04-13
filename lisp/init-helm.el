(require 'helm)
(require 'helm-config)
(require 'helm-swoop)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;;(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "C-x b")   'helm-mini)
(global-set-key (kbd "C-x c")   'helm-apropos)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-c h")   'smex)
(global-set-key (kbd "C-c o")   'helm-occur)
(global-set-key (kbd "C-c i")   'helm-semantic-or-imenu)
(global-set-key (kbd "C-c /")   'helm-find)
(global-set-key (kbd "C-c v")   'ac-complete-with-helm)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c r")   'helm-regexp)
(global-set-key (kbd "C-c C-t") 'helm-top)
(global-set-key (kbd "C-c x")   'helm-colors)
(global-set-key (kbd "C-c m")   'helm-man-woman)
(global-set-key (kbd "C-c w")   'ace-window)

(global-set-key (kbd "M-x")     'helm-M-x)
;(global-set-key (kbd "C-c C-i") 'hippie-expand)

;; config for helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; When doing evil-search, hand the word over to helm-swoop
;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)
;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)
;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)
;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)
;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)
;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color nil)
;; ;; Go to the opposite side of line from the end or beginning of line
(setq helm-swoop-move-to-line-cycle t)
;; Optional face for line numbers
;; Face name is `helm-swoop-line-number-face`
(setq helm-swoop-use-line-number-face t)

;; use search query at the cursor  (default)
(setq helm-swoop-pre-input-function
      (lambda () (thing-at-point 'symbol)))
;; disable pre-input
;(setq helm-swoop-pre-input-function
;      (lambda () ""))
;; match only for symbol
;(setq helm-swoop-pre-input-function
;(lambda () (format "\\_<%s\\_> " (thing-at-point 'symbol))))

;; Config 4 helm-gtagsg
(require 'helm-gtags)
;(setq helm-gtags-prefix-key "\C-c g")
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-suggested-key-mapping t
 )
;; Enable helm-gtags-mode in Dired so you can jump to any tag
;; when navigate project tree with Dired
(add-hook 'dired-mode-hook 'helm-gtags-mode)

;; Enable helm-gtags-mode in languages that GNU Global supports
(add-hook 'c-mode-common-hook
          '(lambda()
             (helm-gtags-mode 1)
             (gtags-make-complete-list)
             ))
(add-hook 'java-mode-hook 'helm-gtags-mode)

;; key bindings
(define-key helm-gtags-mode-map (kbd "C-c g .") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "C-c g ,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c g n") 'helm-gtags-next-history)
(define-key helm-gtags-mode-map (kbd "C-c g f") 'helm-gtags-find-tag)
(define-key helm-gtags-mode-map (kbd "C-c g p") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c g s") 'helm-gtags-select-tag)
(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-parse-file)
(define-key helm-gtags-mode-map (kbd "C-c g b") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-c g c") 'helm-gtags-create-tags)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-M-x-fuzzy-match                  t ; optional fuzzy matching for helm-M-x
      helm-imenu-fuzzy-match                t
      helm-apropos-fuzzy-match              t
      helm-lisp-fuzzy-completion            t
      helm-ff-file-name-history-use-recentf t)
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

;; Just for Windows
(when (executable-find "ack-grep")
  (setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f"))

(helm-mode 1)

(require 'helm-eshell)
(add-hook 'eshell-mode-hook
          '(lambda ()
             (define-key eshell-mode-map (kbd "C-c C-l")  'helm-eshell-history)))
(define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)
(define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)

(provide 'init-helm)
