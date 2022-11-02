# This is for cleaning .subversion folder

function clean_subversion
    log_info "Cleaning .subversion folder..."
    if test -d .subversion
        rm -r .subversion
    end
end

_add_plugin clean_subversion
