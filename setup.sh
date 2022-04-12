bash install_plug.sh

cat ~/.vimrc >> ~/.vimrc.backup
: > ~/.vimrc
cat plugins.vimrc >> ~/.vimrc
cat splits.vimrc >> ~/.vimrc
cat folding.vimrc >> ~/.vimrc
cat oddsnends.vimrc >> ~/.vimrc
cat nerdtree.vimrc >> ~/.vimrc
# cat ale.vimrc >> ~/.vimrc
cat coc.vimrc >> ~/.vimrc
# cat black.vimrc >> ~/.vimrc
