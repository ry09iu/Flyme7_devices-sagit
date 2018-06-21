.class public Lcom/android/server/accounts/AccountManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccountManagerServiceInjector.java"


# static fields
.field public static final ACCOUNT_CHANGED_ACTION_ADDED:Ljava/lang/String; = "added"

.field public static final ACCOUNT_CHANGED_ACTION_ALTERED:Ljava/lang/String; = "altered"

.field public static final ACCOUNT_CHANGED_ACTION_REMOVED:Ljava/lang/String; = "removed"

.field public static final KEY_ACCOUNT_CHANGED_ACTION:Ljava/lang/String; = "account_changed_action"

.field public static final LOGIN_ACCOUNTS_CHANGED_SYS_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

.field private static final TAG:Ljava/lang/String; = "AccountManagerServiceInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isForceRemove(Z)Z
    .locals 8
    .param p0, "removalAllowed"    # Z

    .prologue
    const/4 v4, 0x0

    .line 38
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 39
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    if-lez v5, :cond_2

    .line 41
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 42
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string/jumbo v5, "AccountManagerServiceInjector"

    const-string/jumbo v6, "force remove account"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-boolean v5, Lmiui/os/Build;->IS_CTS_BUILD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AccountManagerServiceInjector"

    const-string/jumbo v6, "isForceRemove"

    invoke-static {v5, v6, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v4
.end method

.method static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 28
    .local v0, "identityToken":J
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmiui/content/pm/ExtraPackageManager;->isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    return v2

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw v2
.end method

.method static sendAccountsChangedSysBroadcast(Landroid/content/Context;ILjava/lang/String;[Landroid/accounts/Account;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED_SYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "account_changed_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "accounts"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 67
    return-void
.end method
