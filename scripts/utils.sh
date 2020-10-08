# Logging Functions.
function log::info {
    echo -e "\e[1m\e[44m\e[97mINFO\e[0m $1" >&2
}

function log::fail {
    echo -e "\e[1m\e[31mFAIL\e[0m $1" >&2
}

function log::ok {
    echo -e "\e[1m\e[42m OK \e[0m $1" >&2
}

function log::warn {
    echo -e "\e[1m\e[43mWARN\e[0m $1" >&2
}
