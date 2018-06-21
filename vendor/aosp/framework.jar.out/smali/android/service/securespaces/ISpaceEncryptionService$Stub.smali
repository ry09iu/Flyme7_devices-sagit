.class public abstract Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.super Landroid/os/Binder;
.source "ISpaceEncryptionService.java"

# interfaces
.implements Landroid/service/securespaces/ISpaceEncryptionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/securespaces/ISpaceEncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.securespaces.ISpaceEncryptionService"

.field static final TRANSACTION_ecryptfsMount:I = 0x3

.field static final TRANSACTION_ecryptfsMountRemovable:I = 0x1

.field static final TRANSACTION_ecryptfsOverwrite:I = 0x6

.field static final TRANSACTION_ecryptfsUnmount:I = 0x4

.field static final TRANSACTION_ecryptfsUnmountRemovable:I = 0x2

.field static final TRANSACTION_ecryptfsUpdate:I = 0x5

.field static final TRANSACTION_isAuthProtected:I = 0x9

.field static final TRANSACTION_isDataDirectoryTmpfs:I = 0x16

.field static final TRANSACTION_needAirlockUser:I = 0xa

.field static final TRANSACTION_needsEcryptfsMount:I = 0x7

.field static final TRANSACTION_onWipeUserDataCompleted:I = 0x18

.field static final TRANSACTION_processEncryption:I = 0x8

.field static final TRANSACTION_setAirlockWallpaperToUser:I = 0xc

.field static final TRANSACTION_setOpAddExcludeFromWipe:I = 0x14

.field static final TRANSACTION_setOpClearUserData:I = 0x13

.field static final TRANSACTION_setOpCreateUserConfig:I = 0x12

.field static final TRANSACTION_setOpCreateUserData:I = 0xd

.field static final TRANSACTION_setOpDeleteCacheFiles:I = 0x10

.field static final TRANSACTION_setOpDeleteCodeCacheFiles:I = 0x11

.field static final TRANSACTION_setOpDestroyAppData:I = 0x15

.field static final TRANSACTION_setOpLinkNativeLibraryDir:I = 0xf

.field static final TRANSACTION_setOpRemove:I = 0xe

.field static final TRANSACTION_switchUser:I = 0xb

.field static final TRANSACTION_wipeRemovableUserDir:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.service.securespaces.ISpaceEncryptionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/securespaces/ISpaceEncryptionService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/securespaces/ISpaceEncryptionService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 335
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    return v2

    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 51
    .local v8, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsMountRemovable(I)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v2, 0x1

    return v2

    .line 57
    .end local v8    # "_arg0":I
    :sswitch_2
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 60
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUnmountRemovable(I)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v2, 0x1

    return v2

    .line 66
    .end local v8    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsMount(IILjava/lang/String;)I

    move-result v18

    .line 74
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v2, 0x1

    return v2

    .line 80
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 83
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUnmount(I)I

    move-result v18

    .line 84
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    return v2

    .line 90
    .end local v8    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_5
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 94
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 96
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUpdate(IILjava/lang/String;)I

    move-result v18

    .line 98
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_6
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 107
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsOverwrite(I)I

    move-result v18

    .line 108
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v8    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_7
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 117
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->needsEcryptfsMount(I)Z

    move-result v19

    .line 118
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v19, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    return v2

    .line 119
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    .end local v8    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_8
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    sget-object v2, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 132
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->processEncryption(Landroid/content/pm/UserInfo;)Z

    move-result v19

    .line 133
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v19, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x1

    return v2

    .line 130
    .end local v19    # "_result":Z
    :cond_1
    const/16 v16, 0x0

    .local v16, "_arg0":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 134
    .end local v16    # "_arg0":Landroid/content/pm/UserInfo;
    .restart local v19    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 139
    .end local v19    # "_result":Z
    :sswitch_9
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 142
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->isAuthProtected(I)Z

    move-result v19

    .line 143
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v19, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 149
    .end local v8    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_a
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 152
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->needAirlockUser(I)Z

    move-result v19

    .line 153
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v19, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 159
    .end local v8    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_b
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 162
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->switchUser(I)Z

    move-result v19

    .line 163
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v19, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v2, 0x1

    return v2

    .line 164
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 169
    .end local v8    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_c
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 172
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setAirlockWallpaperToUser(I)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v2, 0x1

    return v2

    .line 178
    .end local v8    # "_arg0":I
    :sswitch_d
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 189
    invoke-virtual/range {v2 .. v7}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 190
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v19, :cond_6

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    return v2

    .line 191
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 196
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_e
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 202
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 204
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v19, :cond_7

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v2, 0x1

    return v2

    .line 205
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 210
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_f
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 219
    .local v17, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 220
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v19, :cond_8

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    return v2

    .line 221
    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    .line 226
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_10
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 234
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v19, :cond_9

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v2, 0x1

    return v2

    .line 235
    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    .line 240
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_11
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 248
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v19, :cond_a

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v2, 0x1

    return v2

    .line 249
    :cond_a
    const/4 v2, 0x0

    goto :goto_a

    .line 254
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_12
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 257
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpCreateUserConfig(I)Z

    move-result v19

    .line 258
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v19, :cond_b

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v2, 0x1

    return v2

    .line 259
    :cond_b
    const/4 v2, 0x0

    goto :goto_b

    .line 264
    .end local v8    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_13
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 272
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v19, :cond_c

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    return v2

    .line 273
    :cond_c
    const/4 v2, 0x0

    goto :goto_c

    .line 278
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_14
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v19

    .line 286
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v19, :cond_d

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v2, 0x1

    return v2

    .line 287
    :cond_d
    const/4 v2, 0x0

    goto :goto_d

    .line 292
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_15
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 300
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, "_arg4":J
    move-object/from16 v9, p0

    move-object v10, v3

    move v13, v6

    .line 303
    invoke-virtual/range {v9 .. v15}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpDestroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)Z

    move-result v19

    .line 304
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v19, :cond_e

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v2, 0x1

    return v2

    .line 305
    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    .line 310
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v14    # "_arg4":J
    .end local v19    # "_result":Z
    :sswitch_16
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->isDataDirectoryTmpfs()Z

    move-result v19

    .line 312
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v19, :cond_f

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v2, 0x1

    return v2

    .line 313
    :cond_f
    const/4 v2, 0x0

    goto :goto_f

    .line 318
    .end local v19    # "_result":Z
    :sswitch_17
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 321
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->wipeRemovableUserDir(I)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v2, 0x1

    return v2

    .line 327
    .end local v8    # "_arg0":I
    :sswitch_18
    const-string/jumbo v2, "android.service.securespaces.ISpaceEncryptionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 330
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->onWipeUserDataCompleted(I)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v2, 0x1

    return v2

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
