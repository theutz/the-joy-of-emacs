;;; early-init.el --- Early Initialization -*- lexical-binding: t; -*-

;;; Author: Michael Utz <michael@theutz.com>
;;; Created: June 30, 2021

;;; Commentary:

;; This file loads even before init.el.  It's a good place to set
;; variables that HAVE to be set, like super early.

;;; Code:

(setq-default straight-use-package-by-default t
	      package-enable-at-startup t)

;;; early-init.el ends here
