(add-to-list 'load-path "~/.emacs.d/init")
(require 'package)
;;(add-to-list 'package-archives '("marmalade" ."http://marmalade-repo.org/packages/"))

(package-initialize)

(require 'tabbar-autoloads)
(require 'init-color-theme)

(provide 'init-marmalade)
