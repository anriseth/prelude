;;; Code:


(add-to-list 'load-path (expand-file-name "settings" prelude-personal-dir))


;; General stuff
(require 'general-settings)

;; LaTeX
(require 'latex-settings)

;; Disable guru-mode (I like using arrows :p)
; (setq prelude-guru nil)

;; Python and elpy-stuff
(require 'python-settings)

;; Setting up writegood-mode
(require 'writegood-mode)
(global-set-key (kbd "C-c g") 'writegood-mode)


;; Override some keybindings from Prelude
(require 'personal-global-keybindings)

(if (and (< emacs-minor-version 4) (< emacs-major-version 25))
     (progn
      (ad-disable-advice 'kill-region 'before 'smart-cut)
      (ad-activate 'kill-region)
     )
  )

;; yas
(require 'yasnippet)
(yas-global-mode 1)

(provide 'init)
;;; init.el ends here
