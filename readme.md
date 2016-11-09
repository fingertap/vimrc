# My vimrc
This is the vimrc file I am currently using. It requires vim 7.0 or later version to support some of the plugins.
## Installation
Clone the `.vimrc`, `.ycm_extra_conf` file to your $HOME directory and run
```sh
mkdir -p ${HOME}/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim ${HOME}/.vim/bundle/Vundle.vim
```
Then open vim and run `:PluginInstall`. After installation of all plugins, install `ctags` for `tagbar` plugin. On Arch linux
```
sudo pacman -S ctags
```
Ubuntu
```
sudo apt-get install ctags
```
CentOS
```
sudo yum install ctags
```
Notice that in CentOS you may need to compile a vim with version later than 7.0 to get all features of plugins working.
Next you need to compile `YouCompleteMe` as stated [here](https://github.com/Valloric/YouCompleteMe).
## Bugs
Due to an vim 8.0 bug, I disabled the `tagbar` plugin in it. One can easily enable it by uncommenting the line
```rc
"autocmd VimEnter * nested :call tagbar#autoopen(1)
```
