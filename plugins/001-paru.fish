# This is for cleaning paru clone cache

function clean_paru
    log_info "Cleaning paru clone cache..."
    for package in (find .cache/paru/clone/ -maxdepth 1 -mindepth 1 -type d | cut -d / -f 4)
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
