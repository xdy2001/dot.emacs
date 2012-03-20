(require 'ruby-mode)
(require 'ruby-end)

(add-to-list 'auto-mode-alist 
             '(("Rakefile" . ruby-mode)
               ("Gemfile" . ruby-mode)
               ("\\.ru$" . ruby-mode)))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (my-ruby-mode-key-bind)))

(defun my-ruby-mode-key-bind ()
  (interactive)
  (local-unset-key (kbd "C-c C-c")))

(add-to-list 'load-path "~/.emacs.d/3rd/ruby-debug-extra")
(setq rdebug-populate-common-keys-function 'rdebug-populate-common-keys-eclipse)
(require 'rdebug)
