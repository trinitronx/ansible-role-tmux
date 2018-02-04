#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
testhelpersdir=$1
else
  testhelpersdir="$(dirname $0)/../../../.."
  if [ -x "$(which realpath)" ]; then
    canonicalize_path_cmd='realpath'
  elif [ -x "$(which readlink)" ]; then
    canonicalize_path_cmd='readlink -f'
  fi
  testhelpersdir="$($canonicalize_path_cmd "$testhelpersdir")"
fi

#[ ! -d $testhelpersdir/juju4.redhat-epel ] && git clone https://github.com/juju4/ansible-redhat-epel $testhelpersdir/juju4.redhat-epel
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $testhelpersdir/trinitronx.tmux ] && ln -s ansible-role-wemux $testhelpersdir/trinitronx.tmux
[ ! -e $testhelpersdir/trinitronx.tmux ] && cp -R $testhelpersdir/ansible-role-wemux $testhelpersdir/trinitronx.tmux

## don't stop build on this script return code
true

