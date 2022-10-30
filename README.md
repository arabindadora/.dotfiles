# .dotfiles
my dotfiles powered by *git bare repo*

## A quick git bare repo tutorial
### on the main system
1. create the dotfiles repo

``sh
git init --bare $HOME/.dotfiles
``
2. create `dotfiles` command

``sh
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
``
3. make dotfiles command ignore untracked files

``sh
dotfiles config --local status.showUntrackedFiles no
``
4. add a remote git repo

``sh
dotfiles remote add origin git@github.com:arabindadora/.dotfiles.git
``
5. add and push dotfiles

``sh
dotfiles add ~/.config/nvim
dotfiles status
dotfiles commit -m "add nvim config"
dotfiles push
``

### on a new system
1. clone the dotfiles repo

``sh
git clone --bare https://github.com/arabindadora/.dotfiles.git $HOME/.dotfiles
``
2. create `dotfiles` command

``sh
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
3. checkout the files

``sh
dotfiles checkout
``

> NOTE: step #3 could error out if the config files are alredy present in $HOME.
> this can be solved by either deleting or renaming the existing files.
