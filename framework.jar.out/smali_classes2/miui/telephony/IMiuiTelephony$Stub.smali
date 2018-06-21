.class public abstract Lmiui/telephony/IMiuiTelephony$Stub;
.super Landroid/os/Binder;
.source "IMiuiTelephony.java"

# interfaces
.implements Lmiui/telephony/IMiuiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/IMiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/IMiuiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.telephony.IMiuiTelephony"

.field static final TRANSACTION_getCellLocationForSlot:I = 0x14

.field static final TRANSACTION_getDeviceId:I = 0xd

.field static final TRANSACTION_getDeviceIdList:I = 0xa

.field static final TRANSACTION_getImei:I = 0xe

.field static final TRANSACTION_getImeiList:I = 0xb

.field static final TRANSACTION_getMeid:I = 0xf

.field static final TRANSACTION_getMeidList:I = 0xc

.field static final TRANSACTION_getSmallDeviceId:I = 0x10

.field static final TRANSACTION_getSpn:I = 0x12

.field static final TRANSACTION_getSystemDefaultSlotId:I = 0x7

.field static final TRANSACTION_isIccCardActivate:I = 0x8

.field static final TRANSACTION_isImsRegistered:I = 0x3

.field static final TRANSACTION_isSameOperator:I = 0x11

.field static final TRANSACTION_isVolteEnabledByPlatform:I = 0x6

.field static final TRANSACTION_isVolteEnabledByUser:I = 0x4

.field static final TRANSACTION_isVtEnabledByPlatform:I = 0x5

.field static final TRANSACTION_onOperatorNumericOrNameSet:I = 0x13

.field static final TRANSACTION_setCallForwardingOption:I = 0x15

.field static final TRANSACTION_setDefaultDataSlotId:I = 0x2

.field static final TRANSACTION_setDefaultVoiceSlotId:I = 0x1

.field static final TRANSACTION_setIccCardActivate:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p0, p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/telephony/IMiuiTelephony;
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
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/telephony/IMiuiTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmiui/telephony/IMiuiTelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v16

    .line 64
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v16, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isImsRegistered(I)Z

    move-result v16

    .line 74
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v16, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 80
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUser()Z

    move-result v16

    .line 82
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v16, :cond_2

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 83
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 88
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVtEnabledByPlatform()Z

    move-result v16

    .line 90
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v16, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 96
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByPlatform()Z

    move-result v16

    .line 98
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v16, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 104
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getSystemDefaultSlotId()I

    move-result v12

    .line 106
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v12    # "_result":I
    :sswitch_8
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isIccCardActivate(I)Z

    move-result v16

    .line 116
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v16, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 122
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x1

    .line 127
    .local v9, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lmiui/telephony/IMiuiTelephony$Stub;->setIccCardActivate(IZ)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v9    # "_arg1":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 133
    .end local v2    # "_arg0":I
    :sswitch_a
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 137
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    const/4 v1, 0x1

    return v1

    .line 143
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 147
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    const/4 v1, 0x1

    return v1

    .line 153
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 156
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 157
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 159
    const/4 v1, 0x1

    return v1

    .line 163
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    return v1

    .line 173
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 179
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x1

    return v1

    .line 185
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 190
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 191
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x1

    return v1

    .line 197
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 200
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 201
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x1

    return v1

    .line 207
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 212
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 213
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v16, :cond_7

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v1, 0x1

    return v1

    .line 214
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 219
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_12
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 223
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v11, 0x1

    .line 228
    .local v11, "_arg3":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v10, v11}, Lmiui/telephony/IMiuiTelephony$Stub;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 229
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    return v1

    .line 227
    .end local v11    # "_arg3":Z
    .end local v14    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    .line 235
    .end local v3    # "_arg1":I
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 242
    .restart local v10    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v10}, Lmiui/telephony/IMiuiTelephony$Stub;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 243
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x1

    return v1

    .line 249
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 254
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 255
    .local v13, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v13, :cond_9

    .line 257
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_9
    const/4 v1, 0x1

    return v1

    .line 261
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 267
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    :goto_a
    move-object/from16 v1, p0

    .line 283
    invoke-virtual/range {v1 .. v6}, Lmiui/telephony/IMiuiTelephony$Stub;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v1, 0x1

    return v1

    .line 281
    :cond_a
    const/4 v6, 0x0

    .local v6, "_arg4":Landroid/os/ResultReceiver;
    goto :goto_a

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
