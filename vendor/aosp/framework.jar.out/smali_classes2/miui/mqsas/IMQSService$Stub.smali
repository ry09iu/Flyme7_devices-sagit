.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSService"

.field static final TRANSACTION_onBootCompleted:I = 0x7

.field static final TRANSACTION_reportAnrEvent:I = 0x2

.field static final TRANSACTION_reportBootEvent:I = 0x9

.field static final TRANSACTION_reportBroadcastEvent:I = 0x8

.field static final TRANSACTION_reportConnectExceptionEvent:I = 0xb

.field static final TRANSACTION_reportJavaExceptionEvent:I = 0x3

.field static final TRANSACTION_reportPackageEvent:I = 0x6

.field static final TRANSACTION_reportScreenOnEvent:I = 0x5

.field static final TRANSACTION_reportSimpleEvent:I = 0x1

.field static final TRANSACTION_reportTelephonyEvent:I = 0xa

.field static final TRANSACTION_reportWatchdogEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
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
    const-string/jumbo v1, "miui.mqsas.IMQSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/mqsas/IMQSService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/mqsas/IMQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 46
    :sswitch_0
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v10, 0x1

    return v10

    .line 51
    :sswitch_1
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v9}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    .line 57
    const/4 v10, 0x1

    return v10

    .line 61
    .end local v0    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    sget-object v10, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/sdk/event/AnrEvent;

    .line 69
    :goto_0
    invoke-virtual {p0, v2}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v10, 0x1

    return v10

    .line 67
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    goto :goto_0

    .line 75
    .end local v2    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :sswitch_3
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    sget-object v10, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 83
    :goto_1
    invoke-virtual {p0, v4}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v10, 0x1

    return v10

    .line 81
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    goto :goto_1

    .line 89
    .end local v4    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :sswitch_4
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    sget-object v10, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 97
    :goto_2
    invoke-virtual {p0, v7}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v10, 0x1

    return v10

    .line 95
    :cond_2
    const/4 v7, 0x0

    .local v7, "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    goto :goto_2

    .line 103
    .end local v7    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :sswitch_5
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    sget-object v10, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    .line 111
    :goto_3
    invoke-virtual {p0, v6}, Lmiui/mqsas/IMQSService$Stub;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 112
    const/4 v10, 0x1

    return v10

    .line 109
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    goto :goto_3

    .line 116
    .end local v6    # "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :sswitch_6
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 119
    sget-object v10, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/mqsas/sdk/event/PackageEvent;

    .line 124
    :goto_4
    invoke-virtual {p0, v5}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 125
    const/4 v10, 0x1

    return v10

    .line 122
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    goto :goto_4

    .line 129
    .end local v5    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :sswitch_7
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v10, 0x1

    return v10

    .line 136
    :sswitch_8
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 139
    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 144
    :goto_5
    invoke-virtual {p0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    .line 145
    const/4 v10, 0x1

    return v10

    .line 142
    :cond_5
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_5

    .line 149
    .end local v1    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_9
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 152
    sget-object v10, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/mqsas/sdk/event/BootEvent;

    .line 157
    :goto_6
    invoke-virtual {p0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 158
    const/4 v10, 0x1

    return v10

    .line 155
    :cond_6
    const/4 v3, 0x0

    .local v3, "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    goto :goto_6

    .line 162
    .end local v3    # "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    :sswitch_a
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 167
    .restart local v9    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v9}, Lmiui/mqsas/IMQSService$Stub;->reportTelephonyEvent(ILjava/lang/String;)V

    .line 168
    const/4 v10, 0x1

    return v10

    .line 172
    .end local v0    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v10, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 177
    .local v8, "_arg1":I
    invoke-virtual {p0, v0, v8}, Lmiui/mqsas/IMQSService$Stub;->reportConnectExceptionEvent(II)V

    .line 178
    const/4 v10, 0x1

    return v10

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
