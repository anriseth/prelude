;;; Code:

;; Tabs to space
(defun untabify-buffer ()
  "Untabify the whole (accessible part of the) current buffer"
  (interactive)
  (save-excursion
    (untabify (point-min) (point-max))))

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
;;(global-set-key [f12] 'indent-buffer)

;; Space saver
(setq-default tab-width 2)

;; don't show the scroll bar
(scroll-bar-mode -1)

;; use shift to move around windows
(windmove-default-keybindings 'shift)

;; Add stuff to all text-modes
(prelude-require-packages '(smartparens writegood-mode))
(require 'smartparens)
(require 'writegood-mode)

(defun riseth-text-mode-defaults ()
  "Default hooks for text `text-mode'."
  (turn-on-auto-fill)
  (smartparens-mode +1)
  (writegood-mode +1))

(setq riseth-text-mode-hook 'riseth-text-mode-defaults)
(add-hook 'text-mode-hook (lambda ()
                            (run-hooks 'riseth-text-mode-hook)))

(provide 'general-settings)

;;; general-settings.el ends here
