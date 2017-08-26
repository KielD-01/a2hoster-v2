#!/usr/bin/env bash
AppName="A2Hoster V2"
Author="KielD-01"
source="src"

echo "Bootstrapping ${AppName} by ${Author}"

source "${source}/Functions/Messages/Colored.sh"
source "${source}/Functions/Messages/Styled.sh"

# Loading
function load(){
    source "${source}/${1}.sh"
}

load "Core/App"
load "Functions/Composer"
load "Functions/FileSystem"
load "Functions/Frameworks"
load "Virtual/Vagrant"
load "Core/HostsFile"