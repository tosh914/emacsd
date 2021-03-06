;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Path settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Define "user-emacs-directory" when Emacs version is older than 23.
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d/"))
;;--------------------------------------------------------------------------------------
;; Set system path for Mac OSX.
(when (eq system-type 'darwin)
  (progn
	(setq exec-path (cons "/usr/local/bin" exec-path))
	(setenv "PATH"
			(concat
			 '"/usr/texbin" ":"
			 "/usr/local/bin" ":"
			 (getenv "PATH")))))
;;--------------------------------------------------------------------------------------
;; Define add-to-load-path function
(defun add-to-load-path (&rest paths)
  (let (path)
	(dolist (path paths paths)
	  (let ((default-directory
			  (expand-file-name (concat user-emacs-directory path))))
		(add-to-list 'load-path default-directory)
		(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
		    (normal-top-level-add-subdirs-to-load-path))))))
;;--------------------------------------------------------------------------------------
;; Add load-paths
(add-to-load-path "elisp" "conf")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Load confs ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; System setting (language, charcode,...)
(load "00-system")
;;--------------------------------------------------------------------------------------
;; Auto-install setting
(load "01-auto-install")
;;--------------------------------------------------------------------------------------
;; Package setting
(load "02-package.el")
;;--------------------------------------------------------------------------------------
;; Frame setting
(load "03-frame")
;;--------------------------------------------------------------------------------------
;; Key-bind setting
(load "04-key")
;;--------------------------------------------------------------------------------------
;; Color setting
(load "05-color")
;;--------------------------------------------------------------------------------------
;; Font setting
(load "06-font")
;;--------------------------------------------------------------------------------------
;; Anything setting
(load "10-anything")
;;--------------------------------------------------------------------------------------
;; Auto-save-buffers setting
(load "11-auto-save-buffers")
;;--------------------------------------------------------------------------------------
;; Flymake setting
(load "12-flymake")
;;--------------------------------------------------------------------------------------
;; C-mode setting
(load "13-c-mode")
;;--------------------------------------------------------------------------------------
;; YaTeX setting
(load "14-yatex")
;;--------------------------------------------------------------------------------------
;; Auto-complete setting
;; (load "15-auto-complete")
;;--------------------------------------------------------------------------------------
;; Color-moccur setting
(load "16-color-moccur")
;;--------------------------------------------------------------------------------------
;; Gtags setting
(load "17-gtags")
;;--------------------------------------------------------------------------------------
;; Ctags setting
(load "18-ctags")
;;--------------------------------------------------------------------------------------
;; Mozc setting
(load "19-mozc")
;;--------------------------------------------------------------------------------------
;; Ruby setting
(load "20-ruby")
;;--------------------------------------------------------------------------------------
;; Machine-specific setting
(load "99-machine")
;;--------------------------------------------------------------------------------------
