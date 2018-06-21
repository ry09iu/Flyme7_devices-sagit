.class Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSyncDataStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 161
    const-string/jumbo v5, "num_syncs"

    const/4 v6, -0x1

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 163
    .local v4, "num":I
    const-string/jumbo v5, "com.miui.browser"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    if-ltz v4, :cond_1

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 165
    return v10

    .line 168
    :cond_0
    if-ltz v4, :cond_1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 169
    return v10

    .line 173
    :cond_1
    const-string/jumbo v5, "interactive"

    invoke-virtual {p3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    .local v1, "isInteractive":Z
    if-eqz v1, :cond_2

    .line 175
    return v11

    .line 177
    :cond_2
    const-string/jumbo v5, "last_screen_off_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 178
    .local v2, "lastScreenOffTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x1d4c0

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 179
    return v11

    .line 181
    :cond_3
    const-string/jumbo v5, "battery_charging"

    invoke-virtual {p3, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    .local v0, "isBatteryCharging":Z
    if-nez v0, :cond_4

    .line 183
    return v11

    .line 185
    :cond_4
    return v10
.end method
