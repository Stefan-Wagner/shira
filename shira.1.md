% shira(1) Version 1.0 | "shira" Documentation

NAME
====

**. shira.sh** activates the shira function, for cat@tty detection.

SYNOPSIS
========

| **. shira**
| **source shira**

DESCRIPTION
===========

Loads the "shira" function into bash (other shells have not been tested). If the cat
enters the keyboard, while the bash session is active, and rubs its head at the edge,
where 0,+ and Enter are locaated at the keyboard, it might trigger a command like
`000,0000,,000++++` which would normally lead to the `command_not_found_handle ()` function
to kick in (not installed on every distro).

This function checks the syntax, and if it matches `"^[,0+-]*$`, the message `Hallo Shira`
is displayed (which you should adjust to the name of your cat, if it isn't "Shira".
Additionally a sound sample, "shira.wav" is played, which is not provided. You have
to record^[For recording, I can recommend `arecord` with a sensible timeout, like
`arecord -d 3s helloMyCat.wav`.] something yourself. For me, it just consists of
my voice, saying "Hallo Shira".^[If you have forgotten the name of your cat, just
say "Hello, my cat!"].

If the detected command does not match the cat pattern, the normal command_not_found_handle,
in Ubuntu-18.04 installed in `/etc/bash.bashrc`, is continued, but it's a copy of
the function, found on my system, so you might compare yours with the provided one.

Options
-------

(None)


FILES
=====

/home/$USER/lib/helloMyCat.wav

:   Audio file to play, when cat is estimated. You might choose a different location,
if you modify the script accordingly.


ENVIRONMENT
===========

BASH Shell

:   Extension of the command_not_found_handle, often shipped with `bash`, maybe with
other shells as well or in a similar way.

BUGS
====

See GitHub Issues: <https://github.com/[owner]/[repo]/issues>

AUTHOR
======

Stefan Wagner <hirnstrom@arcor.de>

LICENSE
=======

This Software is licensed as GPLv.3


SEE ALSO
========

**arecord(1)**, **aplay(3)**, **bash(1)**
