;; Math mode for LaTeX
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)


;; Spellcheck in LaTex mode
(add-hook `latex-mode-hook `flyspell-mode)
(add-hook `tex-mode-hook `flyspell-mode)
(add-hook `bibtex-mode-hook `flyspell-mode)
 

;; Show line-number and column-number in the mode line
(line-number-mode 1)
(column-number-mode 1)


;; Mouse, keyboard, and scrolling
(mouse-wheel-mode t)                                   ;; enable mouse
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; scroll one line at a time
(setq mouse-wheel-scroll-amount '(1))                  ;; scroll one line at a time
(setq mouse-wheel-progressive-speed nil)               ;; Don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't)                     ;; Scroll window under mouse
(setq scroll-step 1)                                   ;; keyboard scroll one line at a time
(setq scroll-preserve-screen-position t)               ;; preserve screen position after page-up / page-down


;; Indentation, tabs
(setq-default indent-tabs-mode nil)                    ;; indent with spaces only (global)
(setq-default default-tab-width 2)                     ;; set tab width to 2 (global)
