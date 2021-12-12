#!/system/bin/sh
# Copyright (c) 2016, Samsung Electronics Co., Ltd.

control=`getprop ril.restart.netmgrd`

if [ "$control" = "true" ]; then
    case "$1" in
        "stop")
          stop netmgrd
          setprop sys.control.netmgr stopped
        ;;
        "start")
          start netmgrd
          setprop sys.control.netmgr started
    esac
fi
