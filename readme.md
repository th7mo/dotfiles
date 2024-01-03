# Dotfiles

This repository stores all my custom configuration for my linux workflow.

## Dependencies

I still use [X](https://www.x.org/wiki/) as my display server.
This is mainly because I have NVIDIA graphics cards, and I never seem to get them working properly in [Wayland](https://wayland.freedesktop.org/).
For a tiling window manager I use [I3](https://i3wm.org/).
It is the most popular and stable window manager for X.
As my primary text editor I use [Helix](https://helix-editor.com/).
I use the [Everforest Medium Dark](https://github.com/sainnhe/everforest) color scheme for most applications.

## Managing dotfiles

To manage these dotfiles I use [Stow](https://www.gnu.org/software/stow/).
Stow is a simple tool that creates symbolic links from my `~/dotfiles/` folder to my `~/` folder.
Mirror what your `~/` folder structure should be exactly inside the `~/dotfiles/` folder, since Stow will create symlinks reflecting the same structure.

To create symbolic links for all the files in the `~/dotfiles/` folder to the `~/` folder, execute the following command:

```sh
stow ~/dotfiles/
```

Or in the repository **at root level**:

```sh
stow .
```

> [!Warning]
> Be careful with where you execute this command.
> Only execute it at the root of the repository, otherwise the symbolic links will be invalid.
> Also be careful when removing symlinks and make sure you have a backup of the original files.

## Gentoo packages

- Xorg: [x11-base/xorg-server](https://packages.gentoo.org/packages/x11-base/xorg-server).
- I3: [x11-wm/i3](https://packages.gentoo.org/packages/x11-wm/i3).
- Helix: [app-editors/helix](https://packages.gentoo.org/packages/app-editors/helix).
- Stow: [app-admin/stow](https://packages.gentoo.org/packages/app-admin/stow).
