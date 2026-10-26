# dotfiles

Fork of [freekmurze/dotfiles](https://github.com/freekmurze/dotfiles), adapted.

## New Mac

1. Copy secrets over from the old Mac (not in git): `~/.ssh`, `~/.zshrc.local`, `~/.config`, `~/.gitconfig`.
2. `git clone git@github.com:SudoGetBeer/dotfiles.git ~/.dotfiles && ~/.dotfiles/bootstrap`
3. Sign in to Dropbox, then `mackup restore`.
4. Install App Store / vendor apps by hand (not in the Brewfile).

Refresh the app list with `brew bundle dump --file=~/.dotfiles/Brewfile --force`.
