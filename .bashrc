# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.

# This is needed for sway to work.
# Because this laptop has 2 graphic cards, we need to verify that we use the intel one.
# This is done by checking if the /dev/dri/card1 is the intel one.
# I need the intel one because nouveau does not fully support RTX 3060 mobile (laptop) currently (2023).
# The WLR_DRM_DEVICES variable dictates which GPU to use.
gpu_number=$(udevadm info -a -n /dev/dri/card1 | grep boot_vga | rev | cut -c 2)
export WLR_DRM_DEVICES="/dev/dri/card$gpu_number"

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	dbus-run-session sway
fi
