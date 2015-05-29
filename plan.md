---
layout: page
title: Plan
permalink: /plan/
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
* Adding markdown mode, and using yasnippet for YAML front-matter
* Figuring out if VC mode can handle all my git needs or if magit is needed.
* Turn off Use Dialog Box and Use File Dialog: http://emacshorrors.com/post/yes-or-no
* Flycheck (and various linters): https://github.com/flycheck/flycheck
* Look strongly at web-mode: http://web-mode.org/
* Think about evil or spacemacs