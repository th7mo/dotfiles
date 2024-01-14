# Dotfiles

This repository stores all my custom configuration for my Linux workflow.

## Dependencies

As my primary text editor I use [Helix](https://helix-editor.com/).

## Managing dotfiles

To manage these dotfiles I use [Stow](https://www.gnu.org/software/stow/).
Install Stow by executing the following command:

```sh
sudo apt install stow
```

Stow is a simple tool that creates symbolic links from the `~/dotfiles/` folder to the `~/` home folder.
Mirror what the `~/` folder structure should be exactly inside the `~/dotfiles/` folder, since Stow will create symlinks reflecting the same structure.

To create symbolic links for all the files in the `~/dotfiles/` folder to the `~/` folder, execute the following command:

```sh
stow ~/dotfiles/
```

Or in the repository **at root level**:

```sh
stow .
```

> [!WARNING]
> Be careful with where to execute this command.
> Only execute `stow .` at the root of the repository, otherwise the symbolic links will be invalid.
> Also be careful when removing symlinks and make sure to have a backup of the original configuration files (dotfiles).
