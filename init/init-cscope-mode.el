(add-to-list 'load-path "~/.emacs.d/init/cscope")
(setq exec-path (cons "/usr/bin/" exec-path))
(require 'xcscope)
(add-hook 'c-mode-common-hook
	  '(lambda()
	     (require 'xcscope)))
(setq cscope-do-not-update-database t)




(define-key global-map [(control f3)]  'cscope-set-initial-directory)
(define-key global-map [(control f4)]  'cscope-unset-initial-directory)
(define-key global-map [(control f5)]  'cscope-find-this-symbol)
(define-key global-map [(control f6)]  'cscope-find-global-definition)
(define-key global-map [(control f7)]  'cscope-find-global-definition-no-prompting)
(define-key global-map [(control f8)]  'cscope-pop-mark)
(define-key global-map [(control f9)]  'cscope-next-symbol)
(define-key global-map [(control f10)] 'cscope-next-file)
(define-key global-map [(control f11)] 'cscope-prev-symbol)
(define-key global-map [(control f12)] 'cscope-prev-file)
(provide 'init-cscope-mode)
