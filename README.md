# Clean Home Dir  

A tool to clean your $HOME dir, written in fish

## Requirements

- fish
- coreutils
- findutils
- all extra required by your plugins

## Useage

Simply run `clean-home-dir.fish` after installed requirements

## Write custom plugins

- Create a fish script with `.fish` as its suffix name
- See [public-api.fish](./public-api.fish) for what you can use. Note: you can always use anything like normal script, public API is just for a better intergration.
- Don't forget to call `add_plugin` at the end of your script
- Put your script in `plugins` folder
- Run this tool and your plugin should be executed by the tool.
