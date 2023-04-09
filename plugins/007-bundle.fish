# This is for cleaning ruby .bundle folder

function clean_bundle
    log_info "Cleaning .bundle folder..."
    if test  -d .bundle
        rm -r .bundle
    end
end

add_plugin clean_bundle
