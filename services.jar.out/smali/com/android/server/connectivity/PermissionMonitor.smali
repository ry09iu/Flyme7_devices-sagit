.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# static fields
.field private static final DBG:Z = false

.field private static final NETWORK:Ljava/lang/Boolean;

.field private static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mUserApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;II)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "user"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/PermissionMonitor;IZI)V
    .locals 0
    .param p1, "appUid"    # I
    .param p2, "removedAllUsers"    # Z
    .param p3, "user"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(IZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 73
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 74
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    .line 75
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method private getAppsNetworkPermissionForUser(I)Ljava/util/Map;
    .locals 11
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 182
    const/16 v10, 0x1000

    .line 181
    invoke-interface {v9, v10, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_3

    .line 184
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 185
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_4

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 186
    .local v8, "uid":I
    :goto_1
    if-ltz v8, :cond_0

    .line 190
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 191
    .local v2, "isNetwork":Z
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 193
    .local v3, "isSystem":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    .line 194
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 197
    .local v5, "permission":Ljava/lang/Boolean;
    if-eqz v5, :cond_2

    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v5, v9, :cond_0

    .line 198
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v2    # "isNetwork":Z
    .end local v3    # "isSystem":Z
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "permission":Ljava/lang/Boolean;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v8    # "uid":I
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package manager has died"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return-object v0

    .line 185
    .restart local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v8, -0x1

    goto :goto_1
.end method

.method private hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 137
    const-string/jumbo v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 127
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 128
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 142
    .local v0, "flags":I
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2

    .line 143
    :cond_1
    return v1

    .line 145
    :cond_2
    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    const-string/jumbo v1, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    .line 145
    :cond_3
    return v1
.end method

.method private highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 6
    .param p1, "currentPermission"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # I

    .prologue
    .line 229
    sget-object v4, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v4, :cond_0

    .line 230
    return-object p1

    .line 233
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v5, 0x1000

    invoke-interface {v4, p2, v5, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 234
    .local v0, "app":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3

    .line 235
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 236
    .local v2, "isNetwork":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 237
    .local v3, "isSystem":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 238
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 247
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "isNetwork":Z
    .end local v3    # "isSystem":Z
    :cond_2
    :goto_0
    return-object p1

    .line 241
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NameNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package manager has died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 318
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string/jumbo v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private declared-synchronized onAppAdded(Ljava/lang/String;II)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "user"    # I

    .prologue
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-gez p2, :cond_1

    .line 252
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid app in onAppAdded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 253
    return-void

    .line 251
    :cond_1
    if-ltz p3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 258
    .local v2, "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    .line 259
    .local v1, "permission":Ljava/lang/Boolean;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 260
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_2
    monitor-exit p0

    .line 250
    return-void

    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local v2    # "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized onAppRemoved(IZI)V
    .locals 4
    .param p1, "appUid"    # I
    .param p2, "removedAllUsers"    # Z
    .param p3, "user"    # I

    .prologue
    monitor-enter p0

    .line 304
    if-ltz p1, :cond_0

    if-gez p3, :cond_1

    .line 305
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid app in onAppRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 306
    return-void

    .line 304
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    :cond_2
    if-eqz p2, :cond_3

    .line 310
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 311
    .local v0, "userId":I
    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->removeNetworkPermissionForUid(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "userId":I
    .end local v1    # "userId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 314
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeNetworkPermissionForUid(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    .line 303
    return-void
.end method

.method private declared-synchronized onUserAdded(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    monitor-enter p0

    .line 211
    if-gez p1, :cond_0

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 213
    return-void

    .line 215
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getAppsNetworkPermissionForUser(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 210
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onUserRemoved(I)V
    .locals 2
    .param p1, "user"    # I

    .prologue
    monitor-enter p0

    .line 220
    if-gez p1, :cond_0

    .line 221
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 222
    return-void

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 219
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeNetworkPermissionForUid(II)V
    .locals 10
    .param p1, "appUid"    # I
    .param p2, "user"    # I

    .prologue
    const/4 v7, 0x0

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 272
    .local v4, "permission":Ljava/lang/Boolean;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 274
    array-length v8, v3

    move v6, v7

    .end local v4    # "permission":Ljava/lang/Boolean;
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 275
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v4, v2, p2}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v4

    .line 276
    .local v4, "permission":Ljava/lang/Boolean;
    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v9, :cond_0

    .line 280
    return-void

    .line 274
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "permission":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package manager has died"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 288
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 289
    .local v5, "userApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 291
    return-void

    .line 292
    :cond_2
    if-eqz v4, :cond_3

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    .line 268
    :goto_1
    return-void

    .line 297
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-direct {p0, v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    goto :goto_1
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 151
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Map;Z)V
    .locals 9
    .param p2, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    .local v0, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 162
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    move-object v3, v4

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 165
    .end local v0    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 166
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v7, "NETWORK"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 167
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v7, "SYSTEM"

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 157
    :goto_2
    return-void

    .line 169
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    .line 170
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->clearPermission([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when updating permissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized startMonitoring()V
    .locals 9

    .prologue
    monitor-enter p0

    .line 102
    :try_start_0
    const-string/jumbo v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 104
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    .line 116
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v8, :cond_0

    .line 117
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 118
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->getAppsNetworkPermissionForUser(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Map;Z)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserApps:Ljava/util/Map;

    iget v2, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    monitor-exit p0

    .line 101
    return-void
.end method
