alias github=GitHub

function GitHub()
{
    if [ ! -d .git ] ;
        then echo "ERROR: This is not a git directory" && return false;
    fi
    git_url=`git config --get remote.origin.url`
    if [[ $git_url == https://github* ]]; then
        url=${git_url%.git}
    elif [[ $git_url == git@github.com* ]]; then
        url="https://github.com/${${git_url:15}%.git}"
    else
        echo "ERROR: Remote origin is invalid" && return false;
    fi
    xdg-open $url > /dev/null 2>&1
}
