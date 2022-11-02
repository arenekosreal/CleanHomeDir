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
