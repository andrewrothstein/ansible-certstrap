#!/usr/bin/env sh
DIR=~/Downloads
GROUP=square
APP=certstrap
MIRROR=https://github.com/${GROUP}/${APP}/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="$os-$arch"
    local file=${APP}-${ver}-${platform}
    local url=$MIRROR/v$ver/${APP}-${platform}
    local lfile=$DIR/${APP}-${ver}-${platform}

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver linux amd64
    dl $ver windows amd64
}

dlver ${1:-1.3.0}
