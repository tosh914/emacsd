;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ASCII Font settings ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when window-system
  ;; MacOSX Font
  (when (and (eq system-type 'darwin) (>= emacs-major-version 23))
	 (set-face-attribute 'default nil
						 :family "Monaco"
						 :height 120)
										; set ASCII font
	 (set-fontset-font
	  (frame-parameter nil 'font)
	  'japanese-jisx0208
	  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
	 (set-fontset-font
	  (frame-parameter nil 'font)
	  'japanese-jisx0212
	  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
	 (set-fontset-font
	  (frame-parameter nil 'font)
	  'mule-unicode-0100-24ff
	  '("monaco" . "iso10646-1"))
	 (setq face-font-rescale-alist
		   '(("^-apple-hiragino.*" . 1.2)
			 (".*osaka-bold.*" . 1.2)
			 (".*osaka-medium.*" . 1.2)
			 (".*courier-bold-.*-mac-roman" . 1.0)
			 (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
			 (".*monaco-bold-.*-mac-roman" . 0.9)
			 ("-cdac$" . 1.3))))
  ;; Linux Font
  (when (eq system-type 'gnu/linux)
	(set-face-attribute 'default nil
						:family "Andale Mono"
						:height 80))
										; set ASCII font
  ;; Windows Font
  (when (eq system-type 'windows-nt)
	(set-face-attribute 'default nil
						:family "IPAゴシック"
						:height 100))
  )
