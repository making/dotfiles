;; Save backup file on temp dir
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; Install packages
(el-get-install 'dockerfile-mode)
(el-get-install 'go-mode)
(el-get-install 'php-mode)
(el-get-install 'protobuf-mode)
(el-get-install 'markdown-mode)
(el-get-install 'scala-mode)
(el-get-install 'yaml-mode)

;; Show column numer
(column-number-mode t)
;; Backspace
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
;; Undo
(global-set-key "\C-u" 'undo)
