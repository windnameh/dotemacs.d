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

;;; llvm clang complete
(add-to-list 'load-path
             "/home/colors/.emacs.d/plugins/clang-complete")
(load-library "clang-completion-mode")

;;; custom setup
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))
