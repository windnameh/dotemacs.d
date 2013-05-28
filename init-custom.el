;;
;; package start-kit
;;
(require 'package)
(add-to-list 'package-archives
 '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;
;; color-theme-solarized
;;
;(add-to-list 'custom-theme-load-path
;             "~/.emacs.d/plugins/themes/solarized")
;(load-theme 'solarized-dark t)
;(setq solarized-termcolors 256)
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
	     "~/.emacs.d/plugins/auto-complete-clang-async")
(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable
	"~/.emacs.d/plugins/auto-complete-clang-async/clang-complete")
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


(provide 'init-custom)
