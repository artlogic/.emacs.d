---
layout: post
title:  "Clean Backups"
date:   2015-04-17 19:40:00
categories: backups
---

These days I spend most of my time working on files under version control, but on those increasingly rare occasions when I'm working with unversioned files I can't help but notice Emacs' automatic backup files. If you've worked with emacs for any length of time you've no doubt noticed the proliferation of files ending in `~` it helpfully creates.

I think perhaps once in the past five years I've actually used one of these backup files to recover changes I didn't mean to make. The rest of the time they are a minor annoyance. But Emacs wouldn't be Emacs if it didn't give us a way to take care of minor annoyances.

The `backup-directory-alist` variable allows Emacs to choose which files to backup and where. Each entry is a cons cell. The left entry is a regular expression to choose files. The right entry is the location to put the files. The most common usage involves moving all backups to single folder, like so:

```elisp
("." . "~/.emacs.d/backups/")
```

One really cool aspect of this is that Emacs, sensing we're putting all the backups in a single location, renames the files to avoid collisions and keep things organized.

***

<https://github.com/artlogic/.emacs.d/commit/e6963e3f8c5b2dc2ad2983443e026823e3b6d4b5>
