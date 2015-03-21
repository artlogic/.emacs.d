---
layout: post
title:  "Taming Whitespace"
date:   2015-02-25 12:00:00
categories: whitespace
---
The more time you spend collaborating with others, the more time you end up thinking about whitespace. Are spaces or tabs being used? Did I just commit trailing whitespace? Worse, did I just litter my commit with whitespace cleanups that obscure the purpose of the change?

Recently I've found myself preemptively running `delete-trailing-whitespace` before saving enough that I thought I might take the rather heavy-handed step of adding it to the `before-save-hook`. While it certainly solves the problem, it also can introduce changes you didn't mean to make to a commit and lead to a rather lengthy session with `git add -p`.

Thankfully, Emacs includes a global whitespace mode which provides an elegant solution to this problem. Turning it on makes nearly every form of whitespace visible in some way, along with a few additional callouts. After a few minutes it became clear that this is just too much visual noise. I needed a way to visualize *bad* whitespace while ignoring the good.

## Choosing Your Whitespace

Like everything in emacs, `whitespace-mode` can be customized. The `whitespace-style` variable controls which whitespace is visible. Using `customize`, I removed a number of visualizations:

* `spaces`, `space-before-tab`, `space-after-tab`, `space-mark` - anything having to do with visualizing spaces exclusively. I assume whitespace is the space character. Of course spaces still are visualized, but only when they are trailing or part of incorrect indentation.
* `newline`, `newline-mark` - the only time I care to see a newline is at the end of a file, and that didn't seem important enough to display all of them. There's probably a better solution for the end of file case (`indicate-buffer-boundaries` looks interesting).
* `lines` (long lines) - this one I may turn back on, but with a less harsh indicator. The default is extremely distracting, especially in a code base with occasional long lines. More thought is required here.

These customizations call out whitespace I want to see, while letting the rest fade into the background. They work wonderfully to let me know at a glance what's going on in a file, and if I've caused a problem. What they don't do is call out problems actively. 

## Whitespace Actions

While I have a whitespace policy, a lot of other folks don't. When opening a new file, it's helpful to know if my settings will fundamentally change some aspect of the whitespace in the file (or if they should). Once again, Emacs provides the answer.

The `whitespace-action` variable can be customized to perform a number of different actions and warnings on opening a file that contains bogus (the word used by the documentation) whitespace. While most of the actions deal with automatically cleaning things up (either on visiting or saving a buffer), the action I found most useful is `report-on-bogus`. This presents a report when a buffer with bogus whitespace is visited, allowing me to mitigate or ignore the problems as I see fit.

* * *

## Addendum

<p class="post-meta">2015-03-21</p>

It turns out that the `whitespace-action` variable only functions when local (not global) `whitespace-mode` is active. A possible solution here would be to add a hook that runs `whitespace-report` when certain files are loaded regardless of mode. Another option might be to trick `whitespace-action` with a carefully crafted `defadvice`.

* * *

*https://github.com/artlogic/.emacs.d/commit/50a9e5e59b38c77e002168ab895c5777292d7a7d*
