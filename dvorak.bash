# dvorak
#
# toggle between dvorak and qwerty easily
#
# Author: Dave Eddy <dave@daveeddy.com>
# Date: 3/2/2013
# License: MIT

# Switch to qwerty
aoeu() {
	if osascript < /dev/null &>/dev/null; then
		# Mac OS X
		osascript -e "
		tell application \"System Events\" to tell process \"SystemUIServer\"
		tell (1st menu bar item of menu bar 1 whose description is \"text input\") to {click, click (menu 1's menu item \"U.S.\")}
		end tell"
	elif [[ -n $DISPLAY ]]; then
		setxkbmap us
	else
		sudo loadkeys us
	fi
}

# Switch to dvorak
asdf() {
	if osascript < /dev/null &>/dev/null; then
		# Mac OS X
		osascript -e "
		tell application \"System Events\" to tell process \"SystemUIServer\"
		tell (1st menu bar item of menu bar 1 whose description is \"text input\") to {click, click (menu 1's menu item \"Dvorak\")}
		end tell"
	elif [[ -n $DISPLAY ]]; then
		setxkbmap dvorak
	else
		sudo loadkeys dvorak
	fi
}
