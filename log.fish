# For printing log with proper color and format

function _log

    # Print log
    # _log $level $content

    # Level:    debug   info    warning     error
    # Code:     0       1       2           3

    function __level_to_code

        # Convert Level to Code
        # __level_to_code $level
        # Returns 1 when $level doesn't belongs to Level

        switch $argv[1]
            case debug
                echo 0
            case info
                echo 1
            case warning
                echo 2
            case error
                echo 3
            case '*'
                return 1
        end
    end

    if set -q CLEAN_HOME_DIR_DEBUG
        set debug (__level_to_code $CLEAN_HOME_DIR_DEBUG)
        if test $debug -gt 3
            set level 3
        else if test $debug -lt 0
            set level 0
        else
            set level $debug
        end
    else
        set level (__level_to_code info or 2)
    end
    if test (__level_to_code $argv[1]) -gt $level
        or test (__level_to_code $argv[1]) -eq $level
        switch $argv[1]
            case info
                set color_start (set_color green)
                set color_end (set_color normal)
            case warning
                set color_start (set_color orange)
                set color_end (set_color normal)
            case error
                set color_start (set_color red)
                set color_end (set_color normal)
            case '*'
                set color_start (set_color normal)
                set color_end (set_color normal)
        end
        set head (set_color cyan)"CleanHomeDir"(set_color normal)": "
        set level_string $color_start"[$argv[1]]"$color_end": "
        echo "$head$level_string$argv[2]"
    end
end 
