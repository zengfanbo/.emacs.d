(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
(defvar ac-c-sources
  '(ac-source-c-keywords))


(ac-define-dictionary-source  ac-source-c-keywords
 '("and" "bool" "do" "export" "goto" "return"
   "struct" "try" "xor" "break" "const" "double" "extern"
   "if" "short" "switch" "typedef" "xor_eq" "asm"
   "case" "false" "inline" "not" 
   "signed" "typeid" "void" "auto" "catch" "continue" "else" 
   "float" "int" "not_eq" "public" "sizeof" "this" "typename" "volatile"
   "bitand" "char" "default" "enum" "for" "long" "operator" "register"
   "static" "union" "wchar_t" "bitor" "delete" "explicit"
   "mutable" "or" "true" "unsigned" "while"))

(defun ac-c-setup ()
  (setq ac-sources (append ac-c-sources ac-sources)))

(defun ac-c-init ()
  (add-hook 'c-mode-hook 'ac-c-setup))

(provide 'auto-complete-c)
