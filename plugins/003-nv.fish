# This is for cleaning .nv folder 

function clean_nv
    log_info "Cleaning .nv folder..."
    if test -d .nv
        rm -r .nv
    end
end

add_plugin clean_nv
