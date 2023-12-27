# Dotfiles

This repository stores all my custom configuration for my linux workflow.

It has a branch for [Wayland](https://wayland.freedesktop.org/) and [X](https://www.x.org/wiki/).
For Wayland I use [Sway](https://github.com/swaywm/sway) as a tiling window manager and [Alacritty](https://github.com/alacritty/alacritty) as terminal emulator. For X I use [i3](https://www.x.org/wiki/).
I use [Helix](https://helix-editor.com/) as my primary text editor.
I use the [Everforest Medium Dark](https://github.com/sainnhe/everforest) color scheme for most applications.

## Managing dotfiles

To manage these dotfiles I use [Stow](https://www.gnu.org/software/stow/).
Stow is a simple tool that creates symbolic links from my `~/.dotfiles/` folder to my `~/` folder.
Mirror what your `~/` folder structure should be exactly inside the `~/.dotfiles/` folder, since Stow will create symlinks reflecting the same structure.

To create symbolic links for all the files in the `~/.dotfiles/` folder to the `~/` folder, execute the following command:

```sh
stow ~/.dotfiles/
```
