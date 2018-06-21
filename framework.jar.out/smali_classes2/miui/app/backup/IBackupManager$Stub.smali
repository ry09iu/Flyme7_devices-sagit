.class public abstract Lmiui/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Lmiui/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IBackupManager"

.field static final TRANSACTION_acquire:I = 0x4

.field static final TRANSACTION_addCompletedSize:I = 0xd

.field static final TRANSACTION_backupPackage:I = 0x1

.field static final TRANSACTION_errorOccur:I = 0x6

.field static final TRANSACTION_getBackupTimeoutScale:I = 0x13

.field static final TRANSACTION_getCurrentRunningPackage:I = 0x7

.field static final TRANSACTION_getCurrentWorkingFeature:I = 0x8

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_isNeedBeKilled:I = 0xe

.field static final TRANSACTION_isRunningFromMiui:I = 0x10

.field static final TRANSACTION_isServiceIdle:I = 0x11

.field static final TRANSACTION_onApkInstalled:I = 0xc

.field static final TRANSACTION_readMiuiBackupHeader:I = 0xb

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_restoreFile:I = 0x3

.field static final TRANSACTION_setCustomProgress:I = 0x12

.field static final TRANSACTION_setIsNeedBeKilled:I = 0xf

.field static final TRANSACTION_startConfirmationUi:I = 0x2

.field static final TRANSACTION_writeMiuiBackupHeader:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;
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
    const-string/jumbo v1, "miui.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/app/backup/IBackupManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 29
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

    .line 273
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 66
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    .line 76
    .local v11, "_arg6":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v12, 0x1

    .line 78
    .local v12, "_arg7":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v13

    .local v13, "_arg8":Lmiui/app/backup/IPackageBackupRestoreObserver;
    move-object/from16 v4, p0

    .line 79
    invoke-virtual/range {v4 .. v13}, Lmiui/app/backup/IBackupManager$Stub;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v4, 0x1

    return v4

    .line 56
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    .end local v13    # "_arg8":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 63
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 74
    .end local v6    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v10    # "_arg5":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Z
    goto :goto_2

    .line 76
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "_arg7":Z
    goto :goto_3

    .line 85
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Z
    .end local v12    # "_arg7":Z
    :sswitch_2
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 89
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lmiui/app/backup/IBackupManager$Stub;->startConfirmationUi(ILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v4, 0x1

    return v4

    .line 96
    .end local v14    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 105
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 107
    .restart local v21    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v24, 0x1

    .line 109
    .local v24, "_arg2":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v25

    .line 110
    .local v25, "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Lmiui/app/backup/IBackupManager$Stub;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v4, 0x1

    return v4

    .line 102
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v25    # "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 107
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "_arg1":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_5

    .line 116
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    :sswitch_4
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v18

    .line 120
    .local v18, "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 121
    .local v20, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v28

    .line 122
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v28, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v4, 0x1

    return v4

    .line 123
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 128
    .end local v18    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    .end local v20    # "_arg1":Landroid/os/IBinder;
    .end local v28    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v18

    .line 131
    .restart local v18    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v4, 0x1

    return v4

    .line 137
    .end local v18    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    :sswitch_6
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 140
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmiui/app/backup/IBackupManager$Stub;->errorOccur(I)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v4, 0x1

    return v4

    .line 146
    .end local v14    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v27

    .line 148
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 154
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentWorkingFeature()I

    move-result v26

    .line 156
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 162
    .end local v26    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getState()I

    move-result v26

    .line 164
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v26    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 173
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 178
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/app/backup/IBackupManager$Stub;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v4, 0x1

    return v4

    .line 176
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 184
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 192
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/app/backup/IBackupManager$Stub;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v4, 0x1

    return v4

    .line 190
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 198
    .end local v5    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_c
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->onApkInstalled()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v4, 0x1

    return v4

    .line 205
    :sswitch_d
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 208
    .local v16, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->addCompletedSize(J)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 214
    .end local v16    # "_arg0":J
    :sswitch_e
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmiui/app/backup/IBackupManager$Stub;->isNeedBeKilled(Ljava/lang/String;)Z

    move-result v28

    .line 218
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v28, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v4, 0x1

    return v4

    .line 219
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 224
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 228
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v22, 0x1

    .line 229
    .local v22, "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lmiui/app/backup/IBackupManager$Stub;->setIsNeedBeKilled(Ljava/lang/String;Z)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v4, 0x1

    return v4

    .line 228
    .end local v22    # "_arg1":Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_a

    .line 235
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 238
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmiui/app/backup/IBackupManager$Stub;->isRunningFromMiui(I)Z

    move-result v28

    .line 239
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v28, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v4, 0x1

    return v4

    .line 240
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 245
    .end local v14    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->isServiceIdle()Z

    move-result v28

    .line 247
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v28, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v4, 0x1

    return v4

    .line 248
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 253
    .end local v28    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 257
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 259
    .local v19, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 260
    .local v23, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->setCustomProgress(III)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v4, 0x1

    return v4

    .line 266
    .end local v14    # "_arg0":I
    .end local v19    # "_arg1":I
    .end local v23    # "_arg2":I
    :sswitch_13
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getBackupTimeoutScale()I

    move-result v26

    .line 268
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v4, 0x1

    return v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
