.class public abstract Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageDeleteConfirmObserver.java"

# interfaces
.implements Lmiui/content/pm/IPackageDeleteConfirmObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/IPackageDeleteConfirmObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.content.pm.IPackageDeleteConfirmObserver"

.field static final TRANSACTION_onConfirm:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.content.pm.IPackageDeleteConfirmObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPackageDeleteConfirmObserver;
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
    const-string/jumbo v1, "miui.content.pm.IPackageDeleteConfirmObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/content/pm/IPackageDeleteConfirmObserver;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/content/pm/IPackageDeleteConfirmObserver;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 46
    :sswitch_0
    const-string/jumbo v2, "miui.content.pm.IPackageDeleteConfirmObserver"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    .line 51
    :sswitch_1
    const-string/jumbo v2, "miui.content.pm.IPackageDeleteConfirmObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 54
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->onConfirm(Z)V

    .line 55
    return v1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
