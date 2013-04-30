;;
;; line number
;;
(global-linum-mode 1)
(setq linum-format "%4d \u2502")

;;
;; color-theme-solarized
;;
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/plugins/themes/solarized")
(load-theme 'solarized-dark t)
(setq solarized-termcolors 256)
;;(setq solarized-degrade t)

;;
;; auto-complete
;;
(add-to-list 'load-path
             "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)

;;
;; llvm clang complete
;;
;(add-to-list 'load-path
;             "/home/colors/.emacs.d/plugins/clang-complete")
;(load-library "clang-completion-mode")

;;
;; clang complete
;;
(add-to-list 'load-path
	     "~/.emacs.d/plugins/emacs-clang-complete-async")
(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable
	"~/.emacs.d/plugins/emacs-clang-complete-async/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)
(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)

;;
;; yasnippet
;;
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


;;
;; custom setup
;;
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
 '(default ((t (:family "Consolas" :foundry "microsoft" :slant normal :weight normal :height 142 :width normal)))))
