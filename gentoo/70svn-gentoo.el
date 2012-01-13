;;; svn site-lisp configuration

(setq load-path (cons "/usr/share/emacs/site-lisp/subversion" load-path))
(add-to-list 'vc-handled-backends 'SVN)
(require 'psvn)
