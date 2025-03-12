;; general stuff
(ido-mode)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(display-line-numbers-mode)
(setq display-line-numbers 'relative)

;; use-package-config
(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

;; workaround-/fix-config
(setq package-install-upgrade-built-in t)

;; smex-config
(use-package smex)
(install-package 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; custom-set-variables-file
(setq custom-file "~/.emacs.d/emacs-custom.el")

;; magit-config
(use-package magit)

;; theme-config
(use-package gruber-darker-theme)
(use-package spacemacs-theme)
(use-package cyberpunk-theme)
(use-package kaolin-themes)
(use-package cherry-blossom-theme)
(use-package moe-theme)
