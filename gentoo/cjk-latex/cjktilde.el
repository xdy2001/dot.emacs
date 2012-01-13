;;; cjktilde.el -- minor mode exchanging `~' and ` ' keys.

;; This file is part of the CJK package Version 4.5.2 (28-Mar-2003)

;; Function `cjk-tilde-mode' activates a minor mode (`cjk-tilde-minor-mode')
;; which exchanges the tilde key with the space key. This is useful for
;; writing Chinese or Japanese with the CJK macro package for LaTeX 2e which
;; redefines the `~' command to insert a shibuaki space (see documentation
;; of the \CJKtilde macro for further details).

;;; Code:

(provide 'cjktilde)


(defvar cjk-tilde-minor-mode nil

  "*Non-nil enables CJK tilde mode.
Setting this variable makes it local to the current buffer.
See `cjk-tilde-mode' for details.")

(make-variable-buffer-local 'cjk-tilde-minor-mode)


;; the following two functions do the exchange.
(defun electric-cjk-tilde (arg)

  "insert space if tilde key is pressed provided cjk-tilde-minor-mode is
activated."

  (if cjk-tilde-minor-mode
      (char-to-string ?\ )
    (char-to-string ?\~)
  )
)


(defun electric-cjk-space (arg)

  "insert tilde if space key is pressed provided cjk-tilde-minor-mode is
activated."

  (if cjk-tilde-minor-mode
      (char-to-string ?\~)
    (char-to-string ?\ )
  )
)


(or key-translation-map (setq key-translation-map (make-sparse-keymap)))

(define-key key-translation-map " " 'electric-cjk-space)
(define-key key-translation-map "~" 'electric-cjk-tilde)


;; we indicate the minor mode in the mode line.
(or (assq 'cjk-tilde-minor-mode minor-mode-map-alist)
    (setq minor-mode-alist
        (append minor-mode-alist
            '((cjk-tilde-minor-mode " ~"))
        )
    )
)

;;;###autoload
(defun cjk-tilde-mode (&optional arg)

  "Toggle CJK tilde mode. If enabled, a tilde character will be inserted if
the space key is pressed and vice versa.

Use with caution! This minor mode makes only sense for CJK environments
after insertion of the \\CJKtilde command. See the documentation of the
CJK package for further details.

With an argument, a positive argument enables CJK tilde mode,
and a negative argument disables it."

  (interactive "P")

  (if (if arg
          ;; negative arg: switch off
          (<= (prefix-numeric-value arg) 0)
        ;; no arg: toggle
        cjk-tilde-minor-mode)
      (setq cjk-tilde-minor-mode nil)

    ;; positive arg: switch on
    (setq cjk-tilde-minor-mode t)
  )
  (force-mode-line-update)
)


;;; end of cjktilde.el
