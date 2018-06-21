.class public Landroid/os/securespaces/SecureSpacesUtils;
.super Ljava/lang/Object;
.source "SecureSpacesUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Landroid/os/securespaces/SecureSpacesUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/securespaces/SecureSpacesUtils;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserIdForSub(I)I
    .locals 4
    .param p0, "subscriptionId"    # I

    .prologue
    .line 33
    const-string/jumbo v2, "securespaces"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/os/securespaces/ISecureSpacesService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/securespaces/ISecureSpacesService;

    move-result-object v1

    .line 35
    .local v1, "secureSpacesService":Landroid/os/securespaces/ISecureSpacesService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/os/securespaces/ISecureSpacesService;->getUserIdForSub(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/securespaces/SecureSpacesUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error communicating with Secure Spaces Service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 v2, -0x1

    return v2
.end method
