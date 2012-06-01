(add-to-list 'load-path "~/.emacs.d/3rd/feature-mode")
(setq feature-default-language "en")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
