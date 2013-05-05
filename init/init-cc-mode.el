


(global-set-key (kbd "C-;") 'qiang-comment-dwim-line)
(add-hook 'c++-mode-hook 'my-c++-common-hook)
(add-hook 'c-mode-hook 'my-c++-common-hook)
(setq default-tab-width 4)
(global-set-key [(f7)] 'compile)
(setq c-set-style 'stroustrup)
(provide 'init-cc-mode)
