(menu-bar-mode -1)
(setq x-select-enable-clipboard t)
(prefer-coding-system 'utf-8)
(setq-default truncate-lines nil)
(setq-default indent-tabs-mode nil)
(defalias 'yes-or-no-p 'y-or-n-p)              
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-l" 'end-of-line)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(setq auto-save-default nil)

;;set tabs to two spaces no matter the major mode
(add-hook 'after-change-major-mode-hook
            '(lambda ()
                    (setq-default indent-tabs-mode nil)
                         (setq c-basic-indent 2)
       (setq c-basic-offset 2)
            (setq tab-width 2)))

;; smart beginnning of line functionality
(defun smart-beginning-of-line ()
  "Move point to beginning of line or first non whitespace character"
  (interactive)
  (let ((oldpos (point)))
    (beginning-of-line)
    (and (= oldpos (point))
         (back-to-indentation))))
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key "\C-a" 'smart-beginning-of-line)
