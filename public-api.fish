# Public APIs

function log_debug

    # Print a debug message
    # log_debug $content

    set head (set_color blue)"[$_current_plugin]"(set_color normal)": "
    _log debug "$head$argv"
end

function log_info

    # Print an info message
    # log_info $content

    set head (set_color blue)"[$_current_plugin]"(set_color normal)": "
    _log info "$head$argv"
end

function log_warning

    # Print a warning message
    # log_warning $content

    set head (set_color blue)"[$_current_plugin]"(set_color normal)": "
    _log warning "$head$argv"
end

function log_error

    # Print an error message
    # log_error $content

    set head (set_color blue)"[$_current_plugin]"(set_color normal)": "
    _log error "$head$argv"
end

function add_plugin
    
    # Add the plugin entry
    # add_plugin $func
    
    _add_plugin $argv
end
