.class public Lcom/android/server/content/SyncManagerAccountChangePolicy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    }
.end annotation


# static fields
.field private static final ALLOW_FIRST_NUM_SYNCS:I = 0x3

.field private static final ALLOW_FIRST_NUM_SYNCS_FOR_BROWSER:I = 0x8

.field private static final AUTHORITY_BROWSER:Ljava/lang/String; = "com.miui.browser"

.field private static final AUTHORITY_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final AUTHORITY_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field protected static final AUTHORITY_GALLERY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field private static final AUTHORITY_NOTES:Ljava/lang/String; = "notes"

.field private static final DEFAULT_SCREEN_OFF_PENDING_TIME:J = 0x1d4c0L

.field static final EXTRA_KEY_BATTERY_CHARGING:Ljava/lang/String; = "battery_charging"

.field static final EXTRA_KEY_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field static final EXTRA_KEY_INTERACTIVE:Ljava/lang/String; = "interactive"

.field static final EXTRA_KEY_LAST_SCREEN_OFF_TIME:Ljava/lang/String; = "last_screen_off_time"

.field static final EXTRA_KEY_NUM_SYNCS:Ljava/lang/String; = "num_syncs"

.field private static final LOW_BATTERY_LEVEL_LIMIT:I = 0x14

.field protected static final PACKAGE_NAME_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field private static final REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    .line 124
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;)V

    return-object v0
.end method

.method public static isBatteryCharging(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryCharging(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "status":I
    invoke-static {v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryCharging(I)Z

    move-result v3

    return v3
.end method

.method public static isBatteryLow(II)Z
    .locals 2
    .param p0, "status"    # I
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x14

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBatteryLow(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, "status":I
    const-string/jumbo v4, "level"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "level":I
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryLow(II)Z

    move-result v4

    return v4
.end method

.method protected static isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 75
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 76
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :cond_0
    return v4

    .line 80
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 81
    .local v2, "topActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_2

    .line 82
    return v4

    .line 84
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 10
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 59
    return-object v5

    .line 61
    :cond_0
    array-length v5, p0

    new-array v2, v5, [Landroid/accounts/Account;

    .line 62
    .local v2, "masked":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 63
    aget-object v5, p0, v0

    iget-object v3, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 64
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 66
    .local v1, "m":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, v5, v1

    .line 67
    .local v4, "r":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    new-array v7, v4, [C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v7, "\u0000"

    const-string/jumbo v8, "*"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .end local v1    # "m":I
    .end local v4    # "r":I
    :cond_1
    new-instance v5, Landroid/accounts/Account;

    aget-object v6, p0, v0

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static rebuildSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 4
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 191
    .local v0, "authority":Ljava/lang/String;
    sget-object v1, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "require_charging"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

.method static scheduleSyncForChangedAccountUnknownStateAuthorities(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V
    .locals 13
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sendingUserId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 31
    const-string/jumbo v1, "account_changed_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, "action":Ljava/lang/String;
    const/4 v8, 0x0

    .line 34
    .local v8, "accounts":[Landroid/accounts/Account;
    :try_start_0
    const-string/jumbo v1, "accounts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/accounts/Account;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v8    # "accounts":[Landroid/accounts/Account;
    :goto_0
    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v6, "Account changed. Action: %s, Accounts: %s. "

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    .line 39
    aput-object v9, v7, v3

    .line 40
    if-nez v8, :cond_2

    const-string/jumbo v1, "NULL"

    :goto_1
    const/4 v11, 0x1

    aput-object v1, v7, v11

    .line 38
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v1, "altered"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "added"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 44
    :cond_0
    if-eqz v8, :cond_3

    .line 45
    array-length v12, v8

    move v11, v3

    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v2, v8, v11

    .line 46
    .local v2, "account":Landroid/accounts/Account;
    if-eqz v2, :cond_1

    .line 48
    const/4 v4, -0x2

    .line 49
    const/4 v7, -0x1

    move-object v1, p0

    move v3, p2

    move-object v6, v5

    .line 47
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 45
    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 35
    .end local v2    # "account":Landroid/accounts/Account;
    .restart local v8    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v10

    .line 36
    .local v10, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad account extra: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v8    # "accounts":[Landroid/accounts/Account;
    .end local v10    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-static {v8}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 29
    :cond_3
    return-void
.end method
