#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

function applyPatch () {
	app_name=$1
	app_dir=$2

	for patch in `find $app_name -name "*.patch"`
	do
		smali_file=`cat $patch | grep "^---" | sed "s@$app_name\/@$app_name#@" | cut -d"#" -f2 | awk -F "\t" '{print $1}'`
		patch $app_dir/$smali_file $patch

			for rej in `find $app_dir -name "*.rej"`
			do
				echo "Patch $patch failed!!"
				exit 1
			done
	done
}

if [ "$apkBaseName" = "ConnectivitySettings" ]; then
    echo ">>> in custom_app for $apkBaseName to adjust the interface \"setDefaultDataSubId\" with \"setDefaultDataSubIdExtended\""
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#Landroid\/telephony\/SubscriptionManager;->setDefaultDataSubId(I)V#Landroid\/telephony\/SubscriptionManager;->setDefaultDataSubIdExtended(I)V#g'

elif [ "$apkBaseName" = "Telecom" ]; then
    echo ">>> in custom_app for $apkBaseName to adjust the interface \"setDefaultVoiceSubId\" with \"setDefaultVoiceSubIdExtended\""
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#Landroid\/telephony\/SubscriptionManager;->setDefaultVoiceSubId(I)V#Landroid\/telephony\/SubscriptionManager;->setDefaultVoiceSubIdExtended(I)V#g'

elif [ "$apkBaseName" = "TeleService" ]; then
    echo ">>> in custom_app for $apkBaseName to fix the problem of repairing the cdma card does not show the time of the call."
    sed -i "s#    invoke-direct {p0, v5}, Lcom/android/services/telephony/TelephonyConnection;->getCallState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Call\$State;#    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call\$State;#g" $2/smali/com/android/services/telephony/TelephonyConnection.smali

elif [ $1 = "SystemUI" ];then
	echo ">>> Patching for $apkBaseName."
	applyPatch $1 $2

elif [ "$apkBaseName" = "Settings" ]; then
    echo ">>> in custom_app for $apkBaseName."
    echo "> Fix vib when ringing"
    find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#\"vibrate_when_ringing\"#\"vibrate_in_normal\"#g'
    find $tempSmaliDir/ -name "*.xml" | xargs sed -i 's#\"vibrate_when_ringing\"#\"vibrate_in_normal\"#g'
    #find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#sys/block/sdc/size#sys/block/sda/size#g'
    #find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#sys/block/mmcblk0/size#sys/block/sda/size#g'
fi
