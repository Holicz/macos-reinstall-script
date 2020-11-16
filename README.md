# About
Script for setting up a new MacOS machine according to my needs.

# Running
Place your SSH keys (`id_rsa` and `id_rsa.pub`), Magicprefs settings (`magicpref.plist`) and iTerm settings (`com.googlecode.iterm2.plist`) into the root and run `/bin/bash reinstall.sh`.

## How to get apps settings

### Magic prefs
`defaults export com.vladalexa.MagicPrefs magicpref.plist`

### iTerm2
`defaults export com.googlecode.iterm2 com.googlecode.iterm2.plist`

# To be done
- [ ] Create script to export defaults for apps like iTerm, Magicprefs, etc.
- [ ] Fix pock sha to install it from brew cask
- [ ] Install and configure FileZilla with this
- [ ] Configure Finder sidebar
