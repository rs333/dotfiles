# dotfiles
A place to keep configuration file preferences for various programs like vim et al.  It is structured so that it can be used with [GNU Stow](https://www.gnu.org/software/stow/) like symlink managers.

## Complete Installation
```bash
cd $HOME
git clone git@github.com:rs333/dotfiles
cd $HOME/dotfiles
git submodule init # Only required for some packages
stow -t $HOME -d packages *
```

## Individual Package Installation
```bash
# Assumes the package was cloned into the $HOME/dotfiles directory
cd $HOME/dotfiles
stow -t $HOME -d packages <package_name>
```

