(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backward-delete-char-untabify-method nil)
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(cua-keep-region-after-copy t)
 '(cua-mode t nil (cua-base))
 '(cua-virtual-rectangle-edges t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(electric-pair-mode t)
 '(global-auto-complete-mode t)
 '(global-linum-mode t)
 '(global-visual-line-mode nil)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(js-indent-level 2)
 '(kill-whole-line t)
 '(make-backup-files nil)
 '(recentf-mode t)
 '(ruby-indent-tabs-mode t)
 '(sh-basic-offset 2)
 '(show-paren-mode t)
 '(standard-indent 2)
 '(tab-always-indent nil)
 '(tab-stop-list (quote (2 4 6 8 10)))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/packages/")

;; Show completions on commands
(icomplete-mode 1)

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

;; Always prompt only for y or n instead of yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Yasnippets
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20140427.1224")
(require 'yasnippet)
(yas-global-mode 1)
(add-to-list 'auto-mode-alist '("\\.yasnippet\\'" . snippet-mode))

;; Proxy configuration
;; (setq url-proxy-services '(("no_proxy" . "localhost")
;;                            ("http" . "10.10.10.11:8080")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                       Common Keys Mappings                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-<f4>") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-d") 'kill-whole-line)
(global-set-key (kbd "C-f") 'isearch-forward)
(define-key isearch-mode-map "\C-f" 'isearch-repeat-forward)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-n") 'find-file)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-p") 'execute-extended-command)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-w") 'kill-this-buffer)

;; For programming language modes
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Buffer switching
(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)

;; Window management
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-right)
(global-set-key (kbd "M-3") 'split-window-below)
(global-set-key (kbd "M-w") 'delete-window)
(global-set-key (kbd "M-|") 'other-window)
(global-set-key (kbd "M-f") 'query-replace)
(global-set-key (kbd "M-t") 'speedbar)

;; Surrounds
(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair)
(global-set-key (kbd "M-\'") 'insert-pair)
(global-set-key (kbd "M-)") 'delete-pair)
(global-set-key (kbd "M-]") 'delete-pair)
(global-set-key (kbd "M-}") 'delete-pair)
