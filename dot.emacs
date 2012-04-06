;============================load paths===================================
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/3rd"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal/themes"))
;;=========================================================================

(mapc 'load 
      (directory-files 
       (expand-file-name "~/.emacs.d/personal") t "\\.el$"))
