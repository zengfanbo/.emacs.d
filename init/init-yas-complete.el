
(add-to-list 'load-path "~/.emacs.d/init/yasnippet/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/init/yasnippet/snippets")
(provide 'init-yas-complete)
