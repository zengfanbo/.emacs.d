#########################################################################
### the gdb setting configure here
###  gdb configure include list here
###  the new buffer
###  gud-break
###  gud-remove
###  gud-go f5
###  gud-next f7
###  gud-step f8
###  gud-finish
###  gud-until
###  gud-cont

###  gud-many-windows
###  gud-watch
###  gud-tooltip-mode on or off
###  gdb-use-separte-io-buffer

#########################################################################


(add-hook 'gdb-mode-hook '(lambda()
			    (define-key c-mode-base-map [(f5)] 'gud-go)
			    (define-key c-mode-base-map [(f7)] 'gud-step)
			    (define-key c-mode-base-map [(f8)] 'gud-next)
			    ))

