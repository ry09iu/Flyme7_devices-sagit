#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

moveDirs=("android/accounts" "android/hardware" "android/printservice")

if [ "$jarBaseName" = "framework" ];then
    echo ">>> in custom_jar $jarBaseName"
    for dir_name in "${!moveDirs[@]}"
    do
        mv -v $tempSmaliDir/smali/${moveDirs[$dir_name]} $tempSmaliDir/smali_classes2/${moveDirs[$dir_name]}
    done
fi

if [ "$jarBaseName" = "services" ];then
    echo ">>> in custom_jar $jarBaseName"
    echo ">>> Add pk"
    cp -rf overlay/services/* $tempSmaliDir/
    sed -i "s#unknownFiles: {}#unknownFiles:#g" $tempSmaliDir/apktool.yml
    sed -i "/unknownFiles:/a\ \ okhttp3/internal/publicsuffix/publicsuffixes.gz: '8'" $tempSmaliDir/apktool.yml
fi
