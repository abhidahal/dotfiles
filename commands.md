<h1>git</h1>

- ssh-keygen -t rsa -b 4096 -C "abhidahal7@gmail.com"

- eval "$(ssh-agent -s)"

- cat .ssh/id_rsa.pub

<h1>zsh</h1>

- -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

- git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k



- *Note: open .zshrc and set ZSH_THEME="powerlevel10k/powerlevel10k"*

<h1>Compilers</h1>

- nodejs
- npm
- npm install --global yarn
- gcc
- python3-pip
<h1>NeoVim</h1>

- create ~/.config/nvim/init.vim 
<h2> Plug</h2>

- curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

- Use :PlugInstall


