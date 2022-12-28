bash install_plug.sh
#bash install_solarized_flattened.sh

cat ~/.vimrc >> ~/.vimrc.backup
: > ~/.vimrc
cat vimspector_pre.vimrc >> ~/.vimrc
cat plugins.vimrc >> ~/.vimrc
cat splits.vimrc >> ~/.vimrc
cat folding.vimrc >> ~/.vimrc
cat oddsnends.vimrc >> ~/.vimrc
cat nerdtree.vimrc >> ~/.vimrc
# cat ale.vimrc >> ~/.vimrc
cat indent.vimrc >> ~/.vimrc
cat everforest.vimrc >> ~/.vimrc
cat coc.vimrc >> ~/.vimrc
# cat colorscheme.vimrc >> ~/.vimrc
# cat black.vimrc >> ~/.vimrc
cat slime.vimrc >> ~/.vimrc
cat pydocstring.vimrc >> ~/.vimrc

cat vimspector.vimrc >> ~/.vimrc
vim -c 'PlugInstall | qall'
vim -c 'CocInstall coc-pyright coc-json coc-html'

cd ~/.vim/plugged/black
git checkout origin/stable -b stable

