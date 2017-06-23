---
layout: post
title: An Eternal Holy War
categories: [indenting, whitespace]
---
Arguably, no group of people care about whitespace as much as programmers do. While typographers may come in a close second, they care solely about the *look* of the whitespace. While programmers are not without their opinions on the look of whitespace (2 spaces, 4 spaces, or... 8 spaces, you heretic!), we tend to care a great deal more about the underlying mechanism that creates that look. I've already written about the hidden complexity of [line endings]({% post_url 2015-08-07-the-final-newline %}). Today I'd like to talk about indenting.

Most programming languages suggest, or in some cases require you to indent blocks of code. Nested blocks are indented further. Here's an example in [Python](https://www.python.org/):

```python
def fib(n):
    a, b = 0, 1
    while a < n:
        print(a, end=' ')
        a, b = b, a+b
    print()
```

Programmers indent code to communicate structure, organization, and above all, intent. We also use indenting as a quick visual check of the complexity of the code we're working on. Deeply indented code generally indicates complexity. Indenting is so important that some languages (such as Python) have adopted it as syntax.

The tab key was originally introduced on typewriters for tabular data. You could set tabstops horizontally across the paper and then hit the tab key to instantly travel to the next one, saving you from manually positioning. During the 60s, when typewriters were being converted into teletypes, the ASCII standard formalized the tab key as ASCII 9 Horizontal Tab (interesting, there's also the much lesser known ASCII 11 Vertical Tab). I'd like to imagine that shortly thereafter programmers began arguing with each other over it's use.

How the tab key functions on your computer is very specific to the current program running. It might simply shift the cursor to another position. It might shift the cursor and insert a tab character in the file you are editing. It might move you to the next field in a form. It might do nothing. Since we're talking about text editors here, I'll focus on the move the cursor and insert a tab character case.

The key contention with tab characters centers around how many visual spaces a tab character occupies. This is something that's configurable in any capable editor.

Explain how spaces can provide the same function.

Explain why I've chosen spaces vs tabs in almost all cases (except for make where they are required)

Mention the JWZ article. Mention the JS spacing choice.

https://www.jwz.org/doc/tabs-vs-spaces.html

***

<https://github.com/artlogic/.emacs.d/commit/eddf8c815b6969d75145e31c7d13c2498eec6fd0>
