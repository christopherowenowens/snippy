# snippy
A simple text expander for Linux (KDE)

## What is it? Why a text expander?
**A text expander takes a simple keyword or sequence** -- such as "signature", "auto-reply", or "a1" -- and **expands it into a full entry**. This is useful to prevent typing common phrases over and over again.

### History
In 2015 I was working as the single point of contact for a company's support email queue, and had many common questions which could be answered with a 'canned reply'. Instead of copy-pasting from an existing file -- taking time to CTRL+F or open different files, copy-tab-paste -- **I wanted something I could manually trigger from the keyboard in as few strokes as possible**.

I had used some software for Windows before, but of course, allowing any third party software access to your keystrokes -- especially as most of them 'auto listen' instead of being triggered manually -- is a dangerous proposition, as you're likely passing more than just keystrokes, since many leverage access to your clipboard. There goes your passwords and SSH keys! **I wanted something I knew wasn't keylogging or clipboardjacking.**

As such, I determined to make a simple script to do it myself. As I had recently switched to Linux for my desktop distro, I started looking up simple clipboard tools (xsel) and building a script. I came across [Linux Magazine's 2014 article](http://www.linux-magazine.com/Issues/2014/162/Workspace-Text-Expander) which helped me greatly on my way with this and knowing I wasn't the only one out there.

It took a little tinkering to get it to work in my system as I was using Cinnamon Mint -- although a Debian-Ubuntu derived distro, the methods in the article didn't work immediately.

Fast forward to 2019 when I switched to KDE as my desktop environment, and the previous script I had didn't work out of the box again. So; an hour of tinkering and here we are with a KDE text expander.

### Future Plans
I plan on cleaning this up greatly, maybe adding help / man files, a way to easily add snippets (via a context menu instead of manual file creation), and to include this as part of my forthcoming CLI Tools package. Maybe an easy 'install' script (checking for prerequisites, setting up custom keyboard shortcut etc.)

## Prerequisites
* Make sure you install xdotool, xsel. And xclip!
* This does NOT work on Wayland systems, since it relies on X11 toolkit.

## Usage
* Create the snippy.sh file.
* Use KDE's "Custom Shortcuts" to set a keyboard shortcut (I use ctrl + ~) to run that (i.e. if it's chmod +x, ./snippy.sh; or bash or zsh snippy.sh.)
* Create a folder with txt files with no extension, named as keywords. i.e. a text file named "signature", which contains your full email signature. Depending on usage, you may want to specifically remove the standard blank-line at the end of the file!
* In your word-processor, browser, or text editor, highlight your keyword (i.e. ctrl+shift+left immediately after typing it), and press the shortcut sequence (ctrl + ~).
* Voila! **Blazing fast, keyboard-centric, spyware-free text expander!**