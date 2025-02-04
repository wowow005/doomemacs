;; -*- no-byte-compile: t; -*-
;;; ui/treemacs/packages.el

(package! treemacs :pin "e4bb236bd5cd7c077c2207b33d2699485c405536")
;; These packages have no :pin because they're in the same repo
(when (modulep! :editor evil +everywhere)
  (package! treemacs-evil))
(package! treemacs-projectile)
(when (modulep! :tools magit)
  (package! treemacs-magit))
(when (modulep! :ui workspaces)
  (package! treemacs-persp))
(when (modulep! +lsp)
  (package! lsp-treemacs :pin "f7ae97560cfbc88e781a2d5b9253dace7175b918"))
