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

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Windows/tcc.png">

To try it out yourself:

1. Download and install latest [TCC/LE](https://jpsoft.com/tccle-cmd-replacement.html).
2. Download and install latest [GNU CoreUtils for Windows](gnuwin32.sourceforge.net/packages/coreutils.htm) and put somewhere on your system (I put mine in `C:\Program Files\JPSoft\TCCLE14x64\`)
3. Download the following files from this repo and put them somewhere on your system (I put mine in `C:\Program Files\JPSoft\TCCLE14x64\`).
	* Download [aliases.txt](https://raw.githubusercontent.com/Barrowclift/Environment/master/Windows/aliases.txt) and change the value of "~" to the full path to your home directory (For example, `C:\Users\Barrowclift\`)
	* Download [batrc.bat](https://raw.githubusercontent.com/Barrowclift/Environment/master/Windows/batrc.bat) and edit your Path accordingly. Also edit the alias path to point to wherever you decided to put `aliases.txt`.
4. Download [TCMD.INI](https://raw.githubusercontent.com/Barrowclift/Environment/master/Windows/TCMD.INI) from this repo and put in `C:\Program Files\JPSoft\TCCLE14x64\` (or, if you did a custom install of TCC/LE, wherever you put the program files directory). Change the history log path variable to somewhere on your system.
5. You're almost there! Right click the TCC/LE application and click "Properties".
6. Change the "Target" to `"C:\Program Files\JPSoft\TCCLE14x64\tcc.exe" /k "C:\Program Files\JPSoft\TCCLE14x64\batrc.bat"`, changing your paths for custom installs as necessary
7. Change the "Start in" to `"C:\Users\MyUsername"`, or wherever you want new windows to open in by default.
8. You're done! Launch TCC/LE, right click the menu bar and click "Properties" to change font size, window dimensions, and base colors as you like. Also, enter `option` in the command line to launch a different, more detailed usage options window should you want to change my prefered options in the provided `TCMD.INI` file.

Sublime Text
------------

### Markdown Build System

For the actual system itself I use [Sublime Text](http://www.sublimetext.com), the [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview) package with a keyboard shortcut to launch the build process, and [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended) for superior Markdown syntax highlighting.

To install yourself, install the necessary dependencies:

* [Sublime Text](http://www.sublimetext.com)
* [Markdown Preview](https://packagecontrol.io/packages/Markdown%20Preview)
* [Markdown Extended](https://packagecontrol.io/packages/Markdown%20Extended) (not actually needed, but *really* nice to have)

Once all those pieces are in place, download the `Markdown Build System` folder from this repository, copy the settings from `MarkdownPreview.sublime-settings` into your own MarkdownPreview Package Settings and change `html_template` to whatever path you wish `markdown-header-template.html` to live (I keep mine in `~/Library/Application Support/Sublime Text 3/Custom Setup`)

Now, when you build Markdown HTML from any Markdown text document Markdown Preview will instead use the custom template and style you've downloaded!

The following themes are included:

#### Avenir

Adapted from [jasonm23](https://github.com/jasonm23)'s [markdown css themes](https://github.com/jasonm23/markdown-css-themes).

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/avenir/preview.png">

#### Barrowclift

Adapted from [my own website's theme](http://barrowclift.me), my default markdown style.

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/barrowclift/preview.png">

#### Long

Based on [James Long](https://twitter.com/jlongster)'s [blog](http://jlongster.com) style.

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/long/preview.png">

#### Scholarly

Adapted from [scholarly markdown](http://scholarlymarkdown.com).

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/scholarly/preview.png">

#### Sublime

Custom, inspired by Sublime Text's Monokai color theme.

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/sublime/preview.png">

#### Ulysses

Adapted from Jonathan Poritsky's [Ulysses III Themes collection](http://www.candlerblog.com/2013/04/11/ulysses-iii-and-marked/).

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/ulysses/preview.png">

#### Words

Adapted from the [Recurse Center](https://www.recurse.com/)'s [Code Words](https://codewords.recurse.com) blog.

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/words/preview.png">

#### Writ

Adapted from [jasonm23](https://github.com/jasonm23)'s [markdown css themes](https://github.com/jasonm23/markdown-css-themes).

<img src="https://raw.githubusercontent.com/Barrowclift/Environment/master/Sublime%20Text/Markdown%20Build%20System/src/writ/preview.png">

### Snippets

Everything from comment blocks to markdown shortcuts, feel free to take a look and explore.

### Preferences

Lots of shortcuts and custom tweaks like auto-closing HTML Tags, wrapping text blocks, workspace manipulations, etc. Included is a slightly modified version of the [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended) color scheme to better match the original Monokai's background and comment foreground colors.