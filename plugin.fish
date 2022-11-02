# Plugin related internal functions

function _load_plugins

    # Load all plugins
    # _load_plugins [$root]
    # $root is the directory of plugin.fish by default.

    if test (count $argv) -gt 0
        set root $argv[1]
    else
        set root (status dirname)
    end
    for _plugin in $root/plugins/*.fish
        _log debug "Loading $_plugin"
        source $_plugin
    end
end

function _invoke_plugins

    # Invoke plugins
    # _invoke_plugins
    
    for _plugin in $_plugins
        cd $HOME
        set _current_plugin $_plugin
        _log debug "Invoking $_current_plugin"
        $_plugin
        set _current_plugin
    end
end

function _add_plugin

    # Add plugin
    # _add_plugin $plugin

    _log debug "Adding plugin $argv[1]"
    set _plugins $_plugins $argv[1]
end 
