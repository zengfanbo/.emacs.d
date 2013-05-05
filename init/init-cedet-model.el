;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; the file used to active the cedet
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/init/cedet-1.1/common/cedet.el")
(semantic-load-enable-excessive-code-helpers)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make the function unfold and fold
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-cedet-hook()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key (kbd "C-c 1") 'semantic-ia-complete-symbol-menu)
   (local-set-key (kbd "C-c d") 'semantic-ia-fast-jump)
  (local-set-key (kbd "C-c r") 'semantic-symref-symbol)
  (local-set-key (kbd "C-c R")  'semantic-symref))
(add-hook 'c-mode-common-hook 'my-cedet-hook)
 

(defun my-c-mode-cedet-hook ()
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)




