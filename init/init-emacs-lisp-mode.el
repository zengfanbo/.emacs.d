;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; the my-emacs-lisp-common-hook
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-emacs-lisp-common-hook()
  (linum-mode t)
)

(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-common-hook)
(provide  'init-emacs-lisp-mode)