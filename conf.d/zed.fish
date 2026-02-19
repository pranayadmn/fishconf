# Set editor variables.
if test "$ZED_TERM" = true
    switch (uname)
        case Darwin
            set -gx VISUAL "zed --wait"
        case Linux
            set -gx VISUAL "zeditor --wait"
    end
end
