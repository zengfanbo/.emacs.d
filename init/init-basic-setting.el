(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq visible-bell t)
(mouse-wheel-mode t)
;;;(set-default-font "Courier-14")
;;;(transient-mark-mode t)
(global-linum-mode t)
(setq inhibit-startup-message t)
(show-paren-mode t)
(setq show-paren-sytle 'parentheses)
;;
(global-set-key (kbd "C-c m") 'shell-command)
(global-set-key (kbd "C-c f") 'goto-line)
;;
(set-default-font "Courier New-12")
(menu-bar-mode t)
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
(defun my-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)

(provide 'init-basic-setting)
