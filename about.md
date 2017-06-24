---
layout: page
title: About
---

After using [GNU Emacs](https://www.gnu.org/software/emacs/) as my main editor for over two years, I came to the conclusion that learning Emacs isn't nearly so hard as configuring Emacs. Of course, I'm not the only one who's discovered this fact. Nearly a dozen Emacs starter configurations of varying quality have been created to bridge the gap between Emacs' default state and a "modern" editor. Then there are countless blogs, screencasts, and forums dedicated to the endless pursuit of turning Emacs into just about anything. This is something different.

Over the course of using Emacs, the configuration file tends to accumulate a good bit of cruft. Every few months I found I was doing Emacs spring cleaning. Eventually I put the file under version control so I could at least understand why I had added certain lines. While this helped, it still felt inadequate. Commit messages don't lend themselves to telling a story.

I realized I needed the electronic equivalent of a lab notebook. Something that would allow me to document the story behind each change, not just the immediate intention. Since I was using [Git](http://git-scm.com/) to manage the config file, using [Jekyll](http://jekyllrb.com/) and [Github Pages](https://pages.github.com/) was an obvious choice. Each commit, or logical group of commits will be associated with a post telling the story of the change, creating a narrative of the configuration process.

Methodology
-----------

Before embarking on any big project (and configuring Emacs is by many accounts a lifelong endeavor), it's helpful to set a few ground rules. In my case, I wanted to force myself to [empty my cup](http://sachachua.com/blog/2015/02/getting-started-emacs-empty-cup/). Here are my rules:

* **One change at a time.** This forces me to understand and carefully consider each change. It disallows using something like a [Emacs Prelude](https://github.com/bbatsov/prelude), which is an amalgamation of many changes.
* **Use vanilla Emacs where possible.** Emacs comes with a lot of capability and configuration already built in. Instead of changing settings to fit my worldview, attempt to adopt the "Emacs way" if possible. Changes to default behavior should be very carefully considered.
* **Choose packages conservatively.** With the advent of package.el and ELPA, thousands of packages became very easy to install. Many of these packages offer variations on existing functionality. The preference must be to use bundled packages unless a third party package offers a critical feature or capability.
* **Use Emacs to configure Emacs.** Emacs has a great capability to configure itself through `customize`. Rather than forcing all configuration to be custom written, allow emacs to manage all but the most complicated aspects of configuration, leaving the everyday drudgery to the computer, rather than the user.

These rules, combined with a with a simple [plan]({{ site.baseurl }}/plan/) provide the framework for my configuration narrative.
