;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; autocomplete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/init/")
(require 'init-auto-complete)
(require 'init-yas-complete)
(require 'init-shell-mode)
(require 'init-marmalade)
(require 'init-basic-setting)
(require 'init-auto-complete)
(require 'init-rebind)
(add-hook 'c-mode-hook 
          '(lambda ()
             (c-set-style "k&r"))
)
