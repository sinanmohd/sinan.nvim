# sinan.nvim - sinan's neovim repo

![sinan.nvin.png](https://static.sinanmohd.com/git/sinan.nvim.png)

This repo contains my neovim configuration written in lua, this setup does not
make use of mason to install language servers but relies on system package
manager instead, such as [nix](https://nixos.org/) or [apt](https://www.debian.org/). 
if you are new to neovim, i'd recommend [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
instead

# Installation

```
git clone  https://git.sinanmohd.com/sinan.nvim ~/.config/nvim
```

# Usage

To set up lsp for lua for example you have to install the language server
manually, if you you're using the [nix](https://nixos.org/download) package
manager that would be
```
nix shell nixpkgs#lua-language-server
```

To get an idea on how to add lsp support for your own tools, see commit
[7c3ef11](https://git.sinanmohd.com/sinan.nvim/commit/?id=7c3ef11e2ed4e8cdefe1cb80fd4837e1eb037d6c)
