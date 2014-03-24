dotdotbox
=========

Use dotdotbox (..box) to configure and update your opinionated Linux desktop inspired by dotfiles and based on ansible playbooks.

The components of this playbook can change over time but as of today, it has the following configured (at this stage ..box is INCOMPLETE & IN PROGRESS, not everything works, this page will be updated as the first functional release is out!):

 * xmonad
 * xfce4
 * OR more intense customization of unity...?

 * https://github.com/robbyrussell/oh-my-zsh (not zprezto as initially planned and what I'm using right now)
 * vim
 * tmux
 * xfce4
 * additional fonts for programmers
 * font rendering tweaks
 * java
 * apple wireless keyboard
 * easy sound output switch
 * support for mechanical audio volume knobs (external sound cards that support it) (TODO: Check if this is still an issue, maybe works alright with unity. Is not working out of box with xmonad!)
 * dropbox
 * estonian ID card support
 * yubico 2FA token

Building from scratch
---------------------
```
# Create a virtualbox to check out if dotdotbox suits your needs
./create.sh

# Run in your system to setup or upgrade if already set up.
./update.sh
```

TODO
----
Current TODO:
- Trying to get Unity as tweaked as possible with 14.04LTS:
  - Update vagrant scripts to build the latest 14.04.LTS desktop.
  - Ensure font role works properly

Unorganized TODO:
- Figure out the DE&WM to use.. (still xmonad (my current laptop conf)?)
- Remap Capslock to Ctrl
- Create script to have automated apple wireless keyboard detection
http://www.organicdesign.co.nz/Apple_wireless_keyboard_on_Linux
- Configure and install all the most needed fonts used for coding
- http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#bind-last-window
- http://alexyu.se/content/2012/04/tmux-and-irssi-sitting-tree
- Check out https://github.com/thoughtbot/dotfiles for ideas

the name
--------
dotdotbox or simply "..box" is about taking the concept of sharing .dotfiles and building a repeatable and shareable mechanism to maintain and configure Linux desktop environment.


Authors
--------
Ahti Kitsik - [@ahtik](http://twitter.com/ahtik)
