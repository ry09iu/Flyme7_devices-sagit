.class public Lcom/android/server/content/SyncManagerInjector;
.super Lcom/android/server/content/SyncManagerAccountChangePolicy;
.source "SyncManagerInjector.java"


# static fields
.field public static final SYNC_DELAY_ON_BATTERY_LOW:J = 0x1b7740L

.field public static final SYNC_DELAY_ON_DISALLOW_METERED:J = 0x36ee80L

.field public static final SYNC_DELAY_ON_FORBIDDEN:J = 0x1d4c0L

.field public static final SYNC_DELAY_ON_ROOM_UNAVAILABLE:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_MAX_PARALLEL_SYNC_NUM:I = 0x1

.field public static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "sync_on_wifi_only"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncManagerInjector;->uri:Landroid/net/Uri;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static cancelForbiddenActiveSyncs(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "syncOperationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "syncOperation$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 122
    .local v0, "syncOperation":Lcom/android/server/content/SyncOperation;
    invoke-static {p0, v0, p2}, Lcom/android/server/content/SyncManagerInjector;->isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string/jumbo v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "injector: cancelNonManualActiveSyncs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method

.method public static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v1, 0x3

    .line 38
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v0, :cond_2

    .line 39
    :cond_0
    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string/jumbo v0, "SyncManager"

    const-string/jumbo v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injector: checkSyncOperationAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_3
    const-string/jumbo v0, "com.xiaomi"

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBatteryLowForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 52
    :cond_0
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: null parameter, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    return v3

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    :cond_3
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: init or ignore settings, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_4
    return v3

    .line 67
    :cond_5
    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_7

    .line 68
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: sync for auto, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_6
    return v3

    .line 74
    :cond_7
    const-string/jumbo v1, "battery_low"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, "isBatteryLow":Z
    return v0
.end method

.method public static isDisallowMeteredBySettings(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sync_on_wifi_only"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 79
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 80
    :cond_0
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: null parameter, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    return v3

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: not xiaomi account, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    return v3

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    :cond_5
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: init or ignore settings, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_6
    return v3

    .line 100
    :cond_7
    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_9

    .line 101
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: sync for auto, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_8
    return v3

    .line 106
    :cond_9
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 108
    .local v0, "authority":Ljava/lang/String;
    const-string/jumbo v1, "com.miui.gallery.cloud.provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 109
    const-string/jumbo v1, "com.miui.gallery"

    invoke-static {p0, v1}, Lcom/android/server/content/SyncManagerInjector;->isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 111
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_a
    return v3

    .line 116
    :cond_b
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->rebuildSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 117
    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;

    move-result-object v1

    invoke-interface {v1, p0, v0, p2}, Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;->isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public static isSyncRoomAvailable(Lcom/android/server/content/SyncOperation;Ljava/util/List;)Z
    .locals 6
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "syncOperationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 136
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    const-string/jumbo v4, "SyncManager"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v5, "injector: isSyncRoomAvailable: not xiaomi account, true"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return v3

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    const-string/jumbo v4, "SyncManager"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v5, "injector: isSyncRoomAvailable: sync is manual, true"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    return v3

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    .local v0, "count":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "syncOperation$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 153
    .local v1, "syncOperation":Lcom/android/server/content/SyncOperation;
    invoke-static {v1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_5
    if-ge v0, v3, :cond_6

    :goto_1
    return v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method
