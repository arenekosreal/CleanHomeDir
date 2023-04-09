# This is for cleaning yarn cache

function clean_yarn
    log_info "Cleaning yarn cache..."
    if test -d .cache/yarn
        rm -r .cache/yarn
    end
end

add_plugin clean_yarn
