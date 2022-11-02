# This is for cleaning npm cache and logs

function clean_npm
    log_info "Cleaning npm cache and logs..."
    rm -rf .npm
end

add_plugin clean_npm
