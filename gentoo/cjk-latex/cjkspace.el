;;; cjkspace.el --- provide a tilde character if you type a space.
;;; use this file with AUCTeX.

;; This file is part of the CJK package Version 4.5.2 (28-Mar-2003)

;; Insert tilde characters instead of spaces for LaTeX CJK documents.
;; If `CJK-space-after-space' is non-nil, typing a space yields a space.
;; Typing two consecutive spaces yields a tilde.  If `CJK-space-after-space'
;; is nil, the behaviour is reversed.
;;
;; You should put the following in your .emacs file (additionally to the
;; common AUCTeX adaptations):
;;
;;   (autoload 'CJK-insert-space "cjkspace"
;;     "Insert tildes appropriately in CJK document." t)
;;    (defun my-LaTeX-mode-hook ()
;;     "Key definitions for LaTeX mode."
;;     (define-key LaTeX-mode-map " " 'CJK-insert-space)
;;     )
;;   (add-hook 'LaTeX-mode-hook 'my-LaTeX-mode-hook)


;;; Code:

(provide 'cjkspace)


(defvar CJK-space "~")

(defvar CJK-space-after-space nil

  "*If non-nil, typing a space yields a space.  Typing two consecutive
spaces yields a tilde.  If nil the behaviour is reversed.")

(make-variable-buffer-local 'CJK-space-after-space)


;;;###autoload
(defun CJK-insert-space (arg)

  "Insert tilde characters instead of spaces for LaTeX CJK documents.
If `CJK-space-after-space' is non-nil, typing a space yields a space.
Typing two consecutive spaces yields a tilde.  If `CJK-space-after-space'
is nil, the behaviour is reversed.

With prefix argument, always inserts space characters."

  (interactive "*P")

  (if arg
      (self-insert-command (prefix-numeric-value arg))
    (TeX-update-style)
    (if CJK-space-after-space
        (insert (cond ((bobp)
                       ?\ )
                      ((not (= (preceding-char) ?\ ))
                       ?\ )
                      ((and (> (point) 2)
                          (save-excursion
                             (forward-char -2)
                             (looking-at (concat "[" CJK-space
                                                 (regexp-quote TeX-esc) "]"))))
                           ?\ )
                      (t
                       (delete-backward-char 1)
                       CJK-space)))
      (insert (cond ((bobp)
                     ?\ )
                    ((= (preceding-char) (string-to-char TeX-esc))
                     ?\ )
                    ((= (preceding-char) ?\ )
                     ?\ )
                    ((and (> (point) 2)
                        (save-excursion
                           (forward-char -2)
                           (looking-at (concat (regexp-quote TeX-esc)
                                               CJK-space))))
                         CJK-space)
                    ((= (preceding-char) (string-to-char CJK-space))
                     (delete-backward-char 1)
                     ?\ )
                    (t
                     CJK-space))))))

;;; EOF
