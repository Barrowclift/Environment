Environment
===========

This is a small collection of my various preferences, customizations, and shortcuts used across the various environments I work in.

OS X
----

### Finder

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/OS%20X/Finder/screenshot.png">

There are two fantastic utilities I rely on heavily in my day-to-day computing:

1. [Open in Sublime](https://github.com/pjv/open-in-sublime/wiki) - Opens any given folder(s) or file(s) currently selected in [Sublime Text](http://www.sublimetext.com)
2. [Go2Shell](http://zipzapmac.com/Go2Shell) - Opens a new Terminal window at the current location

While these utilities are indispensable to my workflow the icons they come with sadly do not match the other standard OS X / Finder buttons and look horribly out of place. To help make them fit in better with the surrounding buttons I have made my own, both in the "Yosemite" and "El Capitan" style. Follow the steps [here](http://lifehacker.com/5897796/how-to-customize-any-folder-or-app-icon-using-any-image-in-os-x) to use them yourself.

### Terminal

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/OS%20X/Terminal/screenshot.png">

I adore the Monokai color scheme used in [Sublime Text](http://www.sublimetext.com) and decided to style my Terminal windows after it. I also use the vim Monokai style created by [tomasr, which can be found here](https://github.com/tomasr/molokai) and installed as a vim plugin.

Also included is a bunch of useful bash aliases and functions which are described in further detail in my article [here](http://barrowclift.me/Post/Making-Terminal-Better/).

### Automator

I also rely heavily on Automator tasks for small tasks like [Merging PDFs](https://raw.githubusercontent.com/Barrowclift/Environment/master/OS%20X/Automator%20Services/Merge%20PDFs.workflow), [Splitting PDFs into PNGs](https://raw.githubusercontent.com/Barrowclift/Environment/master/OS%20X/Automator%20Services/Split%20PDF%20into%20PNGs.workflow), [Making PDFs from Selected Images](https://raw.githubusercontent.com/Barrowclift/Environment/master/OS%20X/Automator%20Services/Make%20PDF%20from%20images.workflow), etc. You can find those and some other useful utilities there.

Windows
-------

For the times when I do have to use Windows, I generally install [TCC/LE](https://jpsoft.com/tccle-cmd-replacement.html), which is more or less a marginally nicer version of the horrid Command Line program. Combined with [GNU CoreUtils for Windows](gnuwin32.sourceforge.net/packages/coreutils.htm) makes a somewhat tolerable command line experience.

Sublime Text
------------

### Markdown Build System

The stylesheet I use for the build system is my own take on the wonderful [roryg-ghostwriter](http://mixu.net/markdown-styles/#roryg_ghostwriter__new__) template provided at [mixu.net](mixu.net), please support their work.

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/screenshot-1.png">

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/screenshot-2.png">

--------------------------------------

For the actual system itself I use [Sublime Text](http://www.sublimetext.com), the [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview) package with a keyboard shortcut to launch the build process, and [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended) for superior Markdown syntax highlighting.

--------------------------------------

To install yourself, install the necessary dependencies:

* [Sublime Text](http://www.sublimetext.com)
* [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview)
* [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended) (not actually needed, but *really* nice to have)

Once all those pieces are in place, download the `Markdown Build System` folder from this repository, copy the settings from `MarkdownPreview.sublime-settings` into your own MarkdownPreview Package Settings and change `html_template` to whatever path you wish `markdown-header-template.html` to live (I keep mine in `~/Library/Application Support/Sublime Text 3/Custom Setup`)

Now, when you build Markdown HTML from any Markdown text document Markdown Preview will instead use the custom template and style you've downloaded!

### Snippets

Everything from comment blocks to markdown shortcuts, feel free to take a look and explore.

### Preferences

Lots of shortcuts and custom tweaks like auto-closing HTML Tags, wrapping text blocks, workspace manipulations, etc. Included is a slightly modified version of the [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended) color scheme to better match the original Monokai's background and comment foreground colors.
