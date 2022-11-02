# This is for cleaning .python_history file

function clean_python_history
    log_info "Cleaning .python_history file..."
    if test -f .python_history
        rm .python_history
    end
end

add_plugin clean_python_history
