(defun idris-better-newline-and-indent ()
  (interactive)
  (delete-trailing-whitespace)
  (idris-newline-and-indent)
  )

(use-package idris-mode
  :ensure t
  :init
  (custom-set-faces
   '(idris-semantic-bound-face ((t (:foreground "#fe8019"))))
   '(idris-semantic-data-face ((t (:foreground "#8ec07c"))))
   '(idris-semantic-function-face ((t (:foreground "#d3869b"))))
   '(idris-semantic-implicit-face ((t (:foreground "#303030"))))
   ;; '(idris-semantic-module-face ((t (:foreground "#"))))
   ;; '(idris-semantic-namespace-face ((t (:foreground "#"))))
   '(idris-semantic-postulate-face ((t (:foreground "#98971a"))))
   '(idris-semantic-type-face ((t (:foreground "#458588"))))
   )
  ;; override newline behaviours
  (evil-define-key 'insert idris-mode-map
    (kbd "RET") 'idris-better-newline-and-indent
    )
  )

(provide 'pkg-idris)
