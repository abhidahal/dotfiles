**<h1>WSL</h1>**

**<H2>Enable WSL</H2>**

`Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

**<H2>Enable Virtual Machine</H2>**

`dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`

`dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart`

**<H2>Install kernal</H2>**

- Download and install the WSL2 Linux Kernel from here: https://aka.ms/wsl2kernel

`wsl --set-default-version 2`

`wsl --set-version kali-linux 2`

**<H2>Install Win-Kex</H2>**

`sudo apt install -y kali-win-kex`

**<H2>Run Win-Kex</H2>**

**<h3>Window Mode</h3>**

`kex --win -s`

`kex --win --stop`

**<h3>Seamless mode</h3>**

`kex --sl -s`

`kex --sl --stop`



**<h1>git</h1>**

- `ssh-keygen -t rsa -b 4096 -C "abhidahal7@gmail.com"`

- `eval "$(ssh-agent -s)"`

- `cat .ssh/id_rsa.pub`

**<h1>zsh</h1>**

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`
- 
- `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc`



- *Note: open .zshrc and set ZSH_THEME="powerlevel10k/powerlevel10k"*

**<h1>Compilers & Frameworks</h1>**


- nodejs
- npm
- `npm install --global yarn`
- gcc
- python3-pip


**<h1>NeoVim</h1>**

- create ~/.config/nvim/init.vim

<h2> Plug</h2>

- `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- Use :PlugInstall
