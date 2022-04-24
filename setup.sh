bash install_plug.sh
bash install_solarized_flattened.sh

cat ~/.vimrc >> ~/.vimrc.backup
: > ~/.vimrc
cat plugins.vimrc >> ~/.vimrc
cat splits.vimrc >> ~/.vimrc
cat folding.vimrc >> ~/.vimrc
cat oddsnends.vimrc >> ~/.vimrc
cat nerdtree.vimrc >> ~/.vimrc
# cat ale.vimrc >> ~/.vimrc
cat coc.vimrc >> ~/.vimrc
cat indent.vimrc >> ~/.vimrc
cat colorscheme.vimrc >> ~/.vimrc
# cat black.vimrc >> ~/.vimrc

vim -c 'PlugInstall | qall'
vim -c 'CocInstall -sync coc-json coc-html|qall'
