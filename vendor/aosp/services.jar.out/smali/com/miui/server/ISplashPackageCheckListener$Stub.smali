.class public abstract Lcom/miui/server/ISplashPackageCheckListener$Stub;
.super Landroid/os/Binder;
.source "ISplashPackageCheckListener.java"

# interfaces
.implements Lcom/miui/server/ISplashPackageCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashPackageCheckListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashPackageCheckListener"

.field static final TRANSACTION_updateSplashPackageCheckInfo:I = 0x2

.field static final TRANSACTION_updateSplashPackageCheckInfoList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;
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
    const-string/jumbo v1, "com.miui.server.ISplashPackageCheckListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/server/ISplashPackageCheckListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/server/ISplashPackageCheckListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v3

    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    invoke-virtual {p0, v1}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfoList(Ljava/util/List;)V

    .line 51
    return v3

    .line 55
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    :sswitch_2
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    .line 64
    return v3

    .line 61
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/miui/server/SplashPackageCheckInfo;
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
