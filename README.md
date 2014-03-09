dotdotbox
=========

Use dotdotbox (..box) to configure and update your opinionated Linux desktop inspired by dotfiles and based on ansible playbooks.

The components of this playbook can change over time but as of today, it has the following configured:

 * xmonad
 * zprezto (incl zsh)
 * vim
 * tmux
 * xfce4


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

- Create script to have automated apple wireless keyboard detection
http://www.organicdesign.co.nz/Apple_wireless_keyboard_on_Linux
- Configure and install all the most needed fonts used for coding
- http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#bind-last-window
- http://alexyu.se/content/2012/04/tmux-and-irssi-sitting-tree

the name
--------
dotdotbox or simply "..box" is about taking the concept of sharing .dotfiles and building a repeatable and shareable mechanism to maintain and configure Linux desktop environment.


Authors
--------
Ahti Kitsik - [@ahtik](http://twitter.com/ahtik)
