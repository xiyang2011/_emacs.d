;;----------------------------------------------------------------------------
;; UI 编辑器显示
;;----------------------------------------------------------------------------
(load-theme 'leuven)

(use-package cnfonts
  :pin melpa
  :ensure t
  :init
  (setq cnfonts-personal-fontnames '(("JetBrains Mono")))
  (setq cnfonts-profiles '("default"))
  (setq cnfonts-use-system-type t)        ; different os different config dir
  (setq cnfonts-use-face-font-rescale t)
  (cnfonts-enable)
  )

;; disable bold
(defadvice set-face-attribute
    (before no-bold (face frame &rest args) activate)
  (setq args
        (mapcar (lambda(x) (if (eq x 'bold) 'normal x))
                args)))

(use-package dashboard
  :pin melpa
  :ensure t
  :config
  (setq dashboard-banner-logo-title "Welcome to Emacs")
  (setq dashboard-init-info "the truth is what it is, not what you see")
  (setq dashboard-center-content t)
  (setq dashboard-set-init-info t)
  (setq dashboard-set-footer t)
  (setq dashboard-set-navigator t)
  (setq dashboard-items '((recents . 8)
                        (projects . 5)))
  (dashboard-setup-startup-hook)
  )

;; 需要安装 all-the-icons: =M-x all-the-icons-install-fonts=
(use-package doom-modeline
  :pin melpa
  :ensure t
  :config
  (set-face-foreground 'doom-modeline-buffer-modified "goldenrod")
  (setq doom-modeline-project-detection 'ffip)
  (setq doom-modeline-buffer-modification-icon nil)
  (doom-modeline-mode 1)
  )

(use-package all-the-icons-ivy
  :pin melpa
  :ensure t
  :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))

(use-package rainbow-delimiters
  :pin melpa
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (rainbow-delimiters-mode 1)
  )

(use-package beacon
  :pin melpa
  :ensure t
  :config
  (setq beacon-blink-delay '0.2)
  (setq beacon-blink-when-focused 't)
  (setq beacon-dont-blink-commands 'nil)
  (setq beacon-color "#40a9ff")
  (beacon-mode 1)
  )

(provide 'init-ui)
