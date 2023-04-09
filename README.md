# Clean Home Dir  

A tool to clean your $HOME dir, written in fish

## Requirements

- fish
- all extra required by your plugins

## Optional Depends

- paru: for cleaning paru cache
- poetry: for cleaning poetry cache
- flatpak: for cleaning flatpak cache

## Useage

Simply run `clean-home-dir.fish` after installed requirements

## Write custom plugins

- Create a fish script with `.fish` as its suffix name
- See [public-api.fish](./public-api.fish) for what you can use. Note: you can always use anything like normal script, public API is just for a better intergration.
- Don't forget to call `add_plugin` at the end of your script
- Put your script in `plugins` folder or `$XDG_DATA_HOME/clean-home-dir/plugins` folder, if `$XDG_DATA_HOME` is not set, it is `$HOME/.local/share` by default.
- Run this tool and your plugin should be executed by the tool.
