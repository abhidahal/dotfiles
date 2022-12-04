**<h1>WSL</h1>**

**<H2>Enable WSL</H2>**

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

**<H2>Enable Virtual Machine</H2>**

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

**<H2>Install kernal</H2>**

- Download and install the WSL2 Linux Kernel from here: https://aka.ms/wsl2kernel

```
wsl --set-default-version 2
```

```
wsl --set-version kali-linux 2
```

**<H2>Install Win-Kex</H2>**

```
sudo apt install -y kali-win-kex
```

**<H2>Run Win-Kex</H2>**

**<h3>Window Mode</h3>**

```
kex --win -s
```

```
kex --win --stop
```

**<h3>Seamless mode</h3>**

```
kex --sl -s
```

```
kex --sl --stop
```



**<h1>git</h1>**

```
ssh-keygen -t rsa -b 4096 -C "<email>"
```

```
eval "$(ssh-agent -s)"
```

```
cat .ssh/id_rsa.pub
```

**<h1>zsh</h1>**

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
> *Note: open .zshrc and  add plugins=( ... , zsh-autosuggestions )*

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```
> *Note: open .zshrc and set ZSH_THEME="powerlevel10k/powerlevel10k"*

**<h1>Compilers & Frameworks</h1>**

### Installing Node
- nodejs
- npm
- [nvm](https://phoenixnap.com/kb/update-node-js-version) for managing npm version.
- `npm install --global yarn`
- `npm install -g pnpm`
- `npm install -g degit`

### Installing gcc
- `sudo apt-get install build-essential manpages-dev`

### Installing Python
- `sudo apt-get install python3`
-  python3-pip

### Misc
- exa
- lazygit


