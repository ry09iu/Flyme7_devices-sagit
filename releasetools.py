#!/usr/bin/env python

import common
import edify_generator
import copy

def ReplaceAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if 'show_progress(0.750000, 0);' in edify.script[i]:
            edify.script[i] = edify.script[i].replace('show_progress(0.750000, 0);', '''show_progress(0.750000, 0);
ui_print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
ui_print("Official Flyme for Xiaomi6 ... ");
ui_print("Author: Ry09iu ");
ui_print("");
ui_print("Installing system, please wait a few minutes ... ");''')

def InstallBaseFiles(info):
    extra_img_flash = """ui_print("Patching firmware images...");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("firmware-update/pmic.elf", "/dev/block/bootdevice/by-name/pmic");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("firmware-update/storsec.mbn", "/dev/block/bootdevice/by-name/storsec");
package_extract_file("firmware-update/abl.elf", "/dev/block/bootdevice/by-name/abl");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
package_extract_file("firmware-update/xbl.elf", "/dev/block/bootdevice/by-name/xbl");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64bak");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlibbak");
package_extract_file("firmware-update/hyp.mbn", "/dev/block/bootdevice/by-name/hypbak");
package_extract_file("firmware-update/pmic.elf", "/dev/block/bootdevice/by-name/pmicbak");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tzbak");
package_extract_file("firmware-update/abl.elf", "/dev/block/bootdevice/by-name/ablbak");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfgbak");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymasterbak");
package_extract_file("firmware-update/xbl.elf", "/dev/block/bootdevice/by-name/xblbak");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpmbak");
package_extract_file("firmware-update/splash.img", "/dev/block/bootdevice/by-name/splash");
package_extract_file("firmware-update/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("firmware-update/logo.img", "/dev/block/bootdevice/by-name/logo");
package_extract_file("firmware-update/adspso.bin", "/dev/block/bootdevice/by-name/dsp");
package_extract_file("firmware-update/BTFM.bin", "/dev/block/bootdevice/by-name/bluetooth");
ui_print("Install firmware done!");"""
    info.script.AppendExtra(extra_img_flash);
    return


def AddFirmwareFiles(info):
    input_zip = info.input_zip
    output_zip = info.output_zip
    for info in input_zip.infolist():
        if info.filename.startswith("firmware-update/"):
            basefilename = info.filename[16:]
            info2 = copy.copy(info)
            info2.filename = "firmware-update/" + basefilename
            if output_zip is not None:
                persist = input_zip.read(info.filename)
                output_zip.writestr(info2, persist)
    return

def FullOTA_InstallEnd(info):
    ReplaceAssertions(info)
    AddFirmwareFiles(info)
    InstallBaseFiles(info)
    return 
