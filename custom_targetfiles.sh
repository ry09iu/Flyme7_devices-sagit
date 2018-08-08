#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM
OVERLAY_DIR=overlay
META_INF=$OVERLAY_DIR/services/original/META-INF

function modify_services() {
    cp -r $META_INF .
    zip -u $SYSTEM_DIR/framework/services.jar -r META-INF/
    rm -rf META-INF/
}

function modify_launcher_xml() {
    if [ -f $SYSTEM_DIR/media/launcher.xml ]; then
        sed -i 's#com.meizu.media.camera.CameraLauncher#com.android.camera.Camera#g' $SYSTEM_DIR/media/launcher.xml
        sed -i 's#com.meizu.media.camera#com.android.camera#g' $SYSTEM_DIR/media/launcher.xml
    fi
}

function add_base_binary() {
    if [ -f $OVERLAY_DIR/firmware-update/NON-HLOS.bin ]; then
	cp -r $OVERLAY_DIR/firmware-update $TARGET_FILES_DIR
    fi
}

function get_ori_date() {
    ORI_DATE=`cat $SYSTEM_DIR/build.prop | grep ro.flyme.version | sed "s/ro.flyme.version=Flyme //g" | sed "s/R beta//g"`
}

function get_build_date() {
    date=`date +%y%m%d`
    year="${date:1:1}"
    month="${date:2:2}"
    days="${date:4:2}"
    #if month
    if [ $month -lt "10" ];then
        month=$(echo $month | sed 's/0//g')
    fi
    #if days
    if [ $days -lt "10" ];then
        days=$(echo $days | sed 's/0//g')
    fi
    BUILD_DATE=6.$year.$month.$days
}

function custom_flyme_version() {
    if [ -f $SYSTEM_DIR/build.prop ]; then
	sed -i "s/$ORI_DATE/$BUILD_DATE/g" `grep -rl $ORI_DATE $SYSTEM_DIR/build.prop`
    fi
}

modify_services
modify_launcher_xml
add_base_binary
get_ori_date
get_build_date
custom_flyme_version
