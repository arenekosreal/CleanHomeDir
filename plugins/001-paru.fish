# This is for cleaning paru clone cache

function clean_paru
    log_info "Cleaning paru clone cache..."
    for dir in .cache/paru/clone/*
        set package (string split / -f 4 $dir)
        if paru -Qi $package &> /dev/null
            log_debug "$package is installed and should not be removed."
        else
            log_debug "Removing $package"
            rm -rf .cache/paru/clone/$package
        end
    end
end

if command -v paru &> /dev/null
    add_plugin clean_paru
end
