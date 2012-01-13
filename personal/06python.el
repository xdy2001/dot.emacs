;; Python hook
(add-hook 'python-mode-hook
          '(lambda ()
             (my-python-mode-key-bind)))

(defun my-python-mode-key-bind ()
  (interactive)
  (local-unset-key (kbd "C-c C-c"))
  (local-set-key (kbd "C-c i m")
                 '(lambda ()
                    (interactive)
                    (insert "if __name__ == \"__main__\":\n")
                    (python-indent-line)))
  (local-set-key (kbd "C-c i f")
                 '(lambda ()
                    (interactive)
                    (insert "for i in range():\n")
                    (python-indent-line)
                    (previous-line 1)
                    (back-to-indentation)
                    (forward-char 15))))

;; Generate main, does not work :(
;; (define-skeleton skeleton-python-mode-main-func
;;   "generate if __name__ == \"__main__\":" nil
;;   > "if __name__ == \"__main__\":\n"
;;   > _)
;; (define-abbrev-table 'python-mode-abbrev-table
;;   '(("main" "" skeleton-python-mode-main-func 1)))

