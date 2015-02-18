---
layout: post
title:  "Customizing Customize"
date:   2015-12-17 23:45:00
categories: customize
---
Perhaps one of the most incredible aspects of Emacs is its capability of self documentation. You can literally discover and learn about any aspect of Emacs inside of Emacs itself. While [not perfect](http://emacswiki.org/emacs/CustomizingAndSaving#toc3), I believe `M-x customize` embodies that same spirit of discoverability when dealing with simple configuration changes.

Unfortunately, `customize` changes your init.el by default, turning your main configuration file into a disorganized mess rather quickly. Luckily, as with most things in Emacs, this behavior is configurable:

```elisp
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'missing-ok)
```

This bit of code first tells `customize` to store any customizations in `~/.emacs.d/custom.el` and then loads the file. The `'missing-ok` symbol is simply a descriptive non-nil value. It directs `load` to not complain if `custom-file` doesn't exist.

*Commit: https://github.com/artlogic/.emacs.d/commit/d87c91c65f26d782353dfab193c8590b19179f35*
