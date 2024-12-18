(set-fringe-mode 0) ; Side bars
(scroll-bar-mode 0)

(tool-bar-mode 0)
(menu-bar-mode 0)
;; Ugly way to hide top bar. TODO Is there a "mode?"
(setq default-frame-alist
      (append
       '((undecorated . t))
       default-frame-alist))
(line-number-mode 0)
;; todo: make thin bar on RHS of numbers, rounded, only 95% of the bar
(set-face-attribute 'line-number nil
		    :background nil
		    :box nil)

;; Customize the current line number if desired
;; need for line numbers
;; (setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(setq visible-bell t)
(set-face-attribute 'default nil :font "Consolas 18")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme stuff:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Meh
;; (load-theme 'tango-dark)
;; modus theme meh

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
    ;; todo: try nier theme https://github.com/merrittlj/automata-theme
  (load-theme 'doom-one t)
    ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
   (doom-themes-treemacs-config)
   ;; Corrects (and improves) org-mode's native fontification.
   ;; lol i dont use org tho
  (doom-themes-org-config))
