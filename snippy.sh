 #!/usr/bin/env

# PREREQUISITES
## Make sure you install xdotool, xsel. And xclip!

# Usage: have your folder with text snippet files. 
# Highlight keyword, run shortcut, will replace text.

# Cut highlighed text and send to clipboard
xdotool key --delay 0 ctrl+x

# Build Snippet file path from home
# i.e. ~/snippy/keywordfilename
Snippet=$HOME
Snippet+="/snippets/"
Snippet+=`xclip -o -selection c`

# Cat that file back into xclip
xclip -i -selection c $Snippet

# xdo out
xdotool key --delay 0 ctrl+v
