.class public abstract Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;
.super Landroid/os/Binder;
.source "IActiveAppStatusChange.java"

# interfaces
.implements Lcom/miui/whetstone/active/IActiveAppStatusChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/active/IActiveAppStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.active.IActiveAppStatusChange"

.field static final TRANSACTION_onProcessActiveStatusChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.whetstone.active.IActiveAppStatusChange"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/active/IActiveAppStatusChange;
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
    const-string/jumbo v1, "com.miui.whetstone.active.IActiveAppStatusChange"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/active/IActiveAppStatusChange;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :sswitch_0
    const-string/jumbo v1, "com.miui.whetstone.active.IActiveAppStatusChange"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    .line 50
    :sswitch_1
    const-string/jumbo v1, "com.miui.whetstone.active.IActiveAppStatusChange"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/miui/whetstone/active/ActiveInfo;

    invoke-direct {v0}, Lcom/miui/whetstone/active/ActiveInfo;-><init>()V

    .line 53
    .local v0, "_arg0":Lcom/miui/whetstone/active/ActiveInfo;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/active/IActiveAppStatusChange$Stub;->onProcessActiveStatusChange(Lcom/miui/whetstone/active/ActiveInfo;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v0, p3, v2}, Lcom/miui/whetstone/active/ActiveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    return v2

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
