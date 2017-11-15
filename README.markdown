Environment
===========

This is a small collection of my various preferences, customizations, and shortcuts used across the various environments I work in.

macOS
-----

### Finder

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Finder/screenshot.png">

There are two fantastic utilities I rely on heavily in my day-to-day computing:

1. [Open in Sublime](https://github.com/pjv/open-in-sublime/wiki) - Opens any files currently selected in [Sublime Text](http://www.sublimetext.com). Included in this project is a personal modification to allow opening directories, as well as Yosemite and El Capitan variant icons. To install the modified "Open in Sublime" script, replace the `main.scpt` in `Contents/Resources/Scripts/` with the one provided in this project.
2. [Go2Shell](http://zipzapmac.com/Go2Shell) - Opens a new Terminal window at the current directory. Included in this project is Yosemite and El Capitan variant icons (Mac App store version of Go2Shell only).

For both scripts' variant icons, follow the steps outlined [here](http://lifehacker.com/5897796/how-to-customize-any-folder-or-app-icon-using-any-image-in-os-x) to apply them.

### Terminal

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Terminal/screenshot.png">

I adore the Monokai color scheme used in [Sublime Text](http://www.sublimetext.com) and decided to style my Terminal windows after it. I also use the vim Monokai style created by [tomasr, which can be found here](https://github.com/tomasr/molokai) and can be installed as a vim plugin.

Also included is a bunch of useful bash aliases and functions which are described in further detail in my article [here](http://barrowclift.me/Post/Making-Terminal-Better/) (required to have file-specific coloring).

### Sip

The ability to snag any color shown on your display at any given time is indispensable in my design work. Sip’s default menu bar icon, however, is far too loud for my tastes.

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Sip/Default.png">

To remedy this, I modified their assets to be far more pleasing to the eye. You can see it in action here.

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Sip/Modified.png">

To install yourself, first [download the replacement assets](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Sip/Assets.car). Then, right click Sip and select "Show Package Contents". From there, navigate to `Contents/Resources` and replace the existing `Assets.car` file.

### Enterprise Menu Bar Icons

Pulse Secure and Symantec QuickMenu's default menu bar icons on macOS are absolutely garish and completely ignore the guidelines outlined by Apple for menu bar icon design.

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Pulse%20Secure/before.png">

Thankfully, you don't have to stare at those unsightly things all day at work, you can use these instead:

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Pulse%20Secure/after.png">

To install yourself, first [download the Pulse Secure](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Pulse%20Secure/) and [Symantec QuickMenu](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Menu%20Bar%20Icons/Symantec%20QuickMenu/) replacement resources, then replace Pulse's default resources at `Pulse Secure.app/Contents/Plugins/JamUI/PulseTray.app/Contents/Resources` and Symantec's default resources at `/Library/Application Support/Symantec/SymUIAgent/PlugIns/SymantecQuickMenu.bundle/Contents/Resources`, then reboot.

### Automator

I also rely heavily on Automator tasks for small tasks like [Merging PDFs](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Automator%20Services/Merge%20PDFs.zip), [Splitting PDFs into PNGs](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Automator%20Services/Split%20PDF%20into%20PNGs.zip), [Making PDFs from Selected Images](https://raw.githubusercontent.com/barrowclift/Environment/master/macOS/Automator%20Services/Make%20PDF%20from%20images.zip), etc. You can find those and some other useful utilities there.

Windows
-------

### Command Line

There was a dark time I was required to use Windows for a former employer. For those who find themselves in similar positions, I generally install [TCC/LE](https://jpsoft.com/tccle-cmd-replacement.html) as a marginally nicer replacement to the horrid Command Line program. When combined with [GNU CoreUtils for Windows](gnuwin32.sourceforge.net/packages/coreutils.htm), it makes a somewhat tolerable command line experience.

<img src="https://raw.githubusercontent.com/barrowclift/Environment/master/Windows/tcc.png">

To try it out yourself:

1. Download and install latest [TCC/LE](https://jpsoft.com/tccle-cmd-replacement.html).
2. Download and install latest [GNU CoreUtils for Windows](gnuwin32.sourceforge.net/packages/coreutils.htm) and put somewhere on your system (I put mine in `C:\Program Files\JPSoft\TCCLE14x64\`)
3. Download the following files from this repo and put them somewhere on your system (I put mine in `C:\Program Files\JPSoft\TCCLE14x64\`).
	* Download [aliases.txt](https://raw.githubusercontent.com/barrowclift/Environment/master/Windows/aliases.txt) and change the value of "~" to the full path to your home directory (For example, `C:\Users\Barrowclift\`)
	* Download [batrc.bat](https://raw.githubusercontent.com/barrowclift/Environment/master/Windows/batrc.bat) and edit your Path accordingly. Also edit the alias path to point to wherever you decided to put `aliases.txt`.
4. Download [TCMD.INI](https://raw.githubusercontent.com/barrowclift/Environment/master/Windows/TCMD.INI) from this repo and put in `C:\Program Files\JPSoft\TCCLE14x64\` (or, if you did a custom install of TCC/LE, wherever you put the program files directory). Change the history log path variable to somewhere on your system.
5. You're almost there! Right click the TCC/LE application and click "Properties".
6. Change the "Target" to `"C:\Program Files\JPSoft\TCCLE14x64\tcc.exe" /k "C:\Program Files\JPSoft\TCCLE14x64\batrc.bat"`, changing your paths for custom installs as necessary
7. Change the "Start in" to `"C:\Users\MyUsername"`, or wherever you want new windows to open in by default.
8. You're done! Launch TCC/LE, right click the menu bar and click "Properties" to change font size, window dimensions, and base colors as you like. Also, enter `option` in the command line to launch a different, more detailed usage options window should you want to change my preferred options in the provided `TCMD.INI` file.

### Keyboard Shortcuts

I use [AutoHotKey](https://autohotkey.com) to edit the standard Windows shortcuts to match the macOS's shortcuts since they're *much* easier to perform (pinkies are nowhere near as dexterous as thumbs). The provided script changes Windows text selection, save, cut, copy, paste, and undo/redo shortcuts to macOS's standards. Install [AutoHotKey](https://autohotkey.com), run it, right click it's icon in the Notification Area, then click "Edit this Script". Copy and paste the contents of [Modified_hotkey.ahk](https://raw.githubusercontent.com/barrowclift/Environment/master/Windows/Modified_hotkey.ahk)) into the new window, save, then right click the icon again and click "Reload This Script". You're comfortable shortcuts should now work!

Sublime Text
------------

### Markdown Build System

After years of research and refinements, I've completed the first Markdown stylesheet I truly adore: Marcdown. [Check it out here](https://barrowclift.me/marcdown/), I think you'll agree.

### Preferences

I've accumulated loads of shortcuts and custom tweaks like auto-closing HTML Tags, wrapping text blocks, workspace manipulations, etc. over the years. Additionally included is a slightly modified version of the [Monokai Extended](https://packagecontrol.io/packages/Monokai%20Extended) color scheme to better match the original Monokai's background and comment foreground colors.