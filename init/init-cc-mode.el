



(setq default-tab-width 4)
(global-set-key [(f7)] 'compile)


(add-hook 'c-mode-hook '(lambda ()
                          (c-set-style "stroustrup")
)
)
(provide 'init-cc-mode)
