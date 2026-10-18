# dotfiles
A place to keep configuration file preferences for various programs like vim et al.  It is structured so that it can be used with [GNU Stow](https://www.gnu.org/software/stow/) like symlink managers.

## Installation
```bash
cd $HOME
git clone git@github.com:rs333/dotfiles
cd $HOME/dotfiles
git submodule update --init      
```

## Individual Package Installation
These commands assume `stow` is executed from the dotfiles directory and that the `--target` and `--dir` settings are properly assigned in the `.stowrc` file.
```bash
cd $HOME/dotfiles
stow <package_name>                 # from packages/
stow -d internal <package_name>     # from internal/
```

```bash
stow hypr && stow -d internal hypr-internal-example
stow hypr hypr-home                       
```
