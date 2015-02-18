;;; init.el --- custom config entry point

;; Copyright (c) 2015 James Kruth

;; Author: James Kruth <james@kruth.org>
;; URL: https://artlogic.github.io/.emacs.d/
;; Version: 0.1
;; Keywords: config

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file is the entry point for my customized configuration.

;;; Code:

;; save customizations in custom.el
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'missing-ok)
