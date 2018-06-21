.class public abstract Landroid/os/securespaces/ISecureSpacesService$Stub;
.super Landroid/os/Binder;
.source "ISecureSpacesService.java"

# interfaces
.implements Landroid/os/securespaces/ISecureSpacesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/securespaces/ISecureSpacesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/securespaces/ISecureSpacesService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.securespaces.ISecureSpacesService"

.field static final TRANSACTION_getDeviceOwnerUserRestrictions:I = 0x9

.field static final TRANSACTION_getExtensionMajorVersion:I = 0x5

.field static final TRANSACTION_getExtensionMinorVersion:I = 0x6

.field static final TRANSACTION_getExtensionServiceName:I = 0x7

.field static final TRANSACTION_getExtensions:I = 0x3

.field static final TRANSACTION_getMajorVersionNumber:I = 0x1

.field static final TRANSACTION_getMinorVersionNumber:I = 0x2

.field static final TRANSACTION_getSubsForSpace:I = 0xc

.field static final TRANSACTION_getUserIdForSub:I = 0xb

.field static final TRANSACTION_getUserRestrictions:I = 0x8

.field static final TRANSACTION_hasExtension:I = 0x4

.field static final TRANSACTION_setSubForUserId:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p0, p0, v0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/securespaces/ISecureSpacesService;
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
    const-string/jumbo v1, "android.os.securespaces.ISecureSpacesService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/securespaces/ISecureSpacesService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/securespaces/ISecureSpacesService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/securespaces/ISecureSpacesService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/securespaces/ISecureSpacesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 43
    :sswitch_0
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getMajorVersionNumber()I

    move-result v3

    .line 50
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v9

    .line 56
    .end local v3    # "_result":I
    :sswitch_2
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getMinorVersionNumber()I

    move-result v3

    .line 58
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v9

    .line 64
    .end local v3    # "_result":I
    :sswitch_3
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getExtensions()Ljava/util/List;

    move-result-object v5

    .line 66
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 68
    return v9

    .line 72
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/securespaces/ISecureSpacesService$Stub;->hasExtension(Ljava/lang/String;)Z

    move-result v6

    .line 76
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v6, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v9

    .line 77
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_5
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getExtensionMajorVersion(Ljava/lang/String;)I

    move-result v3

    .line 86
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v9

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getExtensionMinorVersion(Ljava/lang/String;)I

    move-result v3

    .line 96
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v9

    .line 102
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_7
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getExtensionServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v9

    .line 112
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getUserRestrictions()Ljava/util/List;

    move-result-object v5

    .line 114
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 116
    return v9

    .line 120
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getDeviceOwnerUserRestrictions()Ljava/util/List;

    move-result-object v5

    .line 122
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 124
    return v9

    .line 128
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/securespaces/ISecureSpacesService$Stub;->setSubForUserId(II)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v9

    .line 139
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getUserIdForSub(I)I

    move-result v3

    .line 143
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v9

    .line 149
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_c
    const-string/jumbo v8, "android.os.securespaces.ISecureSpacesService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/securespaces/ISecureSpacesService$Stub;->getSubsForSpace(I)[I

    move-result-object v7

    .line 153
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 155
    return v9

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
