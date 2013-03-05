;;; line number
(global-linum-mode 1)
(setq linum-format "%4d \u2502")

;;; color-theme-solarized
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/plugins/themes/solarized")
(load-theme 'solarized-dark t)
(setq solarized-termcolors 256)
;;(setq solarized-degrade t)

;;; auto-complete
(add-to-list 'load-path
             "/home/colors/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "/home/colors/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
