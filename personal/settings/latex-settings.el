;-----------;
;;; LaTeX ;;;
;-----------;

;;;; Code:

;; Other things
(add-hook 'TeX-mode-hook 'TeX-source-correlate-mode)
(setq reftex-plug-into-AUCTeX t)

(setenv "TEXMFHOME" "~/.texmf")
;; (add-hook 'TeX-mode-hook '(flyspell-mode t))
(add-hook 'TeX-mode-hook 'turn-on-flyspell)
(add-hook 'TeX-mode-hook 'flyspell-buffer)


(provide 'latex-settings)

;;; latex-settings.el ends here
