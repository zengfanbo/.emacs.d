
(add-to-list 'load-path "/usr/share/emacs24/site-lisp/")
(require 'doxymacs)
(add-hook 'c-mode-hook 'doxymacs-font-lock)

(provide 'init-doxymacs-mode)
