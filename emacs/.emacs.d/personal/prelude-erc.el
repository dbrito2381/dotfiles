;; Set erc-prompt-for-password to nil to use
;; $HOME/.authinfo.gpg encrypted credentials
(use-package erc
  :ensure t
  :config
  (setq whitespace-global-modes '(not erc-mode))
  (setq erc-prompt-for-password nil)
  (setq erc-autojoin-channels-alist
        '(("freenode.net" "#clojure")
          ("freenode.net" "#racket")))
  (erc-services-mode 1)
  (defun personal/connect-to-freenode ()
    (interactive)
    (erc :server "irc.freenode.net"
         :nick "dbrito"
         :full-name "Daniel Brito"))
  :bind ("<f9>" . personal/connect-to-freenode))
