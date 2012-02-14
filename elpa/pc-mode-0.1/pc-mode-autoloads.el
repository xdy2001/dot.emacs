;;; pc-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (pc-mode pc-file-patterns) "pc-mode" "pc-mode.el"
;;;;;;  (20281 54641))
;;; Generated autoloads from pc-mode.el

(defvar pc-file-patterns (list "\\.pc\\'" "\\.ipc\\'") "\
*List of file patterns for which to automatically invoke pc-mode.")

(custom-autoload 'pc-file-patterns "pc-mode" t)

(autoload 'pc-mode "pc-mode" "\
Major mode for editing PC/IPC code.

\\{pc-mode-map}

\(fn)" t nil)

(let ((pc-file-patterns-temp pc-file-patterns)) (while pc-file-patterns-temp (add-to-list 'auto-mode-alist (cons (car pc-file-patterns-temp) 'pc-mode)) (setq pc-file-patterns-temp (cdr pc-file-patterns-temp))))

;;;***

;;;### (autoloads nil nil ("pc-mode-pkg.el") (20281 54641 751813))

;;;***

(provide 'pc-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pc-mode-autoloads.el ends here
