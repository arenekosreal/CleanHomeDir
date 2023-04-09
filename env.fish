# Prepare special environment

set -g _plugins 
set -g _current_plugin 

function _clean

    # Remove envs and functions
    # _clean
    # This function can remove itself.

    _log debug "Cleaning objects"
    for _plugin in $_plugins
        functions -e $_plugin
    end
    set -e _plugins _current_plugin
    functions -e log_debug log_info log_warning log_error add_plugin
    functions -e _log _invoke_plugins _load_plugins _add_plugin _clean
end

if not set -q XDG_DATA_HOME
    set XDG_DATA_HOME $HOME/.local/share
end
if not set -q XDG_CONFIG_HOME
    set XDG_CONFIG_HOME $HOME/.config
end
if test -f $XDG_CONFIG_HOME/clean-home-dir.fish
    _log debug "Loading extra config file"
    source $XDG_CONFIG_HOME/clean-home-dir.fish
end
