# This is for cleaning poetry cache

function clean_poetry
    log_info "Cleaning Poetry cache..."
    for cache in (poetry cache list)
        if test $cache = _default_cache
            continue
        end
        log_debug "Cleaning cache $cache"
        poetry cache clear -n $cache --all
    end
end

if command -v poetry &> /dev/null
    add_plugin clean_poetry
end
