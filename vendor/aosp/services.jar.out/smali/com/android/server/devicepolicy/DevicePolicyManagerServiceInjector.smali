.class public Lcom/android/server/devicepolicy/DevicePolicyManagerServiceInjector;
.super Ljava/lang/Object;
.source "DevicePolicyManagerServiceInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static mSecureSpacesDeviceOwnerRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceInjector;->mSecureSpacesDeviceOwnerRestrictions:Ljava/util/List;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowUserToupdateMaximumTimeToLock(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "currentUserId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    if-ne p0, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 34
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static canChangeExtra(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceInjector;->mSecureSpacesDeviceOwnerRestrictions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static initSecureSpacesDeviceOwnerRestrictions()V
    .locals 4

    .prologue
    .line 20
    const-string/jumbo v2, "securespaces"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/os/securespaces/ISecureSpacesService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/securespaces/ISecureSpacesService;

    move-result-object v1

    .line 23
    .local v1, "secureSpacesService":Landroid/os/securespaces/ISecureSpacesService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/securespaces/ISecureSpacesService;->getDeviceOwnerUserRestrictions()Ljava/util/List;

    move-result-object v2

    .line 22
    sput-object v2, Lcom/android/server/devicepolicy/DevicePolicyManagerServiceInjector;->mSecureSpacesDeviceOwnerRestrictions:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DevicePolicyManagerService"

    const-string/jumbo v3, "Error communicating with Secure Spaces Service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
