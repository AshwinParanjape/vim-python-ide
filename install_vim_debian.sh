# Based on https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
# If it doesn't install with python3 
# Check if you are in a python or a conda environment
# Because in that case the python3-dev package (installed below) is not the same as the
# "system python" which is used during installation 

sudo apt-get update

# Install all the prerequisite libraries (including Git)
sudo apt install libncurses5-dev libgtk2.0-dev libatk1.0-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python2-dev \
python3-dev ruby-dev lua5.2 liblua5.2-dev libperl-dev git make

# Remove vim if you have it already.
sudo apt remove vim vim-runtime gvim
sudo apt remove vim-tiny vim-common vim-gui-common vim-nox

# Once everything is installed, getting the source is easy.
git clone https://github.com/vim/vim.git
cd vim
git checkout tags/v9.0.0000
make clean distclean
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-python3interp \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local



# Use make to install.
# make VIMRUNTIMEDIR=/usr/local/share/vim/vim90/

#cd ~/vim
sudo make install

# Set vim as your default editor with update-alternatives
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
