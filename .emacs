;;; basic editor settings configs

;; disable toolbars
(tool-bar-mode 0)
(menu-bar-mode 0)

;; enable relative line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; get rid of the splashscreen
(setq inhibit-startup-screen t)

;; open in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; true full-screen (kinda like f11)
;(add-to-list 'default-frame-alist '(fullscreen . fullboth))

;; Display date and time in mode bar
(setq display-time-day-and-date t)
(display-time-mode 1)

;; Restore last workspace
(setq desktop-save 't)
(desktop-save-mode 1)

;;; Text/syntax-related configs
;; highlist corresponding open/close parenthesis
(show-paren-mode 1)
(setq show-paren-delay 0)

;; highlight current line
(global-hl-line-mode 1)

;; Add closing parenthesis, bracket, and other pairs like quotes
(electric-pair-mode 1)

;; Tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;; Melpa configuration
(require 'package)
(setq package-archives
	'(("gnu" . "https://elpa.gnu.org/packages/")
	  ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;;; Theme configuration
;; download catpuccin theme with mocha flavor
(unless (package-installed-p 'catppuccin-theme)
  (package-install 'catppuccin-theme))

(setq catppuccin-flavor 'mocha) ;or 'latte, 'macchiato, or 'mocha
(load-theme 'catppuccin t)

