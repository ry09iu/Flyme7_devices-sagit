.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.server.IWhetstoneActivityManager"

.field static final TRANSACTION_addAppToServiceControlWhitelist:I = 0x1c

.field static final TRANSACTION_bindWhetstoneService:I = 0x6

.field static final TRANSACTION_checkApplicationsMemoryThreshold:I = 0xb

.field static final TRANSACTION_checkIfPackageIsLocked:I = 0x16

.field static final TRANSACTION_checkIfPackageIsLockedWithUserId:I = 0x17

.field static final TRANSACTION_clearDeadAppFromNative:I = 0x13

.field static final TRANSACTION_distoryActivity:I = 0x5

.field static final TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0x9

.field static final TRANSACTION_getBackgroundAPPS:I = 0x2

.field static final TRANSACTION_getComponentManagerNative:I = 0x1a

.field static final TRANSACTION_getConnProviderNames:I = 0x1f

.field static final TRANSACTION_getPackageNamebyPid:I = 0x1

.field static final TRANSACTION_getPartialWakeLockHoldByUid:I = 0x12

.field static final TRANSACTION_getPowerKeeperPolicy:I = 0x11

.field static final TRANSACTION_getProcessReceiverState:I = 0x19

.field static final TRANSACTION_getSystemPid:I = 0x7

.field static final TRANSACTION_isProcessExecutingServices:I = 0x1b

.field static final TRANSACTION_promoteApplicationLevel:I = 0xf

.field static final TRANSACTION_putUidFrozenState:I = 0xc

.field static final TRANSACTION_releaseApplicationPromoteLevel:I = 0x10

.field static final TRANSACTION_removeAppFromServiceControlWhitelist:I = 0x1d

.field static final TRANSACTION_removeTaskById:I = 0x1e

.field static final TRANSACTION_scheduleStopService:I = 0x4

.field static final TRANSACTION_scheduleTrimMemory:I = 0x3

.field static final TRANSACTION_setPerformanceComponents:I = 0x8

.field static final TRANSACTION_updateApplicationByLockedState:I = 0xd

.field static final TRANSACTION_updateApplicationByLockedStateWithUserId:I = 0xe

.field static final TRANSACTION_updateApplicationsMemoryThreshold:I = 0xa

.field static final TRANSACTION_updateFrameworkCommonConfig:I = 0x18

.field static final TRANSACTION_updateUserLockedAppList:I = 0x14

.field static final TRANSACTION_updateUserLockedAppListWithUserId:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
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
    const-string/jumbo v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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

    .line 365
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v24

    return v24

    .line 45
    :sswitch_0
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v24, 0x1

    return v24

    .line 50
    :sswitch_1
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v21

    .line 54
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/16 v24, 0x1

    return v24

    .line 60
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v23

    .line 62
    .local v23, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 64
    const/16 v24, 0x1

    return v24

    .line 68
    .end local v23    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 73
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v22

    .line 74
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v22, :cond_0

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/16 v24, 0x1

    return v24

    .line 75
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 80
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_4
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_1

    .line 85
    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 90
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v22

    .line 91
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v22, :cond_2

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/16 v24, 0x1

    return v24

    .line 88
    .end local v22    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 92
    .end local v10    # "_arg1":Landroid/content/ComponentName;
    .restart local v22    # "_result":Z
    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .line 97
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_5
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v22

    .line 101
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v22, :cond_3

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/16 v24, 0x1

    return v24

    .line 102
    :cond_3
    const/16 v24, 0x0

    goto :goto_3

    .line 107
    .end local v4    # "_arg0":I
    .end local v22    # "_result":Z
    :sswitch_6
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 110
    .local v5, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/16 v24, 0x1

    return v24

    .line 116
    .end local v5    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v16

    .line 118
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/16 v24, 0x1

    return v24

    .line 124
    .end local v16    # "_result":I
    :sswitch_8
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 127
    .local v8, "_arg0":[Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v22

    .line 128
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v22, :cond_4

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/16 v24, 0x1

    return v24

    .line 129
    :cond_4
    const/16 v24, 0x0

    goto :goto_4

    .line 134
    .end local v8    # "_arg0":[Landroid/content/ComponentName;
    .end local v22    # "_result":Z
    :sswitch_9
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v18

    .line 136
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    const/16 v24, 0x1

    return v24

    .line 142
    .end local v18    # "_result":J
    :sswitch_a
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 145
    .local v7, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/16 v24, 0x1

    return v24

    .line 151
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 157
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 158
    .local v14, "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v14, v15}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 159
    const/16 v24, 0x1

    return v24

    .line 163
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v14    # "_arg2":J
    :sswitch_c
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 168
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->putUidFrozenState(II)Z

    move-result v22

    .line 169
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v22, :cond_5

    const/16 v24, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/16 v24, 0x1

    return v24

    .line 170
    :cond_5
    const/16 v24, 0x0

    goto :goto_5

    .line 175
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_d
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 179
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_6

    const/4 v11, 0x1

    .line 180
    .local v11, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedState(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/16 v24, 0x1

    return v24

    .line 179
    .end local v11    # "_arg1":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 186
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_7

    const/4 v11, 0x1

    .line 192
    .local v11, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 193
    .local v12, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v12}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/16 v24, 0x1

    return v24

    .line 190
    .end local v11    # "_arg1":Z
    .end local v12    # "_arg2":I
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_7

    .line 199
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Z
    :sswitch_f
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 204
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->promoteApplicationLevel(II)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v24, 0x1

    return v24

    .line 210
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_10
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->releaseApplicationPromoteLevel()V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/16 v24, 0x1

    return v24

    .line 217
    :sswitch_11
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v20

    .line 219
    .local v20, "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Lcom/miui/whetstone/IPowerKeeperPolicy;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_8
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 221
    const/16 v24, 0x1

    return v24

    .line 220
    :cond_8
    const/16 v24, 0x0

    goto :goto_8

    .line 225
    .end local v20    # "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    :sswitch_12
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPartialWakeLockHoldByUid(I)I

    move-result v16

    .line 229
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/16 v24, 0x1

    return v24

    .line 235
    .end local v4    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_13
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->clearDeadAppFromNative()V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/16 v24, 0x1

    return v24

    .line 242
    :sswitch_14
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 245
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppList(Ljava/util/List;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/16 v24, 0x1

    return v24

    .line 251
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 255
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 256
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/16 v24, 0x1

    return v24

    .line 262
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg1":I
    :sswitch_16
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 265
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v22

    .line 266
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v22, :cond_9

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/16 v24, 0x1

    return v24

    .line 267
    :cond_9
    const/16 v24, 0x0

    goto :goto_9

    .line 272
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_17
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 276
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 277
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v22

    .line 278
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v22, :cond_a

    const/16 v24, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/16 v24, 0x1

    return v24

    .line 279
    :cond_a
    const/16 v24, 0x0

    goto :goto_a

    .line 284
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_18
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 287
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/16 v24, 0x1

    return v24

    .line 293
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getProcessReceiverState(I)Z

    move-result v22

    .line 297
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v22, :cond_b

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/16 v24, 0x1

    return v24

    .line 298
    :cond_b
    const/16 v24, 0x0

    goto :goto_b

    .line 303
    .end local v4    # "_arg0":I
    .end local v22    # "_result":Z
    :sswitch_1a
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;

    move-result-object v17

    .line 305
    .local v17, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_c
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 307
    const/16 v24, 0x1

    return v24

    .line 306
    :cond_c
    const/16 v24, 0x0

    goto :goto_c

    .line 311
    .end local v17    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_1b
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 314
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isProcessExecutingServices(I)Z

    move-result v22

    .line 315
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v22, :cond_d

    const/16 v24, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/16 v24, 0x1

    return v24

    .line 316
    :cond_d
    const/16 v24, 0x0

    goto :goto_d

    .line 321
    .end local v4    # "_arg0":I
    .end local v22    # "_result":Z
    :sswitch_1c
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 324
    .restart local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/16 v24, 0x1

    return v24

    .line 330
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1d
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 333
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/16 v24, 0x1

    return v24

    .line 339
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_e

    const/4 v11, 0x1

    .line 344
    .local v11, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeTaskById(IZ)Z

    move-result v22

    .line 345
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v22, :cond_f

    const/16 v24, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/16 v24, 0x1

    return v24

    .line 343
    .end local v11    # "_arg1":Z
    .end local v22    # "_result":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_e

    .line 346
    .restart local v11    # "_arg1":Z
    .restart local v22    # "_result":Z
    :cond_f
    const/16 v24, 0x0

    goto :goto_f

    .line 351
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Z
    .end local v22    # "_result":Z
    :sswitch_1f
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 355
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 357
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 358
    .local v13, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v13}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z

    move-result v22

    .line 359
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v22, :cond_10

    const/16 v24, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 362
    const/16 v24, 0x1

    return v24

    .line 360
    :cond_10
    const/16 v24, 0x0

    goto :goto_10

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
