(require 'smartparens-config)
(smartparens-global-mode 1)

(sp-local-pair 'c++-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(sp-local-pair 'c-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(sp-local-pair 'js2-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(sp-local-pair 'css-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(sp-local-pair 'php-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(defun custom:create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

;; No smartparens in REPL
(add-to-list 'sp-ignore-modes-list 'slime-repl-mode)

(provide 'setup-smartparens)
