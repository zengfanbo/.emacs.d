(add-to-list 'load-path "~/.emacs.d/init")
(require 'package)
(setq  package-archives '(
				 ("gnu" . "http://elpa.gnu.org/packages/")
				 ("marmalade" . "http://marmalade-repo.org/packages/")
				 ("melpa" . "http://melpa.milkbox.net/packages/"))
)

(package-initialize)

;;(require 'tabbar-autoloads)
;;(require 'init-color-theme)

(provide 'init-marmalade)
