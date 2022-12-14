.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x16

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_configHciSnoopLog:I = 0x30

.field static final TRANSACTION_connectSocket:I = 0x2e

.field static final TRANSACTION_createBond:I = 0x14

.field static final TRANSACTION_createBondOutOfBand:I = 0x15

.field static final TRANSACTION_createSocketChannel:I = 0x2f

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x31

.field static final TRANSACTION_fetchRemoteUuids:I = 0x20

.field static final TRANSACTION_getAdapterConnectionState:I = 0x11

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x18

.field static final TRANSACTION_getBondedDevices:I = 0x13

.field static final TRANSACTION_getConnectionState:I = 0x19

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getMessageAccessPermission:I = 0x27

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x25

.field static final TRANSACTION_getProfileConnectionState:I = 0x12

.field static final TRANSACTION_getRemoteAlias:I = 0x1c

.field static final TRANSACTION_getRemoteClass:I = 0x1e

.field static final TRANSACTION_getRemoteName:I = 0x1a

.field static final TRANSACTION_getRemoteType:I = 0x1b

.field static final TRANSACTION_getRemoteUuids:I = 0x1f

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x29

.field static final TRANSACTION_getSocketOpt:I = 0x3c

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x36

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x32

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x34

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x35

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x33

.field static final TRANSACTION_onBrEdrDown:I = 0x3a

.field static final TRANSACTION_onLeServiceUp:I = 0x39

.field static final TRANSACTION_registerCallback:I = 0x2c

.field static final TRANSACTION_removeBond:I = 0x17

.field static final TRANSACTION_reportActivityInfo:I = 0x37

.field static final TRANSACTION_requestActivityInfo:I = 0x38

.field static final TRANSACTION_sdpSearch:I = 0x21

.field static final TRANSACTION_sendConnectionStateChange:I = 0x2b

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setMessageAccessPermission:I = 0x28

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x24

.field static final TRANSACTION_setPasskey:I = 0x23

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x26

.field static final TRANSACTION_setPin:I = 0x22

.field static final TRANSACTION_setRemoteAlias:I = 0x1d

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x2a

.field static final TRANSACTION_setSocketOpt:I = 0x3b

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterCallback:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 839
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    return v2

    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v29

    .line 54
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v29, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v2, 0x1

    return v2

    .line 55
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    .end local v29    # "_result":Z
    :sswitch_2
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v25

    .line 62
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v2, 0x1

    return v2

    .line 68
    .end local v25    # "_result":I
    :sswitch_3
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v29

    .line 70
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v29, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v2, 0x1

    return v2

    .line 71
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 76
    .end local v29    # "_result":Z
    :sswitch_4
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v29

    .line 78
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v29, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v2, 0x1

    return v2

    .line 79
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 84
    .end local v29    # "_result":Z
    :sswitch_5
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v29

    .line 86
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v29, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 92
    .end local v29    # "_result":Z
    :sswitch_6
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v28

    .line 94
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    return v2

    .line 100
    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v31

    .line 102
    .local v31, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 104
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v31    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 111
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v29

    .line 112
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v29, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v2, 0x1

    return v2

    .line 113
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 118
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_9
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v28

    .line 120
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x1

    return v2

    .line 126
    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v25

    .line 128
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v25    # "_result":I
    :sswitch_b
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 138
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v29

    .line 140
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v29, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    return v2

    .line 141
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 146
    .end local v4    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v29    # "_result":Z
    :sswitch_c
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v25

    .line 148
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v2, 0x1

    return v2

    .line 154
    .end local v25    # "_result":I
    :sswitch_d
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 157
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v29

    .line 158
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v29, :cond_6

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v2, 0x1

    return v2

    .line 159
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 164
    .end local v9    # "_arg0":I
    .end local v29    # "_result":Z
    :sswitch_e
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v29

    .line 166
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v29, :cond_7

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v2, 0x1

    return v2

    .line 167
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 172
    .end local v29    # "_result":Z
    :sswitch_f
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v29

    .line 174
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v29, :cond_8

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x1

    return v2

    .line 175
    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    .line 180
    .end local v29    # "_result":Z
    :sswitch_10
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v29

    .line 182
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v29, :cond_9

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v2, 0x1

    return v2

    .line 183
    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    .line 188
    .end local v29    # "_result":Z
    :sswitch_11
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v25

    .line 190
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    return v2

    .line 196
    .end local v25    # "_result":I
    :sswitch_12
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 199
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v25

    .line 200
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v2, 0x1

    return v2

    .line 206
    .end local v9    # "_arg0":I
    .end local v25    # "_result":I
    :sswitch_13
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v30

    .line 208
    .local v30, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 210
    const/4 v2, 0x1

    return v2

    .line 214
    .end local v30    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_14
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 217
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 223
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v29

    .line 225
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v29, :cond_b

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v2, 0x1

    return v2

    .line 220
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_a
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 226
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_b

    .line 231
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_15
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 234
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 240
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 243
    sget-object v2, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/bluetooth/OobData;

    .line 248
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v29

    .line 249
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v29, :cond_e

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v2, 0x1

    return v2

    .line 237
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 246
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    :cond_d
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/bluetooth/OobData;
    goto :goto_d

    .line 250
    .end local v23    # "_arg2":Landroid/bluetooth/OobData;
    .restart local v29    # "_result":Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    .line 255
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_16
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 258
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 263
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v29

    .line 264
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v29, :cond_10

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v2, 0x1

    return v2

    .line 261
    .end local v29    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 265
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_10

    .line 270
    .end local v29    # "_result":Z
    :sswitch_17
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 273
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 278
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v29

    .line 279
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v29, :cond_12

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v2, 0x1

    return v2

    .line 276
    .end local v29    # "_result":Z
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 280
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_12
    const/4 v2, 0x0

    goto :goto_12

    .line 285
    .end local v29    # "_result":Z
    :sswitch_18
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 288
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 293
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 294
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v2, 0x1

    return v2

    .line 291
    .end local v25    # "_result":I
    :cond_13
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 300
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 303
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 308
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 309
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v2, 0x1

    return v2

    .line 306
    .end local v25    # "_result":I
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 315
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 318
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 323
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v28

    .line 324
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x1

    return v2

    .line 321
    .end local v28    # "_result":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 330
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 333
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 338
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 339
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    return v2

    .line 336
    .end local v25    # "_result":I
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 345
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 348
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 353
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v28

    .line 354
    .restart local v28    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    const/4 v2, 0x1

    return v2

    .line 351
    .end local v28    # "_result":Ljava/lang/String;
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 360
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1d
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 363
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 369
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v29

    .line 371
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v29, :cond_19

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v2, 0x1

    return v2

    .line 366
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :cond_18
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 372
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v29    # "_result":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_19

    .line 377
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_1e
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 380
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 385
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 386
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v2, 0x1

    return v2

    .line 383
    .end local v25    # "_result":I
    :cond_1a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 392
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 395
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 400
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v31

    .line 401
    .restart local v31    # "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 403
    const/4 v2, 0x1

    return v2

    .line 398
    .end local v31    # "_result":[Landroid/os/ParcelUuid;
    :cond_1b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 407
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_20
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 410
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 415
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v29

    .line 416
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v29, :cond_1d

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x1

    return v2

    .line 413
    .end local v29    # "_result":Z
    :cond_1c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 417
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v29    # "_result":Z
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1d

    .line 422
    .end local v29    # "_result":Z
    :sswitch_21
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 425
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 431
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 432
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/ParcelUuid;

    .line 437
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v29

    .line 438
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v29, :cond_20

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v2, 0x1

    return v2

    .line 428
    .end local v29    # "_result":Z
    :cond_1e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 435
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1f
    const/16 v21, 0x0

    .local v21, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 439
    .end local v21    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v29    # "_result":Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_20

    .line 444
    .end local v29    # "_result":Z
    :sswitch_22
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 447
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 453
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    const/16 v22, 0x1

    .line 455
    .local v22, "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 457
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 458
    .local v15, "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1, v14, v15}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v29

    .line 459
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v29, :cond_23

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v2, 0x1

    return v2

    .line 450
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .line 453
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_22
    const/16 v22, 0x0

    .restart local v22    # "_arg1":Z
    goto :goto_22

    .line 460
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":[B
    .restart local v29    # "_result":Z
    :cond_23
    const/4 v2, 0x0

    goto :goto_23

    .line 465
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :sswitch_23
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 468
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 474
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    const/16 v22, 0x1

    .line 476
    .restart local v22    # "_arg1":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 478
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 479
    .restart local v15    # "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1, v14, v15}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v29

    .line 480
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v29, :cond_26

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v2, 0x1

    return v2

    .line 471
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    .line 474
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_25
    const/16 v22, 0x0

    .restart local v22    # "_arg1":Z
    goto :goto_25

    .line 481
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":[B
    .restart local v29    # "_result":Z
    :cond_26
    const/4 v2, 0x0

    goto :goto_26

    .line 486
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :sswitch_24
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    .line 489
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 495
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/16 v22, 0x1

    .line 496
    .local v22, "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v29

    .line 497
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v29, :cond_29

    const/4 v2, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v2, 0x1

    return v2

    .line 492
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :cond_27
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    .line 495
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_28
    const/16 v22, 0x0

    goto :goto_28

    .line 498
    .restart local v22    # "_arg1":Z
    .restart local v29    # "_result":Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_29

    .line 503
    .end local v22    # "_arg1":Z
    .end local v29    # "_result":Z
    :sswitch_25
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 506
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 511
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 512
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/4 v2, 0x1

    return v2

    .line 509
    .end local v25    # "_result":I
    :cond_2a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    .line 518
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_26
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 521
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 527
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 528
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v29

    .line 529
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v29, :cond_2c

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v2, 0x1

    return v2

    .line 524
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_2b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    .line 530
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_2c
    const/4 v2, 0x0

    goto :goto_2c

    .line 535
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_27
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 538
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 543
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 544
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v2, 0x1

    return v2

    .line 541
    .end local v25    # "_result":I
    :cond_2d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    .line 550
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_28
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 553
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 559
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 560
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v29

    .line 561
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v29, :cond_2f

    const/4 v2, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v2, 0x1

    return v2

    .line 556
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_2e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .line 562
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2f

    .line 567
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_29
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 570
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 575
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v25

    .line 576
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v2, 0x1

    return v2

    .line 573
    .end local v25    # "_result":I
    :cond_30
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_30

    .line 582
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2a
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    .line 585
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 591
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 592
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v29

    .line 593
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v29, :cond_32

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v2, 0x1

    return v2

    .line 588
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_31
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_31

    .line 594
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_32
    const/4 v2, 0x0

    goto :goto_32

    .line 599
    .end local v4    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_2b
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    .line 602
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 608
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 610
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 612
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 613
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14, v6}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v2, 0x1

    return v2

    .line 605
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v14    # "_arg2":I
    :cond_33
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_33

    .line 619
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2c
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v17

    .line 622
    .local v17, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    const/4 v2, 0x1

    return v2

    .line 628
    .end local v17    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2d
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v17

    .line 631
    .restart local v17    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v2, 0x1

    return v2

    .line 637
    .end local v17    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2e
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    .line 640
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 646
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    .line 649
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 655
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 657
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 658
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v27

    .line 659
    .local v27, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    if-eqz v27, :cond_36

    .line 661
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v2, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    :goto_36
    const/4 v2, 0x1

    return v2

    .line 643
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_34
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_34

    .line 652
    .end local v3    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    :cond_35
    const/4 v5, 0x0

    .local v5, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_35

    .line 665
    .end local v5    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_36
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 671
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2f
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 675
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 677
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37

    .line 678
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 684
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 686
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v8, p0

    move-object v11, v5

    move v12, v6

    move v13, v7

    .line 687
    invoke-virtual/range {v8 .. v13}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v27

    .line 688
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v27, :cond_38

    .line 690
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    const/4 v2, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 696
    :goto_38
    const/4 v2, 0x1

    return v2

    .line 681
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_37
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_37

    .line 694
    .end local v5    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 700
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_30
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    const/16 v20, 0x1

    .line 703
    .local v20, "_arg0":Z
    :goto_39
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    move-result v29

    .line 704
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    if-eqz v29, :cond_3a

    const/4 v2, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v2, 0x1

    return v2

    .line 702
    .end local v20    # "_arg0":Z
    .end local v29    # "_result":Z
    :cond_39
    const/16 v20, 0x0

    goto :goto_39

    .line 705
    .restart local v20    # "_arg0":Z
    .restart local v29    # "_result":Z
    :cond_3a
    const/4 v2, 0x0

    goto :goto_3a

    .line 710
    .end local v20    # "_arg0":Z
    .end local v29    # "_result":Z
    :sswitch_31
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v29

    .line 712
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v29, :cond_3b

    const/4 v2, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v2, 0x1

    return v2

    .line 713
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3b

    .line 718
    .end local v29    # "_result":Z
    :sswitch_32
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v29

    .line 720
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v29, :cond_3c

    const/4 v2, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v2, 0x1

    return v2

    .line 721
    :cond_3c
    const/4 v2, 0x0

    goto :goto_3c

    .line 726
    .end local v29    # "_result":Z
    :sswitch_33
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    move-result v29

    .line 728
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v29, :cond_3d

    const/4 v2, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v2, 0x1

    return v2

    .line 729
    :cond_3d
    const/4 v2, 0x0

    goto :goto_3d

    .line 734
    .end local v29    # "_result":Z
    :sswitch_34
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v29

    .line 736
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v29, :cond_3e

    const/4 v2, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/4 v2, 0x1

    return v2

    .line 737
    :cond_3e
    const/4 v2, 0x0

    goto :goto_3e

    .line 742
    .end local v29    # "_result":Z
    :sswitch_35
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v29

    .line 744
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v29, :cond_3f

    const/4 v2, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v2, 0x1

    return v2

    .line 745
    :cond_3f
    const/4 v2, 0x0

    goto :goto_3f

    .line 750
    .end local v29    # "_result":Z
    :sswitch_36
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v29

    .line 752
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v29, :cond_40

    const/4 v2, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v2, 0x1

    return v2

    .line 753
    :cond_40
    const/4 v2, 0x0

    goto :goto_40

    .line 758
    .end local v29    # "_result":Z
    :sswitch_37
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v26

    .line 760
    .local v26, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v26, :cond_41

    .line 762
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v2, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 768
    :goto_41
    const/4 v2, 0x1

    return v2

    .line 766
    :cond_41
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 772
    .end local v26    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_38
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    .line 775
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ResultReceiver;

    .line 780
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 781
    const/4 v2, 0x1

    return v2

    .line 778
    :cond_42
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_42

    .line 785
    .end local v18    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_39
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v2, 0x1

    return v2

    .line 792
    :sswitch_3a
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v2, 0x1

    return v2

    .line 799
    :sswitch_3b
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 803
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 807
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 809
    .restart local v15    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v11, p0

    move v12, v9

    move v13, v4

    move/from16 v16, v7

    .line 810
    invoke-virtual/range {v11 .. v16}, Landroid/bluetooth/IBluetooth$Stub;->setSocketOpt(III[BI)I

    move-result v25

    .line 811
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v2, 0x1

    return v2

    .line 817
    .end local v4    # "_arg1":I
    .end local v7    # "_arg4":I
    .end local v9    # "_arg0":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v25    # "_result":I
    :sswitch_3c
    const-string/jumbo v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 821
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 823
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 825
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 826
    .local v24, "_arg3_length":I
    if-gez v24, :cond_43

    .line 827
    const/4 v15, 0x0

    .line 832
    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4, v14, v15}, Landroid/bluetooth/IBluetooth$Stub;->getSocketOpt(III[B)I

    move-result v25

    .line 833
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 836
    const/4 v2, 0x1

    return v2

    .line 830
    .end local v25    # "_result":I
    :cond_43
    move/from16 v0, v24

    new-array v15, v0, [B

    .restart local v15    # "_arg3":[B
    goto :goto_43

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
