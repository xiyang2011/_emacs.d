(require 'ivy)
(ivy-mode 1)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d-%d) ")
(setq enable-recursive-minibuffers t)
(setq ivy-use-selectable-prompt t)

;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "M-y") 'counsel-yank-pop)

(require 'projectile)
(setq projectile-enable-caching t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

(require 'counsel-projectile)
(counsel-projectile-mode 1)

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-project)
