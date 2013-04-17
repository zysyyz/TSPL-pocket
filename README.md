TSPL-pocket
===========

Re-typesetting [The Scheme Programming Language](http://scheme.com/tspl4/)
4th edtion into epub format by markdown(pandoc).

I use pandoc_markdown as middle format because it's easy to convert to other
formats. The markdown files are generated by pandoc without `--parse-raw`, so
word level references are lost, but section level references are remained.

## BINARY DOWNLOAD

If you don't want to install pandoc which depends on a huge haskell
compiler(although pandoc is a very excellent software), check
[this](https://github.com/ustcscgy/TSPL-pocket/blob/epub-binary-alpha2/build/TSPL-alpha2.epub)
out.

## TODO

1. Typeset math using latex to replace gifs. (DOING)

## Status

Pass 1: clean up code blocks | **DONE**

Pass 2: clean up internal references | **DONE**

Pass 3: clean up math stuff | **DOING**

### Done section

### Doing section

Ch1

## What have I done?

### Table of Contents

Thanks to pandoc's `implicit_header_references` extension, I just
remove the broken links and use 'implicit header references'.

### Math stuff

Use latex to replace `math/tspl/*.gif`. This is not difficult.

### Code stuff

This is a little complicated. The original html files use
![](http://scheme.com/tspl4/math/tspl/0.gif) in almost every piece of
code, so pandoc simply ignores them. It's a hard work to insert
`` `$\Rightarrow$` `` into those blanks left by the missing images. But
thankfully, the original code blocks in html are using no-break space
`&nbsp;` which is different from normal blank space. After translated
into markdown files, normal space are inserted to replace `<br>`, but
those "no-break space" remained. Thus, two normal blank spaces mean to
insert a `<br>` and two no-break spaces mean to insert a
`` `$\Rightarrow$` ``. So I decide to use Emacs macros to insert
`` `$\Rightarrow$` `` and `<br>` back to their proper postion.

Those macros are recorded in emacs-macros.el.

### Internal Links/References

Remain page number, followed by a section reference(instead of word
reference).

## BUGS

Multiple return values are not aligned.

## You are welcome to report bugs!
