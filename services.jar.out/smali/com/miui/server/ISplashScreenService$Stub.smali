.class public abstract Lcom/miui/server/ISplashScreenService$Stub;
.super Landroid/os/Binder;
.source "ISplashScreenService.java"

# interfaces
.implements Lcom/miui/server/ISplashScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashScreenService"

.field static final TRANSACTION_activityIdle:I = 0x2

.field static final TRANSACTION_destroyActivity:I = 0x3

.field static final TRANSACTION_requestSplashScreen:I = 0x1

.field static final TRANSACTION_setSplashPackageListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string/jumbo v0, "com.miui.server.ISplashScreenService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p0, :cond_0

    .line 114
    return-object v1

    .line 116
    :cond_0
    const-string/jumbo v1, "com.miui.server.ISplashScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_1

    .line 118
    check-cast v0, Lcom/miui/server/ISplashScreenService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 120
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/server/ISplashScreenService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/server/ISplashScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 125
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

    .line 131
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 133
    :sswitch_0
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v5

    .line 139
    :sswitch_1
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 141
    .local v3, "intent":Landroid/content/Intent;
    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 142
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v3, v2}, Lcom/miui/server/ISplashScreenService$Stub;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v1, p3, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_0
    return v5

    .line 148
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 153
    .end local v1    # "_result":Landroid/content/Intent;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 155
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v5

    .line 160
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :sswitch_3
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 162
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    return v5

    .line 169
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    :sswitch_4
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;

    move-result-object v0

    .line 172
    .local v0, "_arg0":Lcom/miui/server/ISplashPackageCheckListener;
    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V

    .line 173
    return v5

    .line 131
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
