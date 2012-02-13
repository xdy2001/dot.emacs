;;============================load paths===================================
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/3rd"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal/themes"))
;;=========================================================================

(mapc 'load 
      (directory-files 
       (expand-file-name "~/.emacs.d/personal") t "\\.el$"))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
;;(when
;;    (load
;;     (expand-file-name "~/.emacs.d/elpa/package.el"))
;;  (package-initialize))
