;; ============================= customize ============================
(custom-set-variables
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "stroustrup") (c++-mode . "stroustrup") (java-mode . "java") (other . "stroustrup"))))
 '(case-fold-search t)
 '(completion-on-separator-character t)
 '(global-font-lock-mode t nil (font-lock))
 '(load-home-init-file t t)
 '(transient-mark-mode t)
 '(mac-command-modifier 'meta))
;;=========================================================================

(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ("gnu" . "http://elpa.gnu.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

;; Set font
(if (not (eq system-type 'darwin))
    (progn
      (set-default-font "DejaVu Sans Mono-10")
      (set-fontset-font (frame-parameter nil 'font)
                        'han '("WenQuanYi Zen Hei Mono" . "unicode-bmp"))))

;; Emacs tabbar
(if (display-graphic-p)
    (progn
      (tabbar-mode)
      (global-set-key (kbd "<C-M-up>") 'tabbar-backward-group)
      (global-set-key (kbd "<C-M-down>") 'tabbar-forward-group)
      (global-set-key (kbd "<C-M-left>") 'tabbar-backward)
      (global-set-key (kbd "<C-M-right>") 'tabbar-forward)))

;; Move to window easily
(windmove-default-keybindings)

;; Set frame size
(set-frame-height (selected-frame) 40)
(set-frame-width (selected-frame) 120)

;; Use ibuffer as default buffer list processor
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Load session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; key mapping for mac
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<delete>") 'delete-char)

;; Load ido
(require 'ido)
(ido-mode t)

;; Use a single buffer for dired mode
(require 'dired-single)
(defun my-dired-init ()
  "Bunch of stuff to run for dired, either immediately or when it's
        loaded."
  ;; <add other stuff here>
  (define-key dired-mode-map [return] 'dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
    (function
     (lambda nil (interactive) (dired-single-buffer "..")))))

;; if dired's already loaded, then the keymap will be bound
(if (boundp 'dired-mode-map)
    ;; we're good to go; just add our bindings
    (my-dired-init)
  ;; it's not loaded yet, so add our bindings to the load-hook
  (add-hook 'dired-load-hook 'my-dired-init))

;; Highlight current editing line
;; (require 'hl-line)
;; (global-hl-line-mode 1)

;; Browse kill ring
(require 'browse-kill-ring)
(global-set-key (kbd "C-c k") 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;; Jump between two points
(global-set-key (kbd "C-.") 'ska-point-to-register)
(global-set-key (kbd "C-,") 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
;;   (setq zmacs-region-stays t)
  (point-to-register 8))
(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
;;   (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
    (jump-to-register 8)
    (set-register 8 tmp)))

(require 'iy-go-to-char)
(global-set-key (kbd "C-c f") 'iy-go-to-char)
(global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c ;") 'iy-go-to-char-continue)
(global-set-key (kbd "C-c ,") 'iy-go-to-char-continue-backward)

;; Setup UTF-8 environment
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment 'UTF-8)
(setq locale-coding-system 'utf-8)
(setq default-input-method 'MacOSX)

;; Unset Ctrl+Space
;; (global-unset-key (kbd "M-SPC"))

(defun my-newline ()
  "New line after current line."
  (interactive)
  (move-end-of-line 1)
  (newline)
  )
(global-set-key (kbd "C-o") 'my-newline)

(defun my-newline-pre ()
  "New line before current line."
  (interactive)
  (move-beginning-of-line 1)
  (newline)
  (forward-line -1)
  )
(global-set-key (kbd "C-S-o") 'my-newline-pre)

;; Hilight
(global-font-lock-mode t)

;; No beep, visible bell instead
(setq visible-bell t)

;; No startup message
(setq inhibit-startup-message t)

;; We need column number too
(setq column-number-mode t)

;; Yank at cursor point
(setq mouse-yank-at-point t)

;; No indent by tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 120 4))

;; For Chinese punctuation
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; Major mode
(setq initial-major-mode 'text-mode)
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-screen-lines-mode)

;; User information
(setq user-full-name "Liang Hongxin")
(setq user-mail-address "hxliang1982@gmail.com")

;; Just show, no jump
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; Show buffer name
(setq frame-title-format "%b@emacs")

;; Mark with Shift+direction
;(pc-selection-mode)

;; Whenever there are more than one files with the same
;; name, use directory as prefix, not foobar<?>
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; y/n for short
(fset 'yes-or-no-p 'y-or-n-p)

;; Display date and time
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)
(display-time)

;; Scroll before we reach the end of the screen
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)

;; Highlight marked region. This is enabled by default.
;(transient-mark-mode t)

;; Start 'gnuserv', then one can  open files using
;; 'gnuclient', the files opened will be in the 
;; current frame
;(require 'gnuserv-compat)
;(gnuserv-start)
;(setq gnuserv-frame (selected-frame))
;; This does not work under linux
;(setenv "GNUSERV_SHOW_EMACS" "1") ; Bring emacs top-most

;; Start 'emacs server'
(server-start)

;; No toolbar
(tool-bar-mode -1)

;; No menu
(if (not (eq system-type 'darwin))
    (menu-bar-mode -1))

;; No scroll bar
(scroll-bar-mode -1)

;; Speed up moving through VERY large file
;(setq lazy-lock-defer-on-scrolling t)
;(setq font-lock-support-mode 'lazy-lock-mode)
;(setq font-lock-maximum-decoration t)

;; How to deel with the errors in .emacs file
;; (condition-case err
;; 	(progn
;; 	  (require 'xxx))
;;   (error
;;    (message "Can't load xxx-mode %s" (cdr err))))

;; No backup files
(setq-default make-backup-files nil)

;; Drive the wheel mouse
(mouse-wheel-mode 1) 
;; Use clipboard when copy/paste in X (doesn't work in current CVS version, maybe Emacs' bug)
;; (setq x-select-enable-clipboard t)

;; Move up mouse when cursor comes
(mouse-avoidance-mode 'animate)

;; Redo support
(require 'redo+)
(global-set-key (kbd "C-?") 'redo)

;; At most 80 charactors per line
(set-fill-column 80)

;; Do not use Emacs built-in page down/up
(require 'pager)
(global-set-key (kbd "C-v") 'pager-page-down)
(global-set-key [next] 'pager-page-down)
(global-set-key (kbd "M-v") 'pager-page-up)
(global-set-key [prior] 'pager-page-up)
(global-set-key '[M-up] 'pager-row-up)
(global-set-key '[M-kp-8] 'pager-row-up)
(global-set-key '[M-down] 'pager-row-down)
(global-set-key '[M-kp-2] 'pager-row-down)

;; Other global set keys
(global-set-key (kbd "C-c r") 'query-replace-regexp)
(global-set-key (kbd "C-;") 'set-mark-command)
(global-set-key (kbd "C-c g") 'goto-line)

;; Which shell to use
(setq shell-file-name "/bin/sh")

;; Hide shell password
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;; Auto complete
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

(require 'tramp)
(setq tramp-default-method "scp")
(add-to-list 'tramp-default-method-alist '("" "honnix" "ssh"))
(add-to-list 'tramp-default-method-alist
             '("\\`localhost\\'" "\\`root\\'" "su"))

;; Kill shell buffer when shell exits
(add-hook 'shell-mode-hook 'my-shell-mode-hook-func)
(defun my-shell-mode-hook-func ()
  (set-process-sentinel (get-buffer-process (current-buffer))
                        'my-shell-mode-kill-buffer-on-exit))
(defun my-shell-mode-kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
       (string-match "exited abnormally with code.*" state)
       (string-match "finished" state))
      (kill-buffer (current-buffer))))

;; Auto mode list
(mapc
 (function (lambda (setting)
	     (setq auto-mode-alist
		   (cons setting auto-mode-alist))))
 '(("\\.xml$" .  sgml-mode)
   ("\\\.bash" . sh-mode)
   ("\\.rdf$" .  sgml-mode)
   ("\\.session" . emacs-lisp-mode)
   ("\\.l$" . c-mode)
   ("\\.h$" . c++-mode)
   ("\\.css$" . css-mode)
   ("\\.cfm$" . html-mode)
   ("gnus" . emacs-lisp-mode)
   ("\\.idl$" . idl-mode)
   ("\\.hs$" . haskell-mode)
   ("Rakefile" . ruby-mode)
   ("Gemfile" . ruby-mode)))

;; Kill whole line
(setq-default kill-whole-line t)

;; Set EOL style
;; (setq inhibit-eol-conversion 'gbk-dos)

;; Select current line
(global-set-key (kbd "C-c l")
                '(lambda ()
                   (interactive)
                   (move-beginning-of-line nil)
                   (set-mark-command nil)
                   (move-end-of-line nil)))

;; Insert table, after waiting for a long time, Emacs
;; finally fixed this bug
(setq table-disable-advising t)
(require 'table)
(add-to-list 'text-mode-hook 'table-recognize)

;; Appointment
(appt-activate)

;; No separate frame when ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; winner-mode to support undo/redo window layout
(winner-mode 1)

;; Highlight symbol
(global-set-key (kbd "C-c h") 'highlight-symbol-at-point)
(global-set-key (kbd "C-c n") 'highlight-symbol-next)
(global-set-key (kbd "C-c p") 'highlight-symbol-prev)

;; Set colors
(require 'color-theme)
(load "mine")
(my-color-theme)

;; Customize moving
(global-set-key (kbd "C-a") 'beginning-of-line)
(global-set-key (kbd "C-e") 'end-of-line)

;; Empty initial scratch buffer
(setq initial-scratch-message nil)
