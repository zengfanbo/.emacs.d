
(add-to-list 'load-path "/usr/local/share/site-lisp/")
(require 'tramp)

(add-to-list 'Info-default-directory-list "~/emacs/tramp/info/")
(setq tramp-default-method "ssh")
(setq tramp-default-user "root")
(provide 'init-tramp-mode)
