# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

keychain ~/.ssh/id_ed25519
. ~/.keychain/${HOSTNAME}-sh
. ~/.keychain/${HOSTNAME}-sh-gpg
