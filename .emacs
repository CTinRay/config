(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(fringe-mode 0 nil (fringe))
 '(pdf-latex-command "xelatex")
 '(preview-image-type (quote dvipng))
 '(tool-bar-mode nil)
 '(tooltip-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))
;;(add-to-list 'load-path "~/.emacs.d")


;;==============================


(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;==============================

;;(require 'gccsense)
;;(add-hook 'c-mode-common-hook
;;          (lambda ()
;;            (local-set-key (kbd "<C-tab>") 'ac-complete-gccsense)))

;;==============================

;;line unmber
(global-linum-mode 1) ; always show line numbers                              
(setq linum-format "%d ")  ;set format  

;;==============================

;;cedet
;;(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;;(global-ede-mode 1)                      ; Enable the Project management system
(global-auto-complete-mode t)
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 

;;==============================


;;atuo complete

;;add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20150322.813")
(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;(setq popup-use-optimized-column-computation nil )


;;==============================

;;(global-srecode-minor-mode 1)            ; Enable template insertion menu
;;(defun my-semantic-hook ()
;;  (imenu-add-to-menubar "TAGS"))
;;(add-hook 'semantic-init-hooks 'my-semantic-hook)

;; if you want to enable support for gnu global
;;(when (cedet-gnu-global-version-check t)
;;  (semanticdb-enable-gnu-global-databases 'c-mode)
;;  (semanticdb-enable-gnu-global-databases 'c++-mode))

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;;(when (cedet-ectag-version-check t)
;; (semantic-load-enable-primary-exuberent-ctags-support))

;;(defun my-c-mode-cedet-hook ()
;; (local-set-key "." 'semantic-ia-complete-symbol-menu)
;;(local-set-key ">" 'semantic-ia-complete-symbol-menu))
;;(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;;(global-semantic-idle-completions-mode 1)


;; CC-mode

(add-hook 'c-mode-common-hook '(lambda ()
        (setq ac-sources (append '(ac-source-semantic) ac-sources))
))
(add-hook 'c++-mode-common-hook '(lambda ()
        (setq ac-sources (append '(ac-source-semantic) ac-sources))
))



;;indent width
;;(setq-default indent-tabs-mode nil)
;; (setq tab-width 4) ; or any other preferred value
;; (defvaralias 'c-basic-offset 'tab-width)
;; (defvaralias 'cperl-indent-level 'tab-width)


;;GDB
(setq gdb-many-windows 1)
(setq gdb-show-main 1)

;;Windmove
(windmove-default-keybindings 'meta)

;;C-x C-b to ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;;Ibus
;;(require 'ibus)
;;(add-hook 'after-init-hook 'ibus-mode-on)

;;==============================

;;Flycheck
;;Set C++ Standard
(add-hook 'c++-mode-hook
  (lambda () (
     setq flycheck-gcc-language-standard "c++11")))

;;==============================

;;js2
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)


;;==============================

;;Web mode

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 1)
)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))


(setq-default indent-tabs-mode nil)


;;==============================

;; Auctex

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)
