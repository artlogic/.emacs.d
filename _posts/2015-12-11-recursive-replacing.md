---
layout: post
title:  "Recursive Replacing"
date:   2015-12-11 1:11:00
categories: [tutorial, editing, dired]
---
While this project was originally intended to document my configuration of Emacs, I've decided to broaden it slightly to include an occasional tutorial. Many actions in Emacs have close parallels in other editors, but some common work flows are surprising. I'm hoping that by including a few tutorials  amongst my configuration rationelle I will answer some common questions not just for myself but for anyone else new to Emacs.

Most programmers are familiar with the concept of a recursive search and replace. Before the existence of powerful refactoring tools (like [CEDET](http://cedet.sourceforge.net/)), it was the most obvious way to make sweeping changes to a large multi-file program. If you're like me and haven't quite gotten around to configuring/learning these tools - or if your chosen language doesn't have great refactoring tools - then a recursive search and replace may still be your best bet.

Dired
-----

Wait, what? Dired? Wasn't this post supposed to be about search and replace? This is one of those surprising instances I mentioned above. Dired is an extremely powerful, integral part of Emacs, that's often overlooked as an artifact of a earlier time. In essence it's a file browser (much like the Windows Explorer, or the Mac OS Finder) with an Emacs twist. Anytime you need to operate on some group of files, Dired is generally the answer. Replacing text in a number of files is no exception.

The first thing you need to do is decide on the set of files you'd like to operate on. `find-name-dired` runs the `find` command with an optional wild card filter and returns a dired buffer containing those files. You'll then want to mark all the files by typing `t` in the dired buffer to toggle the mark on all the files. Finally hit `Q` which runs `query-replace-regexp` on each marked file. This is very similar to `M-%` which you may have used on a single file.

Once you've completed your recursive find and replace, make sure to save all the unsaved files by using `C-x s` which runs `save-some-buffers`.

Could it be better?
-------------------

My one complaint about the work flow above is that it's not at all easy to discover. I owe my knowledge of it to a [Stack Overflow answer](http://stackoverflow.com/a/271136/75683). Performing a documentation search for the term recursive (`C-h d recursive`) brings up `rgrep` early in the results. It also helpfully displays `find-name-dired`, but unless you already know dired it's unlikely you'll make the connection to mark the files and use `Q` to query replace in the set. Given that rgrep exists (which is roughly equivalent to running `dired-do-find-regexp` on a set of files), it seems that `rreplace` or something similar should also exist. It would not only improve discoverability, but also remove a few key presses from a common action.
