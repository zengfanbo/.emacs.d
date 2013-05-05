
(add-to-list 'load-path "~/.emacs.d/")
(load "~/.emacs.d/cedet/common/cedet" nil t)

(setq semanticdb-default-save-directory "~/.semanticdb/backup")
(semantic-load-enable-code-helpers)

(global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)
(setq semanticdb-project-roots
      (list (expand-file-name "/")))

(setq semanticdb-default-save-directory "~/.semanticdb/")
(provide 'init-cedet)


