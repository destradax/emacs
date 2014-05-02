(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(column-number-mode t)
 '(cua-keep-region-after-copy t)
 '(cua-mode t nil (cua-base))
 '(cua-virtual-rectangle-edges t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(electric-pair-mode t)
 '(global-auto-complete-mode t)
 '(global-linum-mode t)
 '(global-visual-line-mode nil)
 '(kill-whole-line t)
 '(make-backup-files nil)
 '(recentf-mode t)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/packages/")

;; Markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Get rid of startup screen
(setq inhibit-startup-screen t)

;; Make the cursor look like a bar
(set-default 'cursor-type 'bar)

;; Aditional repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Auto-complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;; Proxy configuration
;; (setq url-proxy-services '(("no_proxy" . "localhost")
;;                            ("http" . "10.10.10.11:8080")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       Common Keys Mappings                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [M-f4] 'save-buffers-kill-emacs)
(global-set-key "\C-a" 'mark-whole-buffer)
(global-set-key "\C-d" 'kill-whole-line)
(global-set-key "\C-f" 'isearch-forward)
(define-key isearch-mode-map "\C-f" 'isearch-repeat-forward)
(global-set-key "\C-l" 'goto-line)
(global-set-key "\C-n" 'find-file)
(global-set-key "\C-o" 'find-file)
(global-set-key "\C-p" 'execute-extended-command)
(global-set-key "\C-s" 'save-buffer)
(global-set-key "\C-w" 'kill-this-buffer)

;; For programming language modes
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Buffer switching
(global-set-key [C-tab] 'next-buffer)
(global-set-key [C-S-tab] 'previous-buffer)

;; Window management
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-right)
(global-set-key (kbd "M-3") 'split-window-below)
(global-set-key (kbd "M-4") 'delete-window)
(global-set-key (kbd "M-|") 'other-window)
(global-set-key (kbd "M-f") 'query-replace)
