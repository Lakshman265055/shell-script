#!/usr/bin/bash
myname=Lakshman
mysur=GUNDAPU
# myname_len=${#myname}
# echo "length is ${myname_len}"

# my_last=Gundapu

# fullname="$my_last$myname"

# echo "${fullname}"

myname_up=${myname^^}
myname_up=${mysur,,}

echo "name in up ${myname_up}"