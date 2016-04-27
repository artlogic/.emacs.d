;;; init.el --- custom config entry point

;; Copyright (c) 2015 James Kruth

;; Author: James Kruth <james@kruth.org>
;; Created: 17 Feb 2015
;; Version: 0.1
;; Keywords: config
;; Homepage: https://artlogic.github.io/.emacs.d/

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the MIT License.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the MIT
;; License for more details.

;; You should have received a copy of the MIT License along with this
;; program. If not, see <http://opensource.org/licenses/MIT>.

;;; Commentary:

;; This file is the entry point for my customized configuration.

;;; Code:

;; save customizations in custom.el
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'missing-ok)

;; customize isn't great a customizing default lists - it would be
;; great if it could append/prepend, but it can't so we do that work
;; here

;; prepend /usr/local/bin to the exec-path
(add-to-list 'exec-path "/usr/local/bin")

;; ignore the node_modules directory
(with-eval-after-load 'grep
  (add-to-list 'grep-find-ignored-directories "node_modules"))

;; setup org mode global keys
;; see http://orgmode.org/manual/Activation.html
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;;; init.el ends here
