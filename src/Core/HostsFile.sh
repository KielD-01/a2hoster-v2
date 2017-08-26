#!/usr/bin/env bash
DataPath="src/Data"
a2HosterHostsFile="${DataPath}/a2hoster-hosts"
HostsStream=''
HostsList=[]

function check_hosts(){
    if [ ! -f ${a2HosterHostsFile} ]; then
        c "No Hosts DataFile found" Red
        c "Creating DataFile..." Blue

        touch ${a2HosterHostsFile}
    else
        c "DataFile is present" Green
    fi
}

# Autoload
check_hosts