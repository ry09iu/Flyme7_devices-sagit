.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x26

.field static final TRANSACTION_acquireWifiLock:I = 0x21

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addPasspointManagementObject:I = 0x8

.field static final TRANSACTION_addToBlacklist:I = 0x2d

.field static final TRANSACTION_buildWifiConfig:I = 0x2b

.field static final TRANSACTION_clearBlacklist:I = 0x2e

.field static final TRANSACTION_deauthenticateNetwork:I = 0xc

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3e

.field static final TRANSACTION_disableNetwork:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x13

.field static final TRANSACTION_enableAggressiveHandover:I = 0x36

.field static final TRANSACTION_enableNetwork:I = 0xe

.field static final TRANSACTION_enableTdls:I = 0x31

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x32

.field static final TRANSACTION_enableVerboseLogging:I = 0x34

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3c

.field static final TRANSACTION_factoryReset:I = 0x3f

.field static final TRANSACTION_getAggressiveHandover:I = 0x37

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x39

.field static final TRANSACTION_getConfigFile:I = 0x30

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x16

.field static final TRANSACTION_getConnectionStatistics:I = 0x3d

.field static final TRANSACTION_getCountryCode:I = 0x1a

.field static final TRANSACTION_getCurrentNetwork:I = 0x40

.field static final TRANSACTION_getDhcpInfo:I = 0x1f

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3b

.field static final TRANSACTION_getFrequencyBand:I = 0x1c

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x12

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x35

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2a

.field static final TRANSACTION_getWifiApEnabledState:I = 0x29

.field static final TRANSACTION_getWifiEnabledState:I = 0x18

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2f

.field static final TRANSACTION_getWifiStaSapConcurrency:I = 0x41

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x33

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x24

.field static final TRANSACTION_isDualBandSupported:I = 0x1d

.field static final TRANSACTION_isMulticastEnabled:I = 0x25

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x20

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xb

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0x9

.field static final TRANSACTION_pingSupplicant:I = 0x10

.field static final TRANSACTION_queryPasspointIcon:I = 0xa

.field static final TRANSACTION_reassociate:I = 0x15

.field static final TRANSACTION_reconnect:I = 0x14

.field static final TRANSACTION_releaseMulticastLock:I = 0x27

.field static final TRANSACTION_releaseWifiLock:I = 0x23

.field static final TRANSACTION_removeNetwork:I = 0xd

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x1e

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x38

.field static final TRANSACTION_setCountryCode:I = 0x19

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3a

.field static final TRANSACTION_setFrequencyBand:I = 0x1b

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_setWifiApEnabled:I = 0x28

.field static final TRANSACTION_setWifiEnabled:I = 0x17

.field static final TRANSACTION_startScan:I = 0x11

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 35
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

    .line 756
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v34

    return v34

    .line 47
    :sswitch_0
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v34, 0x1

    return v34

    .line 52
    :sswitch_1
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v22

    .line 54
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v34, 0x1

    return v34

    .line 60
    .end local v22    # "_result":I
    :sswitch_2
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v26

    .line 62
    .local v26, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v26, :cond_0

    .line 64
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v34, 0x1

    return v34

    .line 68
    :cond_0
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v26    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1

    .line 77
    sget-object v34, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v34, 0x1

    return v34

    .line 80
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v11    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .line 89
    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v23, :cond_2

    .line 91
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_2
    const/16 v34, 0x1

    return v34

    .line 95
    :cond_2
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 101
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_5
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .line 103
    .restart local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v23, :cond_3

    .line 105
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_3
    const/16 v34, 0x1

    return v34

    .line 109
    :cond_3
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 115
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_6
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_4

    .line 118
    sget-object v34, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 123
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 124
    .local v27, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v27, :cond_5

    .line 126
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_5
    const/16 v34, 0x1

    return v34

    .line 121
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_4

    .line 130
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 136
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_6

    .line 139
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 144
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    .line 145
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v34, 0x1

    return v34

    .line 142
    .end local v22    # "_result":I
    :cond_6
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_6

    .line 151
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v22

    .line 155
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/16 v34, 0x1

    return v34

    .line 161
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_9
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 165
    .restart local v12    # "_arg0":Ljava/lang/String;
    sget-object v34, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 166
    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    move-result v22

    .line 167
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/16 v34, 0x1

    return v34

    .line 173
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v22    # "_result":I
    :sswitch_a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 177
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 178
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/16 v34, 0x1

    return v34

    .line 184
    .end local v6    # "_arg0":J
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 187
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v22

    .line 188
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/16 v34, 0x1

    return v34

    .line 194
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 198
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_7

    const/16 v18, 0x1

    .line 199
    .local v18, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/16 v34, 0x1

    return v34

    .line 198
    .end local v18    # "_arg1":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    .line 205
    .end local v6    # "_arg0":J
    :sswitch_d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v33

    .line 209
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v33, :cond_8

    const/16 v34, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/16 v34, 0x1

    return v34

    .line 210
    :cond_8
    const/16 v34, 0x0

    goto :goto_8

    .line 215
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_9

    const/16 v18, 0x1

    .line 220
    .restart local v18    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v33

    .line 221
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v33, :cond_a

    const/16 v34, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/16 v34, 0x1

    return v34

    .line 219
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_9

    .line 222
    .restart local v18    # "_arg1":Z
    .restart local v33    # "_result":Z
    :cond_a
    const/16 v34, 0x0

    goto :goto_a

    .line 227
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :sswitch_f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 230
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v33

    .line 231
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v33, :cond_b

    const/16 v34, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/16 v34, 0x1

    return v34

    .line 232
    :cond_b
    const/16 v34, 0x0

    goto :goto_b

    .line 237
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_10
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v33

    .line 239
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v33, :cond_c

    const/16 v34, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/16 v34, 0x1

    return v34

    .line 240
    :cond_c
    const/16 v34, 0x0

    goto :goto_c

    .line 245
    .end local v33    # "_result":Z
    :sswitch_11
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_d

    .line 248
    sget-object v34, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    .line 254
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_e

    .line 255
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 260
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/16 v34, 0x1

    return v34

    .line 251
    :cond_d
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_d

    .line 258
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_e
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/os/WorkSource;
    goto :goto_e

    .line 266
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_12
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 269
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 270
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 272
    const/16 v34, 0x1

    return v34

    .line 276
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_13
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/16 v34, 0x1

    return v34

    .line 283
    :sswitch_14
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/16 v34, 0x1

    return v34

    .line 290
    :sswitch_15
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/16 v34, 0x1

    return v34

    .line 297
    :sswitch_16
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v29

    .line 299
    .local v29, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v29, :cond_f

    .line 301
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    :goto_f
    const/16 v34, 0x1

    return v34

    .line 305
    :cond_f
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 311
    .end local v29    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_17
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_10

    const/4 v13, 0x1

    .line 314
    .local v13, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v33

    .line 315
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v33, :cond_11

    const/16 v34, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/16 v34, 0x1

    return v34

    .line 313
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_10
    const/4 v13, 0x0

    goto :goto_10

    .line 316
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_11
    const/16 v34, 0x0

    goto :goto_11

    .line 321
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_18
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v22

    .line 323
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/16 v34, 0x1

    return v34

    .line 329
    .end local v22    # "_result":I
    :sswitch_19
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 333
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_12

    const/16 v18, 0x1

    .line 334
    .restart local v18    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/16 v34, 0x1

    return v34

    .line 333
    .end local v18    # "_arg1":Z
    :cond_12
    const/16 v18, 0x0

    goto :goto_12

    .line 340
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v31

    .line 342
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    const/16 v34, 0x1

    return v34

    .line 348
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_13

    const/16 v18, 0x1

    .line 353
    .restart local v18    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/16 v34, 0x1

    return v34

    .line 352
    .end local v18    # "_arg1":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    .line 359
    .end local v4    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v22

    .line 361
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/16 v34, 0x1

    return v34

    .line 367
    .end local v22    # "_result":I
    :sswitch_1d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v33

    .line 369
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v33, :cond_14

    const/16 v34, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/16 v34, 0x1

    return v34

    .line 370
    :cond_14
    const/16 v34, 0x0

    goto :goto_14

    .line 375
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v33

    .line 377
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v33, :cond_15

    const/16 v34, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/16 v34, 0x1

    return v34

    .line 378
    :cond_15
    const/16 v34, 0x0

    goto :goto_15

    .line 383
    .end local v33    # "_result":Z
    :sswitch_1f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v24

    .line 385
    .local v24, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v24, :cond_16

    .line 387
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_16
    const/16 v34, 0x1

    return v34

    .line 391
    :cond_16
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 397
    .end local v24    # "_result":Landroid/net/DhcpInfo;
    :sswitch_20
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v33

    .line 399
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v33, :cond_17

    const/16 v34, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/16 v34, 0x1

    return v34

    .line 400
    :cond_17
    const/16 v34, 0x0

    goto :goto_17

    .line 405
    .end local v33    # "_result":Z
    :sswitch_21
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 409
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 411
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 413
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_18

    .line 414
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/WorkSource;

    .line 419
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v33

    .line 420
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v33, :cond_19

    const/16 v34, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/16 v34, 0x1

    return v34

    .line 417
    .end local v33    # "_result":Z
    :cond_18
    const/16 v21, 0x0

    .local v21, "_arg3":Landroid/os/WorkSource;
    goto :goto_18

    .line 421
    .end local v21    # "_arg3":Landroid/os/WorkSource;
    .restart local v33    # "_result":Z
    :cond_19
    const/16 v34, 0x0

    goto :goto_19

    .line 426
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 430
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1a

    .line 431
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 436
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/16 v34, 0x1

    return v34

    .line 434
    :cond_1a
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Landroid/os/WorkSource;
    goto :goto_1a

    .line 442
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_23
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 445
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v33

    .line 446
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v33, :cond_1b

    const/16 v34, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/16 v34, 0x1

    return v34

    .line 447
    :cond_1b
    const/16 v34, 0x0

    goto :goto_1b

    .line 452
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_result":Z
    :sswitch_24
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/16 v34, 0x1

    return v34

    .line 459
    :sswitch_25
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v33

    .line 461
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v33, :cond_1c

    const/16 v34, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/16 v34, 0x1

    return v34

    .line 462
    :cond_1c
    const/16 v34, 0x0

    goto :goto_1c

    .line 467
    .end local v33    # "_result":Z
    :sswitch_26
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 471
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 472
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/16 v34, 0x1

    return v34

    .line 478
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/16 v34, 0x1

    return v34

    .line 485
    :sswitch_28
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1d

    .line 488
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 494
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1e

    const/16 v18, 0x1

    .line 495
    .restart local v18    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/16 v34, 0x1

    return v34

    .line 491
    .end local v18    # "_arg1":Z
    :cond_1d
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1d

    .line 494
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/16 v18, 0x0

    goto :goto_1e

    .line 501
    :sswitch_29
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v22

    .line 503
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/16 v34, 0x1

    return v34

    .line 509
    .end local v22    # "_result":I
    :sswitch_2a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 511
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v27, :cond_1f

    .line 513
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 519
    :goto_1f
    const/16 v34, 0x1

    return v34

    .line 517
    :cond_1f
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 523
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 527
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 529
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 530
    .local v20, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 531
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v27, :cond_20

    .line 533
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 539
    :goto_20
    const/16 v34, 0x1

    return v34

    .line 537
    :cond_20
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 543
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":[B
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_21

    .line 546
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 551
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/16 v34, 0x1

    return v34

    .line 549
    :cond_21
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_21

    .line 557
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 560
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/16 v34, 0x1

    return v34

    .line 566
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/16 v34, 0x1

    return v34

    .line 573
    :sswitch_2f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v30

    .line 575
    .local v30, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v30, :cond_22

    .line 577
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/16 v34, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 583
    :goto_22
    const/16 v34, 0x1

    return v34

    .line 581
    :cond_22
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 587
    .end local v30    # "_result":Landroid/os/Messenger;
    :sswitch_30
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v31

    .line 589
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    const/16 v34, 0x1

    return v34

    .line 595
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 599
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_23

    const/16 v18, 0x1

    .line 600
    .restart local v18    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/16 v34, 0x1

    return v34

    .line 599
    .end local v18    # "_arg1":Z
    :cond_23
    const/16 v18, 0x0

    goto :goto_23

    .line 606
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 610
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_24

    const/16 v18, 0x1

    .line 611
    .restart local v18    # "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    const/16 v34, 0x1

    return v34

    .line 610
    .end local v18    # "_arg1":Z
    :cond_24
    const/16 v18, 0x0

    goto :goto_24

    .line 617
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 620
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v31

    .line 621
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    const/16 v34, 0x1

    return v34

    .line 627
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 630
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/16 v34, 0x1

    return v34

    .line 636
    .end local v4    # "_arg0":I
    :sswitch_35
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v22

    .line 638
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/16 v34, 0x1

    return v34

    .line 644
    .end local v22    # "_result":I
    :sswitch_36
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 647
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    const/16 v34, 0x1

    return v34

    .line 653
    .end local v4    # "_arg0":I
    :sswitch_37
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v22

    .line 655
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/16 v34, 0x1

    return v34

    .line 661
    .end local v22    # "_result":I
    :sswitch_38
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 664
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/16 v34, 0x1

    return v34

    .line 670
    .end local v4    # "_arg0":I
    :sswitch_39
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v22

    .line 672
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    const/16 v34, 0x1

    return v34

    .line 678
    .end local v22    # "_result":I
    :sswitch_3a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_25

    const/4 v13, 0x1

    .line 681
    .restart local v13    # "_arg0":Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v33

    .line 682
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v33, :cond_26

    const/16 v34, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/16 v34, 0x1

    return v34

    .line 680
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_25
    const/4 v13, 0x0

    goto :goto_25

    .line 683
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_26
    const/16 v34, 0x0

    goto :goto_26

    .line 688
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_3b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v33

    .line 690
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v33, :cond_27

    const/16 v34, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/16 v34, 0x1

    return v34

    .line 691
    :cond_27
    const/16 v34, 0x0

    goto :goto_27

    .line 696
    .end local v33    # "_result":Z
    :sswitch_3c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_28

    const/4 v13, 0x1

    .line 699
    .restart local v13    # "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/16 v34, 0x1

    return v34

    .line 698
    .end local v13    # "_arg0":Z
    :cond_28
    const/4 v13, 0x0

    goto :goto_28

    .line 705
    :sswitch_3d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v28

    .line 707
    .local v28, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    if-eqz v28, :cond_29

    .line 709
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 715
    :goto_29
    const/16 v34, 0x1

    return v34

    .line 713
    :cond_29
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 719
    .end local v28    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 722
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/16 v34, 0x1

    return v34

    .line 728
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/16 v34, 0x1

    return v34

    .line 735
    :sswitch_40
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v25

    .line 737
    .local v25, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v25, :cond_2a

    .line 739
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_2a
    const/16 v34, 0x1

    return v34

    .line 743
    :cond_2a
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 749
    .end local v25    # "_result":Landroid/net/Network;
    :sswitch_41
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStaSapConcurrency()Z

    move-result v33

    .line 751
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v33, :cond_2b

    const/16 v34, 0x1

    :goto_2b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/16 v34, 0x1

    return v34

    .line 752
    :cond_2b
    const/16 v34, 0x0

    goto :goto_2b

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
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
