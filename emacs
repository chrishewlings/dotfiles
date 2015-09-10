(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-agenda-files (directory-files "~/Dropbox/org/"))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (package-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq org-todo-keywords
   '((sequence "TODO" "PROGRESS" "VERIFY" "|" "CANCELLED" "DONE")))

(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "brightred" :weight bold))
        ("PROGRESS" . (:foreground "yellow1"))
        ("DONE" . (:foreground "green"))
        ("CANCELLED" . (:background "red"))
        ("VERIFY" . (:foreground "cyan"))))

(setq backup-directory-alist `(("." . "~/.emacs.d/autosave")))

;; evil mode configuration

(setq evil-insert-state-cursor '((bar . 5) "yellow")
      evil-normal-state-cursor '(box "purple"))


(add-to-list 'load-path "~/.emacs.d/plugins/evil-org-mode")
(require 'evil-org)
(require 'evil-indent-textobject)
(require 'evil-matchit)

(require 'evil)
(evil-mode 1)

