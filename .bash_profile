# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"


if [ -e /home/0xAckerman/.nix-profile/etc/profile.d/nix.sh ]; then . /home/0xAckerman/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
