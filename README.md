# ~

Personal automation and setup.

## Purpose

- Downloads homebrew formulae + casks and app store apps
- Sets up zsh + git config in `~` - aliases, plugins, themes, etc.
- Additional static files

## Usage

Run scripts from `lib/scripts/...`, or execute their commands separately.

### Stow

Stow creates symlinks from a **stow directory** to a **target directory**. Run the following commands to stow files from `dotfile` to `~`.

```sh
cd dotfiles
stow -t ~ .
```

**Reference**

```sh
-d  # stow dir
-t  # target dir
-R  # Restow (update)
-D  # Unstow (remove symlynks)
```
