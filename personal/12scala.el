(add-to-list 'load-path (expand-file-name "~/.emacs.d/3rd/scala"))
(require `scala-mode-auto)

(add-hook 'scala-mode-hook
          '(lambda ()
             (my-scala-mode-key-bind)))

(defun my-scala-mode-key-bind ()
  (interactive)
  (local-unset-key (kbd "C-c C-c")))
