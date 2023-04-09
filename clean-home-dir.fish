#!/usr/bin/env fish

# Fish script to clean home directory
# Use environment variable CLEAN_HOME_DIR_DEBUG with value debug/info/warning/error
# to control output

function clean-home-dir
    source (status dirname)/env.fish
    source (status dirname)/log.fish
    source (status dirname)/public-api.fish
    source (status dirname)/plugin.fish

    _load_plugins
    if test -d $XDG_DATA_HOME/clean-home-dir/plugins
        _load_plugins $XDG_DATA_HOME/clean-home-dir
    end
    _invoke_plugins
    _clean
end

if not string match -q -- "*from sourcing file*" (status)
    # See https://github.com/fish-shell/fish-shell/issues/4877#issuecomment-937705817
    clean-home-dir $argv
end
