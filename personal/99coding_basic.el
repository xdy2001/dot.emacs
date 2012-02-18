;; Execute by pressing F5
(global-set-key [f5] 'my-run)
(defun my-run (&optional arg)
  (interactive "P")
  (let ((file (find-proper-file '(".run"))))
    (when arg
      (with-temp-file file
        (insert (read-from-minibuffer "Shell Command: " nil nil nil 'shell-command-history))))
    (save-some-buffers)
    (if (not (file-readable-p file))
        (message "no .run file found.")
      (let* ((default-directory (file-name-directory file))
             (buffer (get-buffer-create (concat default-directory "-myrun"))))
        (with-current-buffer buffer
          (erase-buffer)) (start-process-shell-command
         "myrun"
         buffer
         shell-file-name
         ".run")
        (if (one-window-p)
            (split-window))
        (set-window-buffer (next-window) buffer)
        ))))
(defun find-proper-file ( candidate-file-list &optional root-regexp)
  "search one of candidate file in the candidate-file-list. root-regexp is used
to test whether the root directory is reached."
  (catch 'found
    (let ((dir (file-name-as-directory (expand-file-name default-directory))))
      (while (not (string-match (or root-regexp
                                    (mapconcat
                                     'identity
                                     '("\\`[a-zA-Z]:/\\'"
                                       "\\`/\\'"
                                       "\\`/[^/:]+:/\\'")
                                     "\\|"))
                                dir))
        (mapc (lambda (file)
                (if (file-exists-p (concat dir file))
                    (throw 'found (concat dir file))))
              candidate-file-list)
        (setq dir (file-name-as-directory
                   (expand-file-name
                    (concat  dir "..")))))
      (concat (file-name-as-directory (expand-file-name default-directory)) (car candidate-file-list)))))

;; Use '%' to match parentheses
(global-set-key (kbd "C-%") 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise (not now) insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
;	(t (self-insert-command (or arg 1)))))
    ))

;; Always use "C-c C-c" to make region (un)comment
(global-set-key (kbd "C-c C-c") 'comment-dwim)

;; Load cedet
;; (load-file "~/.site-lisp/cedet-1.0pre3/common/cedet.el")
;; (require 'semantic-ia)
;; (semantic-load-enable-excessive-code-helpers)
;; ;; Semantic project root
;; (setq semanticdb-project-roots
;;       (list "/home/hannibal/prj/devsite/mobile/j2me/j2me_cldc_1.0.4/"
;;             "/home/hannibal/prj/devsite/the_final/u-boot-1.1.4/"))

;; Load ecb
;(require 'ecb)
;(setq ecb-show-sources-in-directories-buffer t)
;(setq ecb-show-sources-in-directories-buffer '("hannibal"))
;(setq ecb-layout-name "hannibal")

;; I got this package from "http://www.bloomington.in.us/~brutt/msf-abbrev.html"
;; (require 'msf-abbrev)
;; (setq msf-abbrev-verbose t) ;; optional
;; (setq msf-abbrev-root (expand-file-name "~/.emacs.d/3rd/mode-abbrevs"))
;; (global-set-key (kbd "M-p") 'fld-prev)
;; (global-set-key (kbd "M-n") 'fld-next)
;; (msf-abbrev-load)
;(msf-abbrev-load-tree "")
;; ensure abbrev mode is always on
;; (setq-default abbrev-mode t)
;; Do not save abbrevs file automatically
;; (setq save-abbrevs nil)

;; Auto insert
(require 'autoinsert)
(auto-insert-mode 1)
(setq auto-insert t)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory (expand-file-name "~/.emacs.d/personal/templates/"))
(define-auto-insert "\\.hh\\'" "template.hh")
(define-auto-insert "\\.cc\\'" "template.cc")

;; Autopair
(require 'autopair)
(autopair-global-mode)

;; Yasnippet to replace msf-abbrev which is rather dead
(require 'yasnippet)

;; Auto complete
(add-to-list 'load-path "~/.emacs.d/3rd/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/3rd/auto-complete-1.3.1/ac-dict")
(ac-config-default)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
