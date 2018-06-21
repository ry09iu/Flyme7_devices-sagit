.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_analyticTrack:I = 0x16

.field static final TRANSACTION_cancelLocationRequest:I = 0x1e

.field static final TRANSACTION_checkAppTheShotScreenPermission:I = 0x28

.field static final TRANSACTION_checkIfAppBelongToActive:I = 0x2f

.field static final TRANSACTION_checkIfHaveTheCallFunctionPermission:I = 0x1b

.field static final TRANSACTION_checkIfProcessBelongToActive:I = 0x30

.field static final TRANSACTION_checkPermissionLevel:I = 0x1c

.field static final TRANSACTION_completeBackagroundAllModes:I = 0x37

.field static final TRANSACTION_completeBackgroundModes:I = 0x36

.field static final TRANSACTION_decodeWatermark:I = 0x3d

.field static final TRANSACTION_deepClean:I = 0x15

.field static final TRANSACTION_encodeWatermark:I = 0x3c

.field static final TRANSACTION_getActiveAppListByLevel:I = 0x2e

.field static final TRANSACTION_getActiveAppListByType:I = 0x2d

.field static final TRANSACTION_getApplicationActiveLevel:I = 0x31

.field static final TRANSACTION_getApplicationThread:I = 0x7

.field static final TRANSACTION_getBatteryCapacity:I = 0x20

.field static final TRANSACTION_getBatteryChargeTime:I = 0x21

.field static final TRANSACTION_getBatteryCurrentNow:I = 0x23

.field static final TRANSACTION_getBatteryStandbyTime:I = 0x22

.field static final TRANSACTION_getComponentManager:I = 0x27

.field static final TRANSACTION_getForegroundApplicationThread:I = 0x8

.field static final TRANSACTION_getForegroundApplicationUid:I = 0x24

.field static final TRANSACTION_getForegroundPreTaskApp:I = 0x2a

.field static final TRANSACTION_getMetokToken:I = 0x17

.field static final TRANSACTION_getProcessActiveLevel:I = 0x32

.field static final TRANSACTION_getProcessBackgourndModes:I = 0x38

.field static final TRANSACTION_getSmartConfigLevel:I = 0x14

.field static final TRANSACTION_getWhetstoneLevel:I = 0x6

.field static final TRANSACTION_getWhetstonePackage:I = 0x2

.field static final TRANSACTION_getWhetstonePackageInfo:I = 0x3

.field static final TRANSACTION_getWhetstonePackageInfoByUid:I = 0x3e

.field static final TRANSACTION_injectInputEvent:I = 0xd

.field static final TRANSACTION_installPackage:I = 0xf

.field static final TRANSACTION_isInCharging:I = 0x10

.field static final TRANSACTION_isNeeded:I = 0x1

.field static final TRANSACTION_killApplication:I = 0x25

.field static final TRANSACTION_killApplicationAlways:I = 0x26

.field static final TRANSACTION_log:I = 0x3b

.field static final TRANSACTION_markPerceptibleJank:I = 0x40

.field static final TRANSACTION_putSetting:I = 0xe

.field static final TRANSACTION_recordRTCWakeupInfo:I = 0x3f

.field static final TRANSACTION_registTargetProcessForegroundNotify:I = 0x29

.field static final TRANSACTION_registerActiveAppStatusChange:I = 0x39

.field static final TRANSACTION_registerAppObserver:I = 0x2b

.field static final TRANSACTION_registerMiuiWhetstoneCloudSync:I = 0x18

.field static final TRANSACTION_registerMiuiWhetstoneCloudSyncList:I = 0x19

.field static final TRANSACTION_registerPackageStatusNotify:I = 0x4

.field static final TRANSACTION_requestBackgroundModes:I = 0x35

.field static final TRANSACTION_requestCurrentLocation:I = 0x1d

.field static final TRANSACTION_screenShot:I = 0xc

.field static final TRANSACTION_setWhetstoneLevel:I = 0x5

.field static final TRANSACTION_unregisterActiveAppStatusChange:I = 0x3a

.field static final TRANSACTION_unregisterAppObserver:I = 0x2c

.field static final TRANSACTION_unregisterMiuiWhetstoneCloudSync:I = 0x1a

.field static final TRANSACTION_updateActiveProcessStatus:I = 0x33

.field static final TRANSACTION_updateActiveProcessStatusByRequest:I = 0x34

.field static final TRANSACTION_updateProcessCurrentPss:I = 0x1f

.field static final TRANSACTION_wifiSmartConfigMacAsyncWithUid:I = 0x11

.field static final TRANSACTION_wifiSmartConfigStartAsync:I = 0x9

.field static final TRANSACTION_wifiSmartConfigStop:I = 0xa

.field static final TRANSACTION_wifiSmartConfigSupport:I = 0xb

.field static final TRANSACTION_wifiSmartConfigUap:I = 0x13

.field static final TRANSACTION_wifiSmartConfigUapAsync:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 61
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 866
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 53
    .local v12, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/whetstone/IWhetstone$Stub;->isNeeded(I)Z

    move-result v60

    .line 54
    .local v60, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v60, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 55
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 60
    .end local v12    # "_arg0":I
    .end local v60    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 63
    .local v30, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v57

    .line 64
    .local v57, "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v57, :cond_1

    .line 66
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 70
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 76
    .end local v30    # "_arg0":Landroid/os/IBinder;
    .end local v57    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_3
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v57

    .line 80
    .restart local v57    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v57, :cond_2

    .line 82
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 86
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 92
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_4
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v37

    .line 96
    .local v37, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v44

    .line 98
    .local v44, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IPkgStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPkgStatusCallback;

    move-result-object v46

    .line 99
    .local v46, "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v44

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->registerPackageStatusNotify(Ljava/util/List;Ljava/util/List;Lcom/miui/whetstone/IPkgStatusCallback;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v4, 0x1

    return v4

    .line 105
    .end local v37    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v46    # "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    :sswitch_5
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 108
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/whetstone/IWhetstone$Stub;->setWhetstoneLevel(I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    return v4

    .line 114
    .end local v12    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstoneLevel()I

    move-result v50

    .line 116
    .local v50, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 122
    .end local v50    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 125
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationThread(I)Landroid/os/IBinder;

    move-result-object v54

    .line 126
    .local v54, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    const/4 v4, 0x1

    return v4

    .line 132
    .end local v12    # "_arg0":I
    .end local v54    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationThread()Landroid/os/IBinder;

    move-result-object v54

    .line 134
    .restart local v54    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 140
    .end local v54    # "_result":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg5":Landroid/os/IBinder;
    move-object/from16 v4, p0

    .line 153
    invoke-virtual/range {v4 .. v10}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 154
    const/4 v4, 0x1

    return v4

    .line 158
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStop()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v4, 0x1

    return v4

    .line 165
    :sswitch_b
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigSupport()Z

    move-result v60

    .line 167
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v60, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    return v4

    .line 168
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 173
    .end local v60    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 177
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 178
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v51

    .line 179
    .local v51, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v51, :cond_4

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_4
    const/4 v4, 0x1

    return v4

    .line 185
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 191
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v51    # "_result":Landroid/graphics/Bitmap;
    :sswitch_d
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    sget-object v4, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/InputEvent;

    .line 200
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 201
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v60

    .line 202
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v60, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :cond_5
    const/16 v31, 0x0

    .local v31, "_arg0":Landroid/view/InputEvent;
    goto :goto_5

    .line 203
    .end local v31    # "_arg0":Landroid/view/InputEvent;
    .restart local v13    # "_arg1":I
    .restart local v60    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 208
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v60

    .line 216
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v60, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v4, 0x1

    return v4

    .line 217
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 222
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 225
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 231
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v39

    .line 233
    .local v39, "_arg1":Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 234
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z

    move-result v60

    .line 235
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v60, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    return v4

    .line 228
    .end local v14    # "_arg2":I
    .end local v39    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v60    # "_result":Z
    :cond_8
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/net/Uri;
    goto :goto_8

    .line 236
    .end local v28    # "_arg0":Landroid/net/Uri;
    .restart local v14    # "_arg2":I
    .restart local v39    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .restart local v60    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 241
    .end local v14    # "_arg2":I
    .end local v39    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v60    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->isInCharging()Z

    move-result v60

    .line 243
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v60, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    return v4

    .line 244
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 249
    .end local v60    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 255
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 257
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 261
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 263
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .local v18, "_arg6":Landroid/os/IBinder;
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    .line 264
    invoke-virtual/range {v11 .. v18}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 265
    const/4 v4, 0x1

    return v4

    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 277
    .local v22, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 279
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    .local v25, "_arg4":Landroid/os/IBinder;
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v24, v8

    .line 280
    invoke-virtual/range {v19 .. v25}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V

    .line 281
    const/4 v4, 0x1

    return v4

    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg2":J
    .end local v25    # "_arg4":Landroid/os/IBinder;
    :sswitch_13
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 293
    .restart local v22    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v24, v8

    .line 294
    invoke-virtual/range {v19 .. v24}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 295
    .local v58, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    const/4 v4, 0x1

    return v4

    .line 301
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg2":J
    .end local v58    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getSmartConfigLevel()I

    move-result v50

    .line 303
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v4, 0x1

    return v4

    .line 309
    .end local v50    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 312
    sget-object v4, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/miui/whetstone/WhetstoneConfig;

    .line 317
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I

    move-result v50

    .line 318
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    return v4

    .line 315
    .end local v50    # "_result":I
    :cond_b
    const/16 v35, 0x0

    .local v35, "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    goto :goto_b

    .line 324
    .end local v35    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :sswitch_16
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 327
    sget-object v4, Lcom/miui/whetstone/WhetstoneAction;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/miui/whetstone/WhetstoneAction;

    .line 332
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .line 333
    const/4 v4, 0x1

    return v4

    .line 330
    :cond_c
    const/16 v34, 0x0

    .local v34, "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    goto :goto_c

    .line 337
    .end local v34    # "_arg0":Lcom/miui/whetstone/WhetstoneAction;
    :sswitch_17
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getMetokToken()Ljava/lang/String;

    move-result-object v58

    .line 339
    .restart local v58    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x1

    return v4

    .line 345
    .end local v58    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 348
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    .line 354
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 355
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/miui/whetstone/CloudControlInfo;

    .line 360
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v50

    .line 361
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v4, 0x1

    return v4

    .line 351
    .end local v50    # "_result":I
    :cond_d
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 358
    .end local v26    # "_arg0":Landroid/content/ComponentName;
    :cond_e
    const/16 v40, 0x0

    .local v40, "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    goto :goto_e

    .line 367
    .end local v40    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :sswitch_19
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 370
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    .line 376
    :goto_f
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    .line 377
    .local v43, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v50

    .line 378
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    return v4

    .line 373
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    .end local v50    # "_result":I
    :cond_f
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 384
    .end local v26    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    .line 392
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v50

    .line 393
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v4, 0x1

    return v4

    .line 390
    .end local v50    # "_result":I
    :cond_10
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 399
    .end local v26    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 403
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 405
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 406
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v60

    .line 407
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v60, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v4, 0x1

    return v4

    .line 408
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 413
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v60    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 417
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 419
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 420
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->checkPermissionLevel(III)I

    move-result v50

    .line 421
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v4, 0x1

    return v4

    .line 427
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v50    # "_result":I
    :sswitch_1d
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v41

    .line 432
    .local v41, "_arg1":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v4, 0x1

    return v4

    .line 438
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1e
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v33

    .line 441
    .local v33, "_arg0":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v4, 0x1

    return v4

    .line 447
    .end local v33    # "_arg0":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1f
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 451
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 452
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->updateProcessCurrentPss(II)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v4, 0x1

    return v4

    .line 458
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    :sswitch_20
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCapacity()I

    move-result v50

    .line 460
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v4, 0x1

    return v4

    .line 466
    .end local v50    # "_result":I
    :sswitch_21
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryChargeTime()J

    move-result-wide v52

    .line 468
    .local v52, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    const/4 v4, 0x1

    return v4

    .line 474
    .end local v52    # "_result":J
    :sswitch_22
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryStandbyTime()J

    move-result-wide v52

    .line 476
    .restart local v52    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 478
    const/4 v4, 0x1

    return v4

    .line 482
    .end local v52    # "_result":J
    :sswitch_23
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCurrentNow()I

    move-result v50

    .line 484
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v4, 0x1

    return v4

    .line 490
    .end local v50    # "_result":I
    :sswitch_24
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationUid()I

    move-result v50

    .line 492
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v4, 0x1

    return v4

    .line 498
    .end local v50    # "_result":I
    :sswitch_25
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 504
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 506
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 508
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v15, v8

    move-object/from16 v16, v9

    .line 509
    invoke-virtual/range {v11 .. v16}, Lcom/miui/whetstone/IWhetstone$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v60

    .line 510
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    if-eqz v60, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v4, 0x1

    return v4

    .line 511
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 516
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v60    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 520
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 522
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 525
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v7, v8}, Lcom/miui/whetstone/IWhetstone$Stub;->killApplicationAlways(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v60

    .line 526
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v60, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v4, 0x1

    return v4

    .line 527
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 532
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v56

    .line 534
    .local v56, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v56, :cond_14

    invoke-interface/range {v56 .. v56}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 536
    const/4 v4, 0x1

    return v4

    .line 535
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 540
    .end local v56    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_28
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 544
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 545
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->checkAppTheShotScreenPermission(II)Z

    move-result v60

    .line 546
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v60, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v4, 0x1

    return v4

    .line 547
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 552
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 556
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v44

    .line 558
    .restart local v44    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IProcessForegroundCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IProcessForegroundCallback;

    move-result-object v47

    .line 559
    .local v47, "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v4, 0x1

    return v4

    .line 565
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v47    # "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    :sswitch_2a
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;

    move-result-object v55

    .line 567
    .local v55, "_result":Lcom/miui/whetstone/AppInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v55, :cond_16

    .line 569
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v4, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 575
    :goto_16
    const/4 v4, 0x1

    return v4

    .line 573
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 579
    .end local v55    # "_result":Lcom/miui/whetstone/AppInfo;
    :sswitch_2b
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v32

    .line 582
    .local v32, "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v4, 0x1

    return v4

    .line 588
    .end local v32    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    :sswitch_2c
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v32

    .line 591
    .restart local v32    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v4, 0x1

    return v4

    .line 597
    .end local v32    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    :sswitch_2d
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 600
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/whetstone/IWhetstone$Stub;->getActiveAppListByType(I)Ljava/util/List;

    move-result-object v59

    .line 601
    .local v59, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 603
    const/4 v4, 0x1

    return v4

    .line 607
    .end local v12    # "_arg0":I
    .end local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 610
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/whetstone/IWhetstone$Stub;->getActiveAppListByLevel(I)Ljava/util/List;

    move-result-object v59

    .line 611
    .restart local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 613
    const/4 v4, 0x1

    return v4

    .line 617
    .end local v12    # "_arg0":I
    .end local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 621
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 622
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfAppBelongToActive(Ljava/lang/String;I)Z

    move-result v60

    .line 623
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v60, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v4, 0x1

    return v4

    .line 624
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 629
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 633
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 635
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 636
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfProcessBelongToActive(Ljava/lang/String;II)Z

    move-result v60

    .line 637
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v60, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    const/4 v4, 0x1

    return v4

    .line 638
    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .line 643
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v60    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 647
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 648
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationActiveLevel(Ljava/lang/String;I)I

    move-result v50

    .line 649
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v4, 0x1

    return v4

    .line 655
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v50    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 659
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 661
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 662
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->getProcessActiveLevel(Ljava/lang/String;II)I

    move-result v50

    .line 663
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    const/4 v4, 0x1

    return v4

    .line 669
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v50    # "_result":I
    :sswitch_33
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 673
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 675
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 677
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 678
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/miui/whetstone/IWhetstone$Stub;->updateActiveProcessStatus(IIII)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v4, 0x1

    return v4

    .line 684
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    :sswitch_34
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 688
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 690
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 692
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 694
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg4":I
    move-object/from16 v11, p0

    .line 695
    invoke-virtual/range {v11 .. v16}, Lcom/miui/whetstone/IWhetstone$Stub;->updateActiveProcessStatusByRequest(IIIII)Z

    move-result v60

    .line 696
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    if-eqz v60, :cond_19

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v4, 0x1

    return v4

    .line 697
    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    .line 702
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v60    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 706
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 708
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 709
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->requestBackgroundModes(III)Z

    move-result v60

    .line 710
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v60, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v4, 0x1

    return v4

    .line 711
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 716
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v60    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 720
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 722
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 723
    .restart local v14    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/miui/whetstone/IWhetstone$Stub;->completeBackgroundModes(III)Z

    move-result v60

    .line 724
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    if-eqz v60, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v4, 0x1

    return v4

    .line 725
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 730
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v60    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 734
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 735
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->completeBackagroundAllModes(II)Z

    move-result v60

    .line 736
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v60, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/4 v4, 0x1

    return v4

    .line 737
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 742
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v60    # "_result":Z
    :sswitch_38
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 746
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 747
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->getProcessBackgourndModes(II)I

    move-result v50

    .line 748
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v4, 0x1

    return v4

    .line 754
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v50    # "_result":I
    :sswitch_39
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/active/IActiveAppStatusChange;

    move-result-object v36

    .line 757
    .local v36, "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z

    move-result v60

    .line 758
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v60, :cond_1d

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    const/4 v4, 0x1

    return v4

    .line 759
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    .line 764
    .end local v36    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .end local v60    # "_result":Z
    :sswitch_3a
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/active/IActiveAppStatusChange;

    move-result-object v36

    .line 767
    .restart local v36    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z

    move-result v60

    .line 768
    .restart local v60    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v60, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    const/4 v4, 0x1

    return v4

    .line 769
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 774
    .end local v36    # "_arg0":Lcom/miui/whetstone/active/IActiveAppStatusChange;
    .end local v60    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 778
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 779
    .local v45, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v12, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->log(I[B)V

    .line 780
    const/4 v4, 0x1

    return v4

    .line 784
    .end local v12    # "_arg0":I
    .end local v45    # "_arg1":[B
    :sswitch_3c
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 787
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    .line 793
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 795
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/watermark/IWatermarkCallback;

    move-result-object v48

    .line 796
    .local v48, "_arg2":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v6, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    const/4 v4, 0x1

    return v4

    .line 790
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v48    # "_arg2":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    :cond_1f
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 802
    .end local v27    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_3d
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 805
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    .line 811
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/watermark/IWatermarkCallback;

    move-result-object v42

    .line 812
    .local v42, "_arg1":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v4, 0x1

    return v4

    .line 808
    .end local v42    # "_arg1":Lcom/miui/whetstone/watermark/IWatermarkCallback;
    :cond_20
    const/16 v27, 0x0

    .restart local v27    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_20

    .line 818
    .end local v27    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_3e
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 822
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 823
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackageInfoByUid(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v57

    .line 824
    .restart local v57    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v57, :cond_21

    .line 826
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 832
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 830
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 836
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v57    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_3f
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 840
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 841
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/PendingIntent;

    .line 847
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v49, 0x1

    .line 848
    .local v49, "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v49

    invoke-virtual {v0, v12, v1, v2}, Lcom/miui/whetstone/IWhetstone$Stub;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    const/4 v4, 0x1

    return v4

    .line 844
    .end local v49    # "_arg2":Z
    :cond_22
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/app/PendingIntent;
    goto :goto_22

    .line 847
    .end local v38    # "_arg1":Landroid/app/PendingIntent;
    :cond_23
    const/16 v49, 0x0

    goto :goto_23

    .line 854
    .end local v12    # "_arg0":I
    :sswitch_40
    const-string/jumbo v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 857
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    .line 862
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->markPerceptibleJank(Landroid/os/Bundle;)V

    .line 863
    const/4 v4, 0x1

    return v4

    .line 860
    :cond_24
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/os/Bundle;
    goto :goto_24

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
