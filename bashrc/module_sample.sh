#!/bin/bash

##! @TODO:	hello world
##! @VERSION:	1.0
##! @AUTHOR:	wengjianyi
##! @FILEIN:	data/sth_in
##! @FILEOUT:	result/sth_out
##! @PREV:	foo.sh
##! @NEXT:	bar.sh

#------------------- library ------------------
source lib/log.sh
source lib/color_print.sh

#--------------- global variable --------------
typeset -r PROGRAM_NAME="hello world"
typeset -r VERSION="1.0"

g_pid=0
g_level=0

#------------------ function ------------------
function usage()
{
    :
    return 0
}

function version()
{
    :
    return 0
}

##! @TODO:       show message
##! @AUTHOR:     somebody
##! @VERSION:    1.0
##! @IN:         $1 => msg
##! @OUT:        0 => success; 1 => failure
function show_msg()
{
    local msg="$1"

    echo "$msg"
    return 0
}

#------------------- main -------------------
#...
#...
#...
show_msg "hello world!"

