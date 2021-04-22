#!/bin/bash
#
# Most part is a shameless copy of /etc/bash.bashrc
# Modification:
#	If the unknown command consists purely of the characters `0,+`, often
#	repeated times like 000000,,,, most probably my cat (katze:=DE) made
#	the input. I don't really know, what she tries to perform (scratch herself
#	with da keyboard, most probably), but I think the Linux should recognize her,
#	At least, when she isn't lazy and only hits <enta><enta><enta><enta>.
#
#	This code is licensed under the GPLv3 - I hope you find it useless.
#
#	Version 0.1 Initial commit.
# 	@TODO: create an audiofile to play instead of echo, since the reading abilities
#		of most cats aren't quiet there, to appreciate the greating.
#
#	@INSTALL: Place this file in ~/bin and source it from your ~/.bashrc, to have it
#		active by default. If your cat has its own account and logs in on her own,
#		it is most likely not very impressed by this effort.
#
#	@CONFIGURATION: If your cat happens to have a name, differnt from Shira, modify
#		the assignment to the variable katze and replace it with the name of your
#		cat. Alternatively: Rename your cat to Shira. Either will work.
#
katze=Shira
#
#
function command_not_found_handle {
	# check because c-n-f could've been removed in the meantime
	if [[ $1 =~ [0,+]+ ]]
	then
		echo hallo $katze
	elif [ -x /usr/lib/command-not-found ]; then
	   /usr/lib/command-not-found -- "$1"
	   return $?
	elif [ -x /usr/share/command-not-found/command-not-found ]; then
	   /usr/share/command-not-found/command-not-found -- "$1"
	   return $?
	else
	   printf "%s: command not found\n" "$1" >&2
	   return 127
	fi
}
