# Neovim from scratch
**Update** This repo should work fine with Neovim 0.8, also all packages are pinned so it should remain stable.
## Try out this config

#### Prepare your system
- For **MacOS**
  - Make sure you have **Homebrew** installed
   ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
   -  Install the recommended packages
   ```
   brew install node neovim luajit
   ```

- For **Linux**
  ```
  sudo apt update -y
  sudo apt upgrade -y
  sudo apt install software-properties-common -y
  sudo add-apt-repository ppa:neovim-ppa/unstable -y
  sudo apt-get update -y
  sudo apt-get install neovim -y
  ```
  
- Install **NERD FONTS**
  - Visit this link for more info: [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Make sure to remove or move your current `nvim` directory

#### Install here !!!

**IMPORTANT** Requires [Neovim v0.8.0]](https://github.com/neovim/neovim/releases).  [Upgrade](#upgrade-to-latest-release) if you're on an earlier version. 
```
git clone https://github.com/aadityakushwaha/aVim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Health Check

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

* For **MacOS** 
  ```
  brew install node
  ```

* For **Linux**
  ```
  sudo apt install nodejs
  ```

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
sudo make install
nvim -v
```

