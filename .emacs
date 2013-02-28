;;; line number
(global-linum-mode 1)
(setq linum-format "%4d \u2502")

;;; color-theme-solarized
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
(load-theme 'solarized-dark t)
(setq solarized-termcolors 256)
;;(setq solarized-degrade t)
