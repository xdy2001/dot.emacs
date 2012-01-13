
;;; emacs site-lisp configuration for pymacs

(add-to-list 'load-path "~/.site-lisp-gentoo/pymacs")

(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
