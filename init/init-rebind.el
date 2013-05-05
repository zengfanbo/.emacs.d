

;; rebind some key and replace some key
(global-set-key (kbd "\C-c\C-k") 'kill-region)
(global-set-key (kbd "\C-w") nil)
;;(global-set-key (kbd "\C-w") 'backword-kill-word)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key (kbd "C-\\") nil)
(global-set-key (kbd "\C-x\C-m") 'execute-extended-command)
(global-set-key (kbd "\C-c\C-m") 'execute-extended-command)

(global-set-key (kbd "\C-h") nil)
(global-set-key (kbd "\M-?") 'help-command)
(global-set-key (kbd "\C-h") 'delete-backward-char)


;; reachieve the previous windows and after windows

(defun other-window-backward (&optional n)
  "select the previous window."
  (interactive "P")
  (other-window (- (prefix-numeric-value n)))
)
(global-set-key (kbd "\C-c\C-p") 'other-window-backward)
(global-set-key (kbd "\C-c\C-n") 'other-window)
(defalias 'qrr 'query-replace-regexp)

(provide 'init-rebind)
