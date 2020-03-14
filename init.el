;;;; init.el --- The Joy of Emacs
;; ==============================

;;; Commentary:
;;
;; "We don't have mistakes. We just have happy accidents."

;;; Code:

;;; straight.el
;; ------------
;; "There's nothing wrong with having a tree as a friend."

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;;; init.el ends here
