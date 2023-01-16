#### Install dependencies
This config require some patched [fonts](https://www.nerdfonts.com/).
___
#### nvim
Install configm (YOu must have delete previous config (if exist) `rm -rf ~/.config/nvim`)
```
git clone --depth 1 https://github.com/3xyz/nvim_lua_config.git ~/.config/
```
Install Packer (Plugin installer)
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Then open some file with nvim (Enter errors) and write `:PackerInstall`
Done!
