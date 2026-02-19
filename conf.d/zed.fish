# Set editor variables.
if test "$ZED_TERM" = true
    switch $OSTYPE
        case darwin
            set -gx VISUAL "zed --wait"
        case linux
            set -gx VISUAL "zeditor --wait"
    end
end
