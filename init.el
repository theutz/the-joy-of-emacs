;;;; init.el --- The Joy of Emacs
;; ==============================

;;; Commentary:
;; ------------
;; "We don't have mistakes. We just have happy accidents."

;;; Code:
;; ------

(let ((gc-cons-threshold most-positive-fixnum))
  
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

  ;;; org-mode
  ;; ---------
  ;; “No pressure. Just relax and watch it happen.”
  
  (straight-use-package 'org)
  (require 'org)

  (org-babel-load-file
   (expand-file-name "the-canvas.org" user-emacs-directory))

  ;; “See how it fades right into nothing. That’s just what you’re looking for.”
  (garbage-collect))

(provide 'init)
;;; init.el ends here
