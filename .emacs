;;;Ryan Schwers
;;; Path stuff
(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

;;; General ELISP Source Directory
(add-to-list 'load-path "/Users/schwers/src/elisp/")
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;; Indenting and Stuff
(global-font-lock-mode t)
(global-auto-revert-mode t)
(setq c-basic-indent 2
      tab-width 4
      indent-tabs-mode nil)

(set-scroll-bar-mode nil)
(setq scroll-margin 0
      scroll-conservatively 999999
      scroll-preserve-screen-position t
      mouse-wheel-scroll-amount '(1 ((shift) .1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse t)

(setq ring-bell-function 'ignore)
(global-linum-mode t)

;;; OS X Stuff
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;; Lisp/Clojure/Scheme
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode t)

(setq scheme-program-mode "scm")

;;; Color Theme Settings
(load "/Users/schwers/src/elisp/theme")
(set-default-font "Monaco 10")

;;; ack
(add-to-list 'load-path "/Users/schwers/src/elisp/ack-and-a-half/")
(autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
(global-set-key (kbd "M-r") 'ack)
(global-set-key (kbd "C-r") 'ack-same)

;;; Python awessomeness
(add-to-list 'load-path "/Users/schwers/src/elisp/python-mode/")
(setq py-install-directory "Users/schwers/src/elisp/python-mode")
(require 'python-mode)
(autoload 'python-mode "python-mode" "Python Editing" t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(add-to-list 'auto-mode-alist '("\\.mako\\'" . html-mode))

;; (add-to-list 'load-path "/Users/schwers/src/elisp/wheel/")
;; (require 'flymake-pychecker)
;; (add-hook 'python-mode-hook (lambda () (flymake-mode t)))

;; (defun flymake-hooks ()
;;   ;; Bind a few keys for navigating errors
;;   (local-set-key (kbd "C-c w") 'show-fly-err-at-point)
;;   (local-set-key (kbd "M-n") 'flymake-goto-next-error)
;;   (local-set-key (kbd "M-p") 'flymake-goto-prev-error))

;;; Coffee-Script Stuff
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 4))
(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))


;;; SCSS Stuff
(add-to-list 'load-path (expand-file-name "/Users/schwers/src/elisp/scss-mode"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-hook 'scss-mode '(lambda () (setq css-indent-offset 2)))

