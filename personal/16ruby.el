(require 'ruby-mode)
(require 'ruby-end)

(add-hook 'ruby-mode-hook
          '(lambda ()
             (my-ruby-mode-key-bind)))

(defun my-ruby-mode-key-bind ()
  (interactive)
  (local-unset-key (kbd "C-c C-c")))
