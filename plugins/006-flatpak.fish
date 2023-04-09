# This is for cleaning flatpak user cache

function clean_flatpak
    log_info "Cleaning flatpak user cache..."
    flatpak --user remove --unused --assumeyes
    flatpak --user repair
end

if command -v flatpak &> /dev/null
    add_plugin clean_flatpak
end
