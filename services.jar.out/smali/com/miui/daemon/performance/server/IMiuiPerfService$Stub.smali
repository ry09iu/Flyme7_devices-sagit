.class public abstract Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;
.super Landroid/os/Binder;
.source "IMiuiPerfService.java"

# interfaces
.implements Lcom/miui/daemon/performance/server/IMiuiPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/daemon/performance/server/IMiuiPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.daemon.performance.server.IMiuiPerfService"

.field static final TRANSACTION_dump:I = 0x3

.field static final TRANSACTION_markPerceptibleJank:I = 0x1

.field static final TRANSACTION_reportActivityLaunchRecords:I = 0x2

.field static final TRANSACTION_setSchedFgPid:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;
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
    const-string/jumbo v1, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 49
    :sswitch_0
    const-string/jumbo v4, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v5

    .line 53
    :sswitch_1
    const-string/jumbo v4, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    move-object v1, v4

    .line 56
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->markPerceptibleJank(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v5

    .line 55
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :sswitch_2
    const-string/jumbo v4, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 63
    .local v2, "launchRecords":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v2}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportActivityLaunchRecords(Ljava/util/List;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v5

    .line 68
    .end local v2    # "launchRecords":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_3
    const-string/jumbo v4, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->dump([Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v5

    .line 75
    .end local v0    # "args":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "pid":I
    invoke-virtual {p0, v3}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->setSchedFgPid(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v5

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
