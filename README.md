TSPL-pocket
===========

Re-typesetting [The Scheme Programming Language](http://scheme.com/tspl4/)
4th edtion into epub format by markdown (pandoc). You can easily have a
mobi edition for kindle by kindlegen, or a proper-size pdf (this
requeries a little more work).

I use `pandoc_markdown` as middle format because it's easy to convert to other
formats.  The markdown files are generated from html by pandoc without `--parse-raw`, so
word level references are lost, but section level references are remained.

## BINARY DOWNLOAD

If you don't want to install pandoc which depends on ghc
(although pandoc is a very excellent software), check
[this prebuilt epub](https://github.com/ustcscgy/TSPL-pocket/raw/binary/build/TSPL.epub)
out.

## TODO

Bug fix, minor update.

Read the damn book!

## Status

Pass 1: clean up code blocks | **DONE**

Pass 2: clean up internal references | **DONE**

Pass 3: clean up math stuff | **PARTLY DONE** | some complex images
needed to be converted to tex code

## What have I done?

### Table of Contents

Thanks to pandoc's `implicit_header_references` extension, I just
remove the broken links and use 'implicit header references'.

### Math stuff

Use latex to replace `math/tspl/*.gif`. This is not difficult. But it
seems that there is no epub reader support full mathml or a simple
`$\sqrt{n}$`.

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

Those macros are recorded in `emacs-macros.el`.

### Internal Links/References

Remain page number, followed by a section reference (instead of word
reference).

## BUGS

Multiple return values are not aligned.

## You are welcome to report bugs!
