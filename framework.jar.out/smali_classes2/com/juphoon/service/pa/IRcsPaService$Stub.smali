.class public abstract Lcom/juphoon/service/pa/IRcsPaService$Stub;
.super Landroid/os/Binder;
.source "IRcsPaService.java"

# interfaces
.implements Lcom/juphoon/service/pa/IRcsPaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/pa/IRcsPaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.pa.IRcsPaService"

.field static final TRANSACTION_Mtc_PaArtMsgGetAuthor:I = 0x3f

.field static final TRANSACTION_Mtc_PaArtMsgGetMainText:I = 0x43

.field static final TRANSACTION_Mtc_PaArtMsgGetMediaUuid:I = 0x44

.field static final TRANSACTION_Mtc_PaArtMsgGetOrigLink:I = 0x41

.field static final TRANSACTION_Mtc_PaArtMsgGetSrcLink:I = 0x42

.field static final TRANSACTION_Mtc_PaArtMsgGetThumbLink:I = 0x40

.field static final TRANSACTION_Mtc_PaArtMsgGetTitle:I = 0x3e

.field static final TRANSACTION_Mtc_PaBscGetLogoUrl:I = 0x19

.field static final TRANSACTION_Mtc_PaBscGetName:I = 0x17

.field static final TRANSACTION_Mtc_PaBscGetPaUuid:I = 0x16

.field static final TRANSACTION_Mtc_PaBscGetRecmdLv:I = 0x18

.field static final TRANSACTION_Mtc_PaBscMsgGetCreateTime:I = 0x4c

.field static final TRANSACTION_Mtc_PaBscMsgGetFileDuration:I = 0x48

.field static final TRANSACTION_Mtc_PaBscMsgGetFileSize:I = 0x46

.field static final TRANSACTION_Mtc_PaBscMsgGetFileType:I = 0x47

.field static final TRANSACTION_Mtc_PaBscMsgGetMediaUuid:I = 0x4b

.field static final TRANSACTION_Mtc_PaBscMsgGetOrigLink:I = 0x4a

.field static final TRANSACTION_Mtc_PaBscMsgGetThumbLink:I = 0x49

.field static final TRANSACTION_Mtc_PaBscMsgGetTitle:I = 0x45

.field static final TRANSACTION_Mtc_PaDetailGetAcptStat:I = 0x24

.field static final TRANSACTION_Mtc_PaDetailGetActiveStat:I = 0x25

.field static final TRANSACTION_Mtc_PaDetailGetAddr:I = 0x29

.field static final TRANSACTION_Mtc_PaDetailGetCompany:I = 0x1c

.field static final TRANSACTION_Mtc_PaDetailGetEmail:I = 0x27

.field static final TRANSACTION_Mtc_PaDetailGetField:I = 0x2a

.field static final TRANSACTION_Mtc_PaDetailGetIntro:I = 0x1d

.field static final TRANSACTION_Mtc_PaDetailGetLogoUrl:I = 0x2b

.field static final TRANSACTION_Mtc_PaDetailGetMenuTimestamp:I = 0x1f

.field static final TRANSACTION_Mtc_PaDetailGetMenuType:I = 0x22

.field static final TRANSACTION_Mtc_PaDetailGetName:I = 0x1b

.field static final TRANSACTION_Mtc_PaDetailGetPaUuid:I = 0x1a

.field static final TRANSACTION_Mtc_PaDetailGetQrCode:I = 0x2c

.field static final TRANSACTION_Mtc_PaDetailGetRecmdLv:I = 0x21

.field static final TRANSACTION_Mtc_PaDetailGetSubsStat:I = 0x23

.field static final TRANSACTION_Mtc_PaDetailGetTel:I = 0x26

.field static final TRANSACTION_Mtc_PaDetailGetType:I = 0x20

.field static final TRANSACTION_Mtc_PaDetailGetUpdTime:I = 0x1e

.field static final TRANSACTION_Mtc_PaDetailGetZip:I = 0x28

.field static final TRANSACTION_Mtc_PaMenuGetCmdId:I = 0x2d

.field static final TRANSACTION_Mtc_PaMenuGetCmdType:I = 0x2e

.field static final TRANSACTION_Mtc_PaMenuGetPriority:I = 0x30

.field static final TRANSACTION_Mtc_PaMenuGetSubmenuId:I = 0x32

.field static final TRANSACTION_Mtc_PaMenuGetSubmenuSize:I = 0x31

.field static final TRANSACTION_Mtc_PaMenuGetTitle:I = 0x2f

.field static final TRANSACTION_Mtc_PaMsgGetActiveStat:I = 0x39

.field static final TRANSACTION_Mtc_PaMsgGetArtMsgId:I = 0x3d

.field static final TRANSACTION_Mtc_PaMsgGetArtMsgSize:I = 0x3c

.field static final TRANSACTION_Mtc_PaMsgGetCreateTime:I = 0x38

.field static final TRANSACTION_Mtc_PaMsgGetFwdable:I = 0x3a

.field static final TRANSACTION_Mtc_PaMsgGetGInfoId:I = 0x3b

.field static final TRANSACTION_Mtc_PaMsgGetMediaType:I = 0x33

.field static final TRANSACTION_Mtc_PaMsgGetMsgUuid:I = 0x34

.field static final TRANSACTION_Mtc_PaMsgGetPaUuid:I = 0x35

.field static final TRANSACTION_Mtc_PaMsgGetSmsDigest:I = 0x36

.field static final TRANSACTION_Mtc_PaMsgGetText:I = 0x37

.field static final TRANSACTION_Mtc_PaSessAddSubs:I = 0x1

.field static final TRANSACTION_Mtc_PaSessCancelSubs:I = 0x2

.field static final TRANSACTION_Mtc_PaSessComplainPub:I = 0xa

.field static final TRANSACTION_Mtc_PaSessDecodeMsg:I = 0xd

.field static final TRANSACTION_Mtc_PaSessEncodeMsg:I = 0xc

.field static final TRANSACTION_Mtc_PaSessGetMenuId:I = 0x12

.field static final TRANSACTION_Mtc_PaSessGetMenuSize:I = 0x11

.field static final TRANSACTION_Mtc_PaSessGetMsgId:I = 0x14

.field static final TRANSACTION_Mtc_PaSessGetMsgSize:I = 0x13

.field static final TRANSACTION_Mtc_PaSessGetPaId:I = 0x10

.field static final TRANSACTION_Mtc_PaSessGetPaSize:I = 0xf

.field static final TRANSACTION_Mtc_PaSessGetPrevMsg:I = 0x9

.field static final TRANSACTION_Mtc_PaSessGetPubDetail:I = 0x7

.field static final TRANSACTION_Mtc_PaSessGetPubLst:I = 0x5

.field static final TRANSACTION_Mtc_PaSessGetPubLstRecmd:I = 0x6

.field static final TRANSACTION_Mtc_PaSessGetPubMenu:I = 0x8

.field static final TRANSACTION_Mtc_PaSessGetResult:I = 0x15

.field static final TRANSACTION_Mtc_PaSessQryAllUsrSubs:I = 0x4

.field static final TRANSACTION_Mtc_PaSessQryUsrSubs:I = 0x3

.field static final TRANSACTION_Mtc_PaSessRelease:I = 0xe

.field static final TRANSACTION_Mtc_PaSessSetAcptStat:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.juphoon.service.pa.IRcsPaService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/pa/IRcsPaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.juphoon.service.pa.IRcsPaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/pa/IRcsPaService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/juphoon/service/pa/IRcsPaService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/juphoon/service/pa/IRcsPaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 852
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 46
    :sswitch_0
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    return v2

    .line 51
    :sswitch_1
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessAddSubs(Ljava/lang/String;)I

    move-result v16

    .line 55
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v2, 0x1

    return v2

    .line 61
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_2
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessCancelSubs(Ljava/lang/String;)I

    move-result v16

    .line 65
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v2, 0x1

    return v2

    .line 71
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_3
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 75
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v5}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessQryUsrSubs(III)I

    move-result v16

    .line 79
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v2, 0x1

    return v2

    .line 85
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessQryAllUsrSubs()V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 92
    :sswitch_5
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 98
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 101
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubLst(Ljava/lang/String;III)I

    move-result v16

    .line 102
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v16    # "_result":I
    :sswitch_6
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 112
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v5}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubLstRecmd(III)I

    move-result v16

    .line 116
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_7
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubDetail(Ljava/lang/String;I)I

    move-result v16

    .line 128
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_8
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPubMenu(Ljava/lang/String;I)I

    move-result v16

    .line 140
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    return v2

    .line 146
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_9
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 156
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 157
    invoke-virtual/range {v2 .. v7}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPrevMsg(Ljava/lang/String;IIII)I

    move-result v16

    .line 158
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v2, 0x1

    return v2

    .line 164
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v16    # "_result":I
    :sswitch_a
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg4":Ljava/lang/String;
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    .line 175
    invoke-virtual/range {v8 .. v13}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessComplainPub(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 176
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x1

    return v2

    .line 182
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg3":Ljava/lang/String;
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_b
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x1

    .line 187
    .local v15, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessSetAcptStat(Ljava/lang/String;Z)I

    move-result v16

    .line 188
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v2, 0x1

    return v2

    .line 186
    .end local v15    # "_arg1":Z
    .end local v16    # "_result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessEncodeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    return v2

    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessDecodeMsg(Ljava/lang/String;)I

    move-result v16

    .line 208
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v2, 0x1

    return v2

    .line 214
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":I
    :sswitch_e
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 217
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessRelease(I)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v2, 0x1

    return v2

    .line 223
    .end local v14    # "_arg0":I
    :sswitch_f
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 226
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPaSize(I)I

    move-result v16

    .line 227
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x1

    return v2

    .line 233
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_10
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 237
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetPaId(II)I

    move-result v16

    .line 239
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v2, 0x1

    return v2

    .line 245
    .end local v4    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_11
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 248
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMenuSize(I)I

    move-result v16

    .line 249
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v2, 0x1

    return v2

    .line 255
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_12
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 259
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMenuId(II)I

    move-result v16

    .line 261
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v2, 0x1

    return v2

    .line 267
    .end local v4    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_13
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 270
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMsgSize(I)I

    move-result v16

    .line 271
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v2, 0x1

    return v2

    .line 277
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_14
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 281
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetMsgId(II)I

    move-result v16

    .line 283
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v2, 0x1

    return v2

    .line 289
    .end local v4    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_15
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 292
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaSessGetResult(I)Ljava/lang/String;

    move-result-object v17

    .line 293
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x1

    return v2

    .line 299
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 302
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetPaUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 303
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x1

    return v2

    .line 309
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 312
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetName(I)Ljava/lang/String;

    move-result-object v17

    .line 313
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    const/4 v2, 0x1

    return v2

    .line 319
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 322
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetRecmdLv(I)I

    move-result v16

    .line 323
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v2, 0x1

    return v2

    .line 329
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_19
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 332
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscGetLogoUrl(I)Ljava/lang/String;

    move-result-object v17

    .line 333
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x1

    return v2

    .line 339
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 342
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetPaUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 343
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x1

    return v2

    .line 349
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 352
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetName(I)Ljava/lang/String;

    move-result-object v17

    .line 353
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    const/4 v2, 0x1

    return v2

    .line 359
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 362
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetCompany(I)Ljava/lang/String;

    move-result-object v17

    .line 363
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    const/4 v2, 0x1

    return v2

    .line 369
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 372
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetIntro(I)Ljava/lang/String;

    move-result-object v17

    .line 373
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x1

    return v2

    .line 379
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 382
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetUpdTime(I)I

    move-result v16

    .line 383
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v2, 0x1

    return v2

    .line 389
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_1f
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 392
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetMenuTimestamp(I)I

    move-result v16

    .line 393
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v2, 0x1

    return v2

    .line 399
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_20
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 402
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetType(I)Ljava/lang/String;

    move-result-object v17

    .line 403
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x1

    return v2

    .line 409
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 412
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetRecmdLv(I)I

    move-result v16

    .line 413
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v2, 0x1

    return v2

    .line 419
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_22
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 422
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetMenuType(I)I

    move-result v16

    .line 423
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v2, 0x1

    return v2

    .line 429
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_23
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 432
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetSubsStat(I)I

    move-result v16

    .line 433
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v2, 0x1

    return v2

    .line 439
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_24
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 442
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetAcptStat(I)I

    move-result v16

    .line 443
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v2, 0x1

    return v2

    .line 449
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_25
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 452
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetActiveStat(I)I

    move-result v16

    .line 453
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v2, 0x1

    return v2

    .line 459
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_26
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 462
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetTel(I)Ljava/lang/String;

    move-result-object v17

    .line 463
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x1

    return v2

    .line 469
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 472
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetEmail(I)Ljava/lang/String;

    move-result-object v17

    .line 473
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    const/4 v2, 0x1

    return v2

    .line 479
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 482
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetZip(I)Ljava/lang/String;

    move-result-object v17

    .line 483
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    const/4 v2, 0x1

    return v2

    .line 489
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 492
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetAddr(I)Ljava/lang/String;

    move-result-object v17

    .line 493
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    const/4 v2, 0x1

    return v2

    .line 499
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 502
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetField(I)Ljava/lang/String;

    move-result-object v17

    .line 503
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    const/4 v2, 0x1

    return v2

    .line 509
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 512
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetLogoUrl(I)Ljava/lang/String;

    move-result-object v17

    .line 513
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x1

    return v2

    .line 519
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 522
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaDetailGetQrCode(I)Ljava/lang/String;

    move-result-object v17

    .line 523
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x1

    return v2

    .line 529
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 532
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetCmdId(I)Ljava/lang/String;

    move-result-object v17

    .line 533
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x1

    return v2

    .line 539
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 542
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetCmdType(I)I

    move-result v16

    .line 543
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v2, 0x1

    return v2

    .line 549
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_2f
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 552
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetTitle(I)Ljava/lang/String;

    move-result-object v17

    .line 553
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    const/4 v2, 0x1

    return v2

    .line 559
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 562
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetPriority(I)I

    move-result v16

    .line 563
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v2, 0x1

    return v2

    .line 569
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_31
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 572
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetSubmenuSize(I)I

    move-result v16

    .line 573
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v2, 0x1

    return v2

    .line 579
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_32
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 583
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 584
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMenuGetSubmenuId(II)I

    move-result v16

    .line 585
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v2, 0x1

    return v2

    .line 591
    .end local v4    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_33
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 594
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetMediaType(I)I

    move-result v16

    .line 595
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v2, 0x1

    return v2

    .line 601
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_34
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 604
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetMsgUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 605
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    const/4 v2, 0x1

    return v2

    .line 611
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 614
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetPaUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 615
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    const/4 v2, 0x1

    return v2

    .line 621
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 624
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetSmsDigest(I)Ljava/lang/String;

    move-result-object v17

    .line 625
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    const/4 v2, 0x1

    return v2

    .line 631
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 634
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetText(I)Ljava/lang/String;

    move-result-object v17

    .line 635
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    const/4 v2, 0x1

    return v2

    .line 641
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 644
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetCreateTime(I)I

    move-result v16

    .line 645
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v2, 0x1

    return v2

    .line 651
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_39
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 654
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetActiveStat(I)I

    move-result v16

    .line 655
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v2, 0x1

    return v2

    .line 661
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_3a
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 664
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetFwdable(I)I

    move-result v16

    .line 665
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/4 v2, 0x1

    return v2

    .line 671
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_3b
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 674
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetGInfoId(I)I

    move-result v16

    .line 675
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    const/4 v2, 0x1

    return v2

    .line 681
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_3c
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 684
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetArtMsgSize(I)I

    move-result v16

    .line 685
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v2, 0x1

    return v2

    .line 691
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_3d
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 695
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 696
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaMsgGetArtMsgId(II)I

    move-result v16

    .line 697
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v2, 0x1

    return v2

    .line 703
    .end local v4    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_3e
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 706
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetTitle(I)Ljava/lang/String;

    move-result-object v17

    .line 707
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    const/4 v2, 0x1

    return v2

    .line 713
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 716
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetAuthor(I)Ljava/lang/String;

    move-result-object v17

    .line 717
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    const/4 v2, 0x1

    return v2

    .line 723
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 726
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetThumbLink(I)Ljava/lang/String;

    move-result-object v17

    .line 727
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x1

    return v2

    .line 733
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 736
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetOrigLink(I)Ljava/lang/String;

    move-result-object v17

    .line 737
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    const/4 v2, 0x1

    return v2

    .line 743
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 746
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetSrcLink(I)Ljava/lang/String;

    move-result-object v17

    .line 747
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    const/4 v2, 0x1

    return v2

    .line 753
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 756
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetMainText(I)Ljava/lang/String;

    move-result-object v17

    .line 757
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    const/4 v2, 0x1

    return v2

    .line 763
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 766
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaArtMsgGetMediaUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 767
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    const/4 v2, 0x1

    return v2

    .line 773
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 776
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetTitle(I)Ljava/lang/String;

    move-result-object v17

    .line 777
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 779
    const/4 v2, 0x1

    return v2

    .line 783
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 786
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileSize(I)I

    move-result v16

    .line 787
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v2, 0x1

    return v2

    .line 793
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_47
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 796
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileType(I)Ljava/lang/String;

    move-result-object v17

    .line 797
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    const/4 v2, 0x1

    return v2

    .line 803
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 806
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetFileDuration(I)I

    move-result v16

    .line 807
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    const/4 v2, 0x1

    return v2

    .line 813
    .end local v14    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_49
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 816
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetThumbLink(I)Ljava/lang/String;

    move-result-object v17

    .line 817
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    const/4 v2, 0x1

    return v2

    .line 823
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 826
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetOrigLink(I)Ljava/lang/String;

    move-result-object v17

    .line 827
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    const/4 v2, 0x1

    return v2

    .line 833
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 836
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetMediaUuid(I)Ljava/lang/String;

    move-result-object v17

    .line 837
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    const/4 v2, 0x1

    return v2

    .line 843
    .end local v14    # "_arg0":I
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v2, "com.juphoon.service.pa.IRcsPaService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 846
    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/juphoon/service/pa/IRcsPaService$Stub;->Mtc_PaBscMsgGetCreateTime(I)I

    move-result v16

    .line 847
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v2, 0x1

    return v2

    .line 42
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
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
