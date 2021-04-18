---
layout: page
title: Plan
---

This represents a rough outline of what I'm working on currently:

* ~~Move customized settings to their own file~~
* ~~Auto save and backup file location (via customize)~~ (leaving autosave files at defaults for now)
* Using emacs in server mode on Mac OS. Homebrew now installs a plist file:

```
To have launchd start emacs at login:
    ln -sfv /usr/local/opt/emacs/*.plist ~/Library/LaunchAgents
Then to load emacs now:
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.emacs.plist
```

* Automatic package install. Some examples:
  * [https://github.com/kovan/dopemacs/blob/master/init.el](https://github.com/kovan/dopemacs/blob/master/init.el)
  * [https://github.com/purcell/emacs.d/blob/master/lisp/init-elpa.el](https://github.com/purcell/emacs.d/blob/master/lisp/init-elpa.el)
  * [https://www.reddit.com/r/emacs/comments/2nx91o/packages_and_git/](https://www.reddit.com/r/emacs/comments/2nx91o/packages_and_git/)

```
;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
```

* Adding markdown mode, and using yasnippet for YAML front-matter
* Figuring out if VC mode can handle all my git needs or if magit is needed.
* Turn off Use Dialog Box and Use File Dialog: http://emacshorrors.com/post/yes-or-no
* Flycheck (and various linters): https://github.com/flycheck/flycheck
* Look strongly at web-mode: http://web-mode.org/
* Add jshint with flymake or use js2-mode
* Better defaults: https://github.com/technomancy/better-defaults
* http://www.tonyballantyne.com/EmacsWritingTips.html
* superword/subword mode
* https://www.reddit.com/r/emacs/comments/3v7a0n/can_emacs_use_the_modern_autohiding_os_x_scrollbar/cxl3mkc
* restclient: https://killring.org/2016/01/23/effective-restclient-in-emacs/
* Global line numbers?
* http://ergoemacs.org/emacs/emacs_make_modern.html
* flycheck and eslint: https://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable?newsletter=1&nlcode=387378%7cd9ba
* Figure out eslint (with local node_modules) and prettier
* Consider smex: https://github.com/nonsequitur/smex
* Consider company-mode or some other completion: https://company-mode.github.io/
* Projectile?
