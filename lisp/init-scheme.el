;;(setq scheme-program-name  "/usr/bin/mit-scheme")
(setq racket-racket-program "/usr/bin/racket")
(setq racket-raco-program "/usr/bin/raco")
(setq scheme-program-name "scm")

(add-hook 'racket-mode-hook
          (lambda ()
            (paredit-mode 1)
            (setq tab-always-indent 'complete) ;; 使用tab自动补全
            (define-key racket-mode-map (kbd "C-c C-c") 'racket-run)
            ))

;; bypass the interactive question and start the default interpreter
(defun scheme-proc ()
  "Return the current Scheme process, starting one if necessary."
  (unless (and scheme-buffer
               (get-buffer scheme-buffer)
               (comint-check-proc scheme-buffer))
    (save-window-excursion
      (run-scheme scheme-program-name)))
  (or (scheme-get-process)
      (error "No current process. See variable `scheme-buffer'")))


(defun scheme-split-window ()
  (cond
   ((= 1 (count-windows))
    (delete-other-windows)
    (split-window-vertically (floor (* 0.68 (window-height))))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window 1))
   ((not (find "*scheme*"
               (mapcar (lambda (w) (buffer-name (window-buffer w)))
                       (window-list))
               :test 'equal))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window -1))))


(defun scheme-send-last-sexp-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-last-sexp))


(defun scheme-send-definition-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-definition))

;;(add-hook 'scheme-mode-hook
;;          (lambda ()
;;            (paredit-mode 1)
;;            (define-key scheme-mode-map (kbd "C-cC-c") 'scheme-send-last-sexp-split-window)
;;            ))

(provide 'init-scheme)