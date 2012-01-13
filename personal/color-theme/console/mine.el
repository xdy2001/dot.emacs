(eval-when-compile    (require 'color-theme))
(defun my-color-theme ()
  "Color theme by Liang Hongxin, created 2007-09-18."
  (interactive)
  (color-theme-install
   '(my-color-theme
     ((background-color . "darkslategrey")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "LightGray")
      (foreground-color . "wheat")
      (mouse-color . "Grey"))
     ((browse-kill-ring-separator-face . bold)
      (cscope-use-face . t)
      (goto-address-mail-face . message-header-to-face)
      (goto-address-mail-mouse-face . secondary-selection)
      (goto-address-url-face . info-xref)
      (goto-address-url-mouse-face . highlight)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face)
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . bold)
      (rmail-highlight-face . rmail-highlight)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "darkslategrey" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :family "bitstream-bitstream vera sans mono"))))
     (bbdb-company ((t (:foreground "pale green"))))
     (bbdb-field-name ((t (:foreground "medium sea green"))))
     (bbdb-field-value ((t (:foreground "dark sea green"))))
     (bbdb-name ((t (:bold t :foreground "pale green" :weight bold))))
     (bg:erc-color-face0 ((t (nil))))
     (bg:erc-color-face1 ((t (nil))))
     (bg:erc-color-face10 ((t (nil))))
     (bg:erc-color-face11 ((t (nil))))
     (bg:erc-color-face12 ((t (nil))))
     (bg:erc-color-face13 ((t (nil))))
     (bg:erc-color-face14 ((t (nil))))
     (bg:erc-color-face15 ((t (nil))))
     (bg:erc-color-face2 ((t (nil))))
     (bg:erc-color-face3 ((t (nil))))
     (bg:erc-color-face4 ((t (nil))))
     (bg:erc-color-face5 ((t (nil))))
     (bg:erc-color-face6 ((t (nil))))
     (bg:erc-color-face7 ((t (nil))))
     (bg:erc-color-face8 ((t (nil))))
     (bg:erc-color-face9 ((t (nil))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :foreground "beige" :slant italic :weight bold))))
     (border ((t (:background "black"))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (calendar-today-face ((t (:underline t))))
     (change-log-acknowledgement-face ((t (:foreground "LightBlue"))))
     (change-log-conditionals-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (change-log-date-face ((t (:foreground "LightSalmon"))))
     (change-log-email-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (change-log-file-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (change-log-function-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (change-log-list-face ((t (:foreground "Salmon"))))
     (change-log-name-face ((t (:foreground "Aquamarine"))))
     (comint-highlight-prompt ((t (:foreground "medium aquamarine"))))
     (completions-common-part ((t (:family "bitstream-bitstream vera sans mono" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "wheat" :background "darkslategrey" :stipple nil :height 116))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cperl-array-face ((t (:foreground "Yellow"))))
     (cperl-hash-face ((t (:foreground "White"))))
     (cperl-nonoverridable-face ((t (:foreground "SkyBlue"))))
     (cscope-file-face ((t (:foreground "blue"))))
     (cscope-function-face ((t (:foreground "magenta"))))
     (cscope-line-face ((t (:foreground "black"))))
     (cscope-line-number-face ((t (:foreground "red"))))
     (cscope-mouse-face ((t (:background "blue" :foreground "white"))))
     (cursor ((t (:background "LightGray"))))
     (custom-button-face ((t (:foreground "MediumSlateBlue" :underline t))))
     (custom-documentation-face ((t (:foreground "Grey"))))
     (custom-group-tag-face ((t (:foreground "MediumAquamarine"))))
     (custom-state-face ((t (:foreground "LightSalmon"))))
     (custom-variable-tag-face ((t (:foreground "Aquamarine"))))
     (diary-face ((t (:foreground "IndianRed"))))
     (diff-added-face ((t (nil))))
     (diff-changed-face ((t (nil))))
     (diff-context-face ((t (:foreground "grey70"))))
     (diff-file-header-face ((t (:bold t :weight bold))))
     (diff-function-face ((t (:foreground "grey70"))))
     (diff-header-face ((t (:foreground "light salmon"))))
     (diff-hunk-header-face ((t (:foreground "light salmon"))))
     (diff-index-face ((t (:bold t :weight bold))))
     (diff-nonexistent-face ((t (:bold t :weight bold))))
     (diff-removed-face ((t (nil))))
     (dired-face-directory ((t (:bold t :foreground "sky blue" :weight bold))))
     (dired-face-executable ((t (:foreground "green yellow"))))
     (dired-face-flagged ((t (:foreground "tomato"))))
     (dired-face-marked ((t (:foreground "light salmon"))))
     (dired-face-permissions ((t (:foreground "aquamarine"))))
     (erc-action-face ((t (nil))))
     (erc-bold-face ((t (:bold t :weight bold))))
     (erc-current-nick-face ((t (:bold t :foreground "yellow" :weight bold))))
     (erc-default-face ((t (nil))))
     (erc-direct-msg-face ((t (:foreground "pale green"))))
     (erc-error-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (erc-highlight-face ((t (:bold t :foreground "pale green" :weight bold))))
     (erc-input-face ((t (:foreground "light blue"))))
     (erc-inverse-face ((t (:background "steel blue"))))
     (erc-keyword-face ((t (:bold t :foreground "orange" :weight bold))))
     (erc-notice-face ((t (:foreground "light salmon"))))
     (erc-pal-face ((t (:foreground "pale green"))))
     (erc-prompt-face ((t (:bold t :foreground "light blue" :weight bold))))
     (escape-glyph ((t (:foreground "brown"))))
     (eshell-ls-archive-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (eshell-ls-backup-face ((t (:foreground "Grey"))))
     (eshell-ls-clutter-face ((t (:foreground "DimGray"))))
     (eshell-ls-directory-face ((t (:bold t :foreground "MediumSlateBlue" :weight bold))))
     (eshell-ls-executable-face ((t (:foreground "Coral"))))
     (eshell-ls-missing-face ((t (:foreground "black"))))
     (eshell-ls-picture-face ((t (:foreground "Violet"))))
     (eshell-ls-product-face ((t (:foreground "LightSalmon"))))
     (eshell-ls-readonly-face ((t (:foreground "Aquamarine"))))
     (eshell-ls-special-face ((t (:foreground "Gold"))))
     (eshell-ls-symlink-face ((t (:foreground "White"))))
     (eshell-ls-text-face ((t (:foreground "medium aquamarine"))))
     (eshell-ls-todo-face ((t (:bold t :foreground "aquamarine" :weight bold))))
     (eshell-ls-unreadable-face ((t (:foreground "DimGray"))))
     (eshell-prompt-face ((t (:foreground "powder blue"))))
     (fg:erc-color-face0 ((t (:foreground "white"))))
     (fg:erc-color-face1 ((t (:foreground "beige"))))
     (fg:erc-color-face10 ((t (:foreground "pale goldenrod"))))
     (fg:erc-color-face11 ((t (:foreground "light goldenrod yellow"))))
     (fg:erc-color-face12 ((t (:foreground "light yellow"))))
     (fg:erc-color-face13 ((t (:foreground "yellow"))))
     (fg:erc-color-face14 ((t (:foreground "light goldenrod"))))
     (fg:erc-color-face15 ((t (:foreground "lime green"))))
     (fg:erc-color-face2 ((t (:foreground "lemon chiffon"))))
     (fg:erc-color-face3 ((t (:foreground "light cyan"))))
     (fg:erc-color-face4 ((t (:foreground "powder blue"))))
     (fg:erc-color-face5 ((t (:foreground "sky blue"))))
     (fg:erc-color-face6 ((t (:foreground "dark sea green"))))
     (fg:erc-color-face7 ((t (:foreground "pale green"))))
     (fg:erc-color-face8 ((t (:foreground "medium spring green"))))
     (fg:erc-color-face9 ((t (:foreground "khaki"))))
     (file-name-shadow ((t (:foreground "grey50"))))
     (fixed-pitch ((t (:family "courier"))))
     (font-lock-builtin-face ((t (:bold t :foreground "PaleGreen" :weight bold))))
     (font-lock-comment-delimiter-face ((t (:foreground "LightBlue"))))
     (font-lock-comment-face ((t (:foreground "LightBlue"))))
     (font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (font-lock-doc-face ((t (:foreground "LightSalmon"))))
     (font-lock-doc-string-face ((t (:foreground "LightSalmon"))))
     (font-lock-function-name-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (font-lock-keyword-face ((t (:foreground "Salmon"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "Salmon"))))
     (font-lock-reference-face ((t (:foreground "pale green"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "LightSalmon"))))
     (font-lock-type-face ((t (:bold t :foreground "YellowGreen" :weight bold))))
     (font-lock-variable-name-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (font-lock-warning-face ((t (:bold t :foreground "red" :weight bold))))
     (fringe ((t (:background "darkslategrey"))))
     (gnus-cite-attribution-face ((t (:bold t :weight bold))))
     (gnus-cite-face-1 ((t (:foreground "LightSalmon"))))
     (gnus-cite-face-2 ((t (:foreground "Khaki"))))
     (gnus-cite-face-3 ((t (:foreground "Coral"))))
     (gnus-cite-face-4 ((t (:foreground "yellow green"))))
     (gnus-cite-face-5 ((t (:foreground "dark khaki"))))
     (gnus-cite-face-6 ((t (:foreground "bisque"))))
     (gnus-cite-face-7 ((t (:foreground "peru"))))
     (gnus-cite-face-8 ((t (:foreground "light coral"))))
     (gnus-cite-face-9 ((t (:foreground "plum"))))
     (gnus-emphasis-bold ((t (:bold t :weight bold))))
     (gnus-emphasis-bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
     (gnus-emphasis-italic ((t (:italic t :slant italic))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:bold t :underline t :weight bold))))
     (gnus-emphasis-underline-bold-italic ((t (:italic t :bold t :underline t :slant italic :weight bold))))
     (gnus-emphasis-underline-italic ((t (:italic t :underline t :slant italic))))
     (gnus-group-mail-1-empty-face ((t (:foreground "White"))))
     (gnus-group-mail-1-face ((t (:bold t :foreground "White" :weight bold))))
     (gnus-group-mail-2-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-mail-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-group-mail-3-empty-face ((t (:foreground "LightBlue"))))
     (gnus-group-mail-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-group-mail-low-empty-face ((t (:foreground "Aquamarine"))))
     (gnus-group-mail-low-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-group-news-1-empty-face ((t (:foreground "White"))))
     (gnus-group-news-1-face ((t (:bold t :foreground "White" :weight bold))))
     (gnus-group-news-2-empty-face ((t (:foreground "light cyan"))))
     (gnus-group-news-2-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-group-news-3-empty-face ((t (:foreground "LightBlue"))))
     (gnus-group-news-3-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-group-news-4-empty-face ((t (:foreground "Aquamarine"))))
     (gnus-group-news-4-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-group-news-5-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-5-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-group-news-6-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-6-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-group-news-low-empty-face ((t (:foreground "MediumAquamarine"))))
     (gnus-group-news-low-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-header-content-face ((t (:foreground "LightSkyBlue3"))))
     (gnus-header-from-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-header-name-face ((t (:bold t :foreground "LightBlue" :weight bold))))
     (gnus-header-newsgroups-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (gnus-signature-face ((t (:foreground "Grey"))))
     (gnus-splash-face ((t (:foreground "ForestGreen"))))
     (gnus-summary-cancelled-face ((t (:background "Black" :foreground "Yellow"))))
     (gnus-summary-high-ancient-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (gnus-summary-high-read-face ((t (:bold t :foreground "Aquamarine" :weight bold))))
     (gnus-summary-high-ticked-face ((t (:bold t :foreground "LightSalmon" :weight bold))))
     (gnus-summary-high-unread-face ((t (:bold t :foreground "beige" :weight bold))))
     (gnus-summary-low-ancient-face ((t (:foreground "DimGray"))))
     (gnus-summary-low-read-face ((t (:foreground "slate gray"))))
     (gnus-summary-low-ticked-face ((t (:foreground "Pink"))))
     (gnus-summary-low-unread-face ((t (:foreground "LightGray"))))
     (gnus-summary-normal-ancient-face ((t (:foreground "MediumAquamarine"))))
     (gnus-summary-normal-read-face ((t (:foreground "Aquamarine"))))
     (gnus-summary-normal-ticked-face ((t (:foreground "LightSalmon"))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-selected-face ((t (:background "DarkSlateBlue"))))
     (header-line ((t (:background "grey90" :foreground "grey20" :box nil))))
     (help-argument-name ((t (:italic t :slant italic))))
     (highlight ((t (:background "PaleGreen" :foreground "DarkGreen"))))
     (highline-face ((t (:background "SeaGreen"))))
     (holiday-face ((t (:background "DimGray"))))
     (hyper-apropos-documentation ((t (:foreground "LightSalmon"))))
     (hyper-apropos-hyperlink ((t (:bold t :foreground "DodgerBlue1" :weight bold))))
     (ibuffer-deletion-face ((t (:foreground "red"))))
     (ibuffer-marked-face ((t (:foreground "green"))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:bold t :weight bold :foreground "red"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-subdir ((t (:foreground "red1"))))
     (info-header-xref ((t (:bold t :foreground "DodgerBlue1" :weight bold))))
     (info-menu-5 ((t (:underline t))))
     (info-node ((t (:bold t :foreground "DodgerBlue1" :underline t :weight bold))))
     (info-xref ((t (:bold t :foreground "DodgerBlue1" :weight bold))))
     (isearch ((t (:background "sea green"))))
     (italic ((t (:italic t :slant italic))))
     (lazy-highlight ((t (:background "paleturquoise"))))
     (link ((t (:foreground "blue1" :underline t))))
     (link-visited ((t (:underline t :foreground "magenta4"))))
     (log-view-message-face ((t (:foreground "light salmon"))))
     (match ((t (:background "yellow1"))))
     (menu ((t (:background "darkslategrey" :foreground "wheat"))))
     (message-cited-text-face ((t (:foreground "LightSalmon"))))
     (message-header-cc-face ((t (:foreground "light cyan"))))
     (message-header-name-face ((t (:foreground "LightBlue"))))
     (message-header-newsgroups-face ((t (:bold t :foreground "MediumAquamarine" :weight bold))))
     (message-header-other-face ((t (:foreground "MediumAquamarine"))))
     (message-header-subject-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (message-header-to-face ((t (:bold t :foreground "light cyan" :weight bold))))
     (message-header-xheader-face ((t (:foreground "MediumAquamarine"))))
     (message-separator-face ((t (:foreground "chocolate"))))
     (minibuffer-prompt ((t (:foreground "medium blue"))))
     (mode-line ((t (:background "dark olive green" :foreground "wheat"))))
     (mode-line-buffer-id ((t (:background "dark olive green" :foreground "beige"))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey75" :style nil) :weight light))))
     (modeline-mousable ((t (:background "dark olive green" :foreground "yellow green"))))
     (modeline-mousable-minor-mode ((t (:background "dark olive green" :foreground "wheat"))))
     (mouse ((t (:background "Grey"))))
     (next-error ((t (:foreground "cyan" :background "dark cyan"))))
     (nobreak-space ((t (:foreground "brown" :underline t))))
     (query-replace ((t (:background "sea green"))))
     (region ((t (:background "dark cyan" :foreground "cyan"))))
     (scroll-bar ((t (:background "grey75" :foreground "#000000"))))
     (secondary-selection ((t (:background "Aquamarine" :foreground "SlateBlue"))))
     (shadow ((t (:foreground "grey50"))))
     (show-paren-match ((t (:bold t :background "Aquamarine" :foreground "steel blue" :weight bold))))
     (show-paren-mismatch ((t (:background "Red" :foreground "White"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (tabbar-button-face ((t (:background "gray72" :family "helv" :foreground "dark red" :box (:line-width 2 :color "white" :style released-button) :height 0.8))))
     (tabbar-default-face ((t (:family "helv" :background "gray72" :foreground "gray60" :height 0.8))))
     (tabbar-selected-face ((t (:background "gray72" :family "helv" :foreground "blue" :box (:line-width 2 :color "white" :style released-button) :height 0.8))))
     (tabbar-separator-face ((t (:foreground "gray60" :background "gray72" :family "helv" :height 0.16000000000000003))))
     (tabbar-unselected-face ((t (:foreground "gray60" :background "gray72" :family "helv" :box (:line-width 2 :color "white" :style pressed-button) :height 0.8))))
     (tool-bar ((t (:background "#ede9e3" :foreground "#000000" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "helv" :background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (vertical-border ((t (nil))))
     (w3m-anchor-face ((t (:bold t :foreground "DodgerBlue1" :weight bold))))
     (w3m-arrived-anchor-face ((t (:bold t :foreground "DodgerBlue3" :weight bold))))
     (w3m-header-line-location-content-face ((t (:background "dark olive green" :foreground "wheat"))))
     (w3m-header-line-location-title-face ((t (:background "dark olive green" :foreground "beige"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-documentation ((t (:foreground "dark green"))))
     (widget-field ((t (:foreground "LightBlue"))))
     (widget-inactive ((t (:foreground "DimGray"))))
     (widget-single-line-field ((t (:foreground "LightBlue"))))
     (woman-bold-face ((t (:bold t :weight bold))))
     (woman-italic-face ((t (:foreground "beige"))))
     (woman-unknown-face ((t (:foreground "LightSalmon"))))
     (zmacs-region ((t (:background "dark cyan" :foreground "cyan")))))))
(add-to-list 'color-themes '(my-color-theme  "THEME NAME" "YOUR NAME"))