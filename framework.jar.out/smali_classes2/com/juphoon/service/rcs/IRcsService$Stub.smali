.class public abstract Lcom/juphoon/service/rcs/IRcsService$Stub;
.super Landroid/os/Binder;
.source "IRcsService.java"

# interfaces
.implements Lcom/juphoon/service/rcs/IRcsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/rcs/IRcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/rcs/IRcsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.rcs.IRcsService"

.field static final TRANSACTION_Mtc_CliDbGetAccount:I = 0x2

.field static final TRANSACTION_Mtc_CliDbGetPcImpu:I = 0x11

.field static final TRANSACTION_Mtc_CliDbGetUserName:I = 0x1

.field static final TRANSACTION_Mtc_IsNeedSms:I = 0x5

.field static final TRANSACTION_Mtc_ProfDbGetCountryCode:I = 0x6

.field static final TRANSACTION_getCanCallSensitiveDeviceApi:I = 0x9

.field static final TRANSACTION_getCmccToken:I = 0x7

.field static final TRANSACTION_getGbaBtidKsNaf:I = 0x12

.field static final TRANSACTION_getNeedNotifySensitiveDeviceApi:I = 0xb

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_getStringForSensitive:I = 0x10

.field static final TRANSACTION_getTranslateSms:I = 0xd

.field static final TRANSACTION_getUseRcs:I = 0xc

.field static final TRANSACTION_login:I = 0x4

.field static final TRANSACTION_setCanCallSensitiveDeviceApi:I = 0x8

.field static final TRANSACTION_setNeedNotifySensitiveDeviceApi:I = 0xa

.field static final TRANSACTION_setTranslateSms:I = 0xf

.field static final TRANSACTION_setUseRcs:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/rcs/IRcsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.juphoon.service.rcs.IRcsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/rcs/IRcsService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/juphoon/service/rcs/IRcsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/juphoon/service/rcs/IRcsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/juphoon/service/rcs/IRcsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 42
    :sswitch_0
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v9

    .line 47
    :sswitch_1
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->Mtc_CliDbGetUserName()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v9

    .line 55
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->Mtc_CliDbGetAccount()Ljava/lang/String;

    move-result-object v6

    .line 57
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v9

    .line 63
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getState()I

    move-result v5

    .line 65
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v9

    .line 71
    .end local v5    # "_result":I
    :sswitch_4
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->login()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v9

    .line 78
    :sswitch_5
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->Mtc_IsNeedSms()Z

    move-result v7

    .line 80
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v7, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v9

    .line 86
    .end local v7    # "_result":Z
    :sswitch_6
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->Mtc_ProfDbGetCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 88
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v9

    .line 94
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getCmccToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v9

    .line 103
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v3, v9

    .line 108
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/juphoon/service/rcs/IRcsService$Stub;->setCanCallSensitiveDeviceApi(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v9

    .end local v3    # "_arg1":Z
    :cond_1
    move v3, v8

    .line 107
    goto :goto_0

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getCanCallSensitiveDeviceApi(Ljava/lang/String;)Z

    move-result v7

    .line 118
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v9

    .line 124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_a
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v4, v9

    .line 131
    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v2, v4}, Lcom/juphoon/service/rcs/IRcsService$Stub;->setNeedNotifySensitiveDeviceApi(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v9

    .end local v4    # "_arg2":Z
    :cond_3
    move v4, v8

    .line 130
    goto :goto_1

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getNeedNotifySensitiveDeviceApi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 143
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v7, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v9

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_c
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getUseRcs()Z

    move-result v7

    .line 151
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return v9

    .line 157
    .end local v7    # "_result":Z
    :sswitch_d
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getTranslateSms()Z

    move-result v7

    .line 159
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v7, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return v9

    .line 165
    .end local v7    # "_result":Z
    :sswitch_e
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v1, v9

    .line 168
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/juphoon/service/rcs/IRcsService$Stub;->setUseRcs(Z)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v9

    .end local v1    # "_arg0":Z
    :cond_7
    move v1, v8

    .line 167
    goto :goto_2

    .line 174
    :sswitch_f
    const-string/jumbo v10, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v1, v9

    .line 177
    .restart local v1    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/juphoon/service/rcs/IRcsService$Stub;->setTranslateSms(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v9

    .end local v1    # "_arg0":Z
    :cond_8
    move v1, v8

    .line 176
    goto :goto_3

    .line 183
    :sswitch_10
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getStringForSensitive()Ljava/lang/String;

    move-result-object v6

    .line 185
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v9

    .line 191
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->Mtc_CliDbGetPcImpu()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return v9

    .line 199
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v8, "com.juphoon.service.rcs.IRcsService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/rcs/IRcsService$Stub;->getGbaBtidKsNaf(Ljava/lang/String;)I

    move-result v5

    .line 203
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return v9

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
