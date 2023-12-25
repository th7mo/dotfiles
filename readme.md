# Dotfiles

This repository stores all my custom configuration for my linux workflow.
I use [Sway](https://github.com/swaywm/sway) as a tiling window manager, [Alacritty](https://github.com/alacritty/alacritty) as terminal emulator and [Helix](https://helix-editor.com/) as my primary text editor.

## Managing dotfiles

To manage these dotfiles I use [Stow](https://www.gnu.org/software/stow/).
Stow is a simple tool that creates symbolic links from my `~/.dotfiles/` folder to my `~/` folder.
Mirror what your `~/` folder structure should be exactly inside the `~/.dotfiles/` folder, since Stow will create symlinks reflecting the same structure.

To create symbolic links for all the files in the `~/.dotfiles` folder to the `~/` folder, execute the following command:

```sh
stow ~/.dotfiles/
```
