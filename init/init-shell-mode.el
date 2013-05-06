
(setq shell-file-name "/bin/bash")
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)
(global-set-key (kbd "C-c z") 'shell)
(global-set-key (kbd "<f10>") 'rename-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; back the prefix mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun kill-shell-buffer(process event)
  " the one acturally kill shell buffer when Exit"
  (kill-buffer (process-buffer process))
)
(defun kill-shell-buffer-after-exit()
  "kill shell buffer when exit."
  (set-process-sentinel (get-buffer-process (current-buffer))
                        #'kill-shell-buffer)
)

(add-hook 'shell-mode-hook 'kill-shell-buffer-after-exit t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; undo back prefix mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (fboundp 'winner-mode)
  (winner-mode)
  (windmove-default-keybindings))


(defun rename-buffer-in-ssh-login (cmd)
"Rename buffer to the destination hostname in ssh login"
(if (string-match "ssh [-_a-z0-9A-Z]+@[-_a-z0-9A-Z.]+[ ]*[^-_a-z0-9-A-Z]*$" cmd)
(let (( host (nth 2 (split-string cmd "[ @\n]" t) )))
(rename-buffer (concat "*" host)) ;
(add-to-list 'shell-buffer-name-list (concat "*" host));
(message "%s" shell-buffer-name-list)
)
)
)

;;(add-hook 'comint-input-filter-functions 'rename-buffer-in-ssh-login)


(defun split-window-4()
  "split windows into 4 sub-window"
(interactive)
(if (= 1 (length (window-list)))
    (progn (split-window-vertically)
           (split-window-horizontally)
           (other-window 2)
           (split-window-horizontally)
           )
)
)
(global-set-key (kbd "C-x 4 4") 'split-window-4)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; windows v roll 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun split-window-3()
  "split windows into 3 pieces"
  (interactive)
  (if (= 1 (length (window-list)))
      (progn (split-window-vertically)
             (other-window 2)
             (split-window-horizontally)
)
)
)

(global-set-key (kbd "C-x 4 3") 'split-window-3)
(defun split-window-v-3()
  "roll windows vertically"
  (interactive)
  (select-window (get-largest-window))
  (if (= 3 (length (window-list)))
      (let ((winList (window-list)))
        (let ((1stBuf (window-buffer (car winList)))
              (2stBuf (window-buffer (car (cdr winList))))
              (3stBuf (window-buffer (car (cdr (cdr winList))))))
          (message "%s %s %s" 1stBuf 2stBuf 3stBuf)
          
          (delete-other-windows)
          (split-window-horizontally)
          (set-window-buffer nil 1stBuf)
          (other-window 1)
          (set-window-buffer nil 2stBuf)
          (split-window-vertically)
          (set-window-buffer (next-window) 3stBuf)
          (select-window (get-largest-window))
          ))))

 (defun change-split-type-3 () 
  "Change 3 window style from horizontal to vertical and vice-versa"
  (interactive) 

  (select-window (get-largest-window)) 
  (if (= 3 (length (window-list))) 
      (let ((winList (window-list))) 
            (let ((1stBuf (window-buffer (car winList))) 
                  (2ndBuf (window-buffer (car (cdr winList)))) 
                  (3rdBuf (window-buffer (car (cdr (cdr winList))))) 

                  (split-3 
                   (lambda(1stBuf 2ndBuf 3rdBuf split-1 split-2) 
                     "change 3 window from horizontal to vertical and vice-versa"
                     (message "%s %s %s" 1stBuf 2ndBuf 3rdBuf) 

                     (delete-other-windows) 
                     (funcall split-1) 
                     (set-window-buffer nil 2ndBuf) 
                     (funcall split-2) 
                     (set-window-buffer (next-window) 3rdBuf) 
                     (other-window 2) 
                     (set-window-buffer nil 1stBuf)))         

                  (split-type-1 nil) 
                  (split-type-2 nil) 
                  ) 
              (if (= (window-width) (frame-width)) 
                  (setq split-type-1 'split-window-horizontally 
                        split-type-2 'split-window-vertically) 
                (setq split-type-1 'split-window-vertically  
		       split-type-2 'split-window-horizontally)) 
              (funcall split-3 1stBuf 2ndBuf 3rdBuf split-type-1 split-type-2) 

 ))))

(global-set-key (kbd "C-x 4 c") 'change-split-type-3)


  (defun roll-v-3 (&optional arg) 
    "Rolling 3 window buffers (anti-)clockwise"
    (interactive "P") 
    (select-window (get-largest-window)) 
    (if (= 3 (length (window-list))) 
        (let ((winList (window-list))) 
          (let ((1stWin (car winList)) 
                (2ndWin (car (cdr winList))) 
                (3rdWin (car (last winList)))) 
            (let ((1stBuf (window-buffer 1stWin)) 
                  (2ndBuf (window-buffer 2ndWin)) 
                  (3rdBuf (window-buffer 3rdWin))) 
              (if arg (progn                                
 ; anti-clockwise
                        (set-window-buffer 1stWin 3rdBuf) 
                        (set-window-buffer 2ndWin 1stBuf) 
                        (set-window-buffer 3rdWin 2ndBuf)) 
                (progn                                      ; clockwise
                  (set-window-buffer 1stWin 2ndBuf) 
                  (set-window-buffer 2ndWin 3rdBuf) 
                  (set-window-buffer 3rdWin 1stBuf)) 
                ))))))

(global-set-key (kbd "C-x 4 r") 'roll-v-3)
(provide 'init-shell-mode)
