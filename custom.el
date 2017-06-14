(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups/"))))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(electric-pair-mode t)
 '(global-whitespace-mode t)
 '(ido-auto-merge-delay-time 7)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js-switch-indent-offset 2)
 '(org-agenda-files (quote ("~/Dropbox/GTD/action.org")))
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "" "Tasks")
      "* TODO %i%?")
     ("w" "Waiting on" entry
      (file+headline "" "Tasks")
      "* WAIT %i%?")
     ("n" "Note" entry
      (file+headline "" "Notes")
      "* %i%?")
     ("d" "Deadline tasks")
     ("dt" "Deadline todo" entry
      (file+headline "" "Tasks")
      "* TODO %i%?
  DEADLINE: %^{Deadline}t")
     ("dw" "Deadline waiting on" entry
      (file+headline "" "Tasks")
      "* WAIT %i%?
  DEADLINE: %^{Deadline}t"))))
 '(org-default-notes-file "~/Dropbox/GTD/inbox.org")
 '(org-load-hook (quote (turn-on-visual-line-mode)))
 '(org-log-done (quote time))
 '(org-refile-allow-creating-parent-nodes (quote confirm))
 '(org-refile-targets
   (quote
    (("~/Dropbox/GTD/action.org" :maxlevel . 9)
     ("~/Dropbox/GTD/future.org" :maxlevel . 9)
     ("~/Dropbox/GTD/project.org" :maxlevel . 9)
     (nil :maxlevel . 9))))
 '(org-refile-use-outline-path (quote file))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "WAIT(w)" "DONE(d)"))))
 '(require-final-newline t)
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(whitespace-action (quote (report-on-bogus)))
 '(whitespace-style (quote (face tabs trailing indentation empty tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
