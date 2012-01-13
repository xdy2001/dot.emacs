(add-to-list 'load-path (expand-file-name "~/.emacs.d/3rd/haskell"))
(require `haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)