(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

(setq slime-contribs '(slime-fancy)) ; almost everything

(setq-default indent-tabs-mode nil)

