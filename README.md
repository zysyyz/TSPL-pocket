TSPL-pocket
===========

Re-typesetting [The Scheme Programming Language](http://scheme.com/tspl4/)
4th edtion into epub format by markdown(pandoc).

We use pandoc_markdown as middle format because it's easy to convert to other
formats. The markdown files are generated by pandoc without `--parse-raw`, so
word level references are lost, but section level references are remained.

## TODO

1. Typeset math using latex to replace gifs.
2. Repair broken internal sectional level links.

## Status

Pass 1: clean code blocks | DOING

### Done

* Ch1
* Ch2
* Ch3
* Ch4
* Ch5
* Ch6
* Ch7

### Doing

Ch8

## What do I do?

### Table of Contents

Thanks to pandoc's `implicit_header_references` extension, I just remove the broken links and use 'implicit header references'.

### Math stuff

Use latex to replace `math/tspl/*.gif`. This is not difficult.

### Code stuff

This is a little complicated. The original html files use
![](http://scheme.com/tspl4/math/tspl/0.gif) in almost every piece of
code, so pandoc simply ignores them. It's a hard work to insert
```$\Rightarrow$``` into those blanks left by the missing images. But
thankfully, the original code blocks in html are using no-break space
`&nbsp;` which is different from normal blank space. After translated
into markdown files, normal space are inserted to replace `<br>`, but
those "no-break space" remained. Thus, two normal blank spaces mean to
insert a `<br>` and two no-break spaces mean to insert a
```$\Rightarrow$```. So I decide to use Emacs macros to insert
```$\Rightarrow$``` and `<br>` back to their proper postion.

Those macros are recorded in emacs-macros.el.

## BUGS

Multiple values are not aligned.

## You are welcome to report bugs!
