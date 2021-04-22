# shira #

![Shira cat icon](./shira128x128.png){ width=100% }

**shira** is an extension of the command-not-found-function, often provided with bash.

## RATIONALE ##

Cat owners often experience, that the cat performs its own input, mainly on the lower
left corner of the keyboard, where they scratch their head. Accidentally they perform
input to the shell (if you happen to work a lot in the shell - else they do it in
the writer/editor/eclipse/whatever) which need their ownn treatment for this issue,
which is almost always responded in a not too welcoming way like .

If the unknown command consists purely of the characters `0,+`, often
repeated times like 000000,,,, most probably my cat (katze:=DE) made
the input. I don't really know, what she tries to perform (scratch herself
with da keyboard, most probably), but I think the Linux should recognize her,
At least, when she isn't lazy and only hits <enta><enta><enta><enta>.

## LICENSE ##

This code is licensed under the GPLv3 - I hope you find it useless.

##	Version 0.1 ##

### Initial commit ###

## TODO ##

 - create an audiofile to play instead of echo, since the reading abilities
	of most cats aren't quiet there, to appreciate the greating.

## INSTALL ##

Place this file in ~/bin and source it from your ~/.bashrc, to have it
active by default. If your cat has its own account and logs in on her own,
it is most likely not very impressed by this effort.

## CONFIGURATION ##

If your cat happens to have a name, differnt from Shira, modify
the assignment to the variable katze and replace it with the name of your
cat. Alternatively: Rename your cat to Shira. Either will work.

## ACKNOWLEDGEMENTS ##

Most part is a shameless copy of my (Xubuntu 18.04) /etc/bash.bashrc.
For files, not matching the regex pattern `[0,+]+`, this function shouldn't
have any side effect, apart from a minor longer execution time.

## BUGS ##

Nothing known, so far


