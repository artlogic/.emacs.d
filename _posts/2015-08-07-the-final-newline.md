---
layout: post
title:  "The Final Newline"
date:   2015-08-07 23:32:00
categories: whitespace
---

Line ending whitespace has a [long and surprisingly interesting history](https://en.wikipedia.org/wiki/Newline). Carriage returns and line feeds both herald from a time when [teletypes](https://en.wikipedia.org/wiki/Teleprinter) ruled the world. When literally the typewriter carriage had to return, and the paper had to feed up a line. Despite their lack of modern meaning, most operating systems end (or start) lines with ASCII 10 (or UTF-8 10 for those sticklers out there) - line feed. One modern operating system STILL ends lines with both a carriage return and a line feed, wasting terabytes of storage thanks to vestigial whitespace.

Since we've dived into the depths of computing esoterica, we may as well ask a is it a newline or is it an endline? Is there a difference? Does it matter? As with most things, it all depends on your perspective.

Newlines
--------

The concept of certain whitespace creating a "new line" is something most programmers pick up from their languages. The escaped representation is `\n`, and most documentation refers to this as a newline character (thanks to the lingering inconsistency, mostly). This character has the effect of literally moving your cursor to a new line. By that reasoning, the name makes plenty of sense.

One consequence of thinking of of newlines in this way is that, if you don't plan on printing a new line, then you don't include a newline on the end of your string. Because most programming languages include the character automatically this rarely happens, leading to occasional confusion when a line is printed without the previous line having a newline.

Endlines
--------

When you move from the world of characters to lines, line feeds and carriage returns start looking an integral part of your text. Every (complete) line ends with a line ending character, often referred to as an endline. There's no technical difference between an endline and a newline - same character, different perspective.

The only line that may not have an endline is the very last line of the file. That's where it all gets interesting - if you're the kind of person that thinks arguments about whitespace are interesting.

Perspective
-----------

The question of if every line should end with a line ending character depends on your perspective. A few years ago, in the midst of a large project, the above dialog played out in my head (seemingly endlessly). When there are big problems to be solved the little problems grow in importance to compete. I suddenly *needed* to have a final line policy.

In the midst of all this, I offered to debug a small program for a friend (again, avoiding larger problems) and was annoyed when my command prompt appeared directly after it's output, instead of on a new line. Suddenly, I was enlightened. I decided every line, even the last line needs to end with an endline - a term I now use nearly exclusively.

It should be no surprise that Emacs has a setting to help me spread my endline agenda to every file I edit: `require-final-newline`. Files with missing final endlines beware. I'm coming for you.

***

<https://github.com/artlogic/.emacs.d/commit/2a0df521be77365dbd3e602da18286fb8f699fc7>
