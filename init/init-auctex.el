(require 'reftex)
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(mapc (lambda (mode)
        (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode 
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t
                  TeX-show-compilation t)
            (TeX-global-PDF-mode t)
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)))

(setq TeX-view-program-selection '((output-pdf "Evince")))

;;; set the reftex

(add-hook 'latex-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq reftex-enable-partial-scans t)
(setq reftex-save-parse-info t)
(setq reftex-use-multiple-selection-buffers t)
(autoload 'reftex-mode "reftex" "RefTex Minor Mode" t)
(autoload 'turn-on-reftex "reftex-site" "RefTex Minor Mode" t)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t)


;;;; set the toc position
(setq reftex-toc-split-windows-horizontally t)
(setq reftex-toc-split-windows-fraction 0.2)
(provide 'init-auctex)
