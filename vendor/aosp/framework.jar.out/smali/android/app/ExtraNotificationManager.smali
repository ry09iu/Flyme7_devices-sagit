.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .locals 2
    .param p0, "allow"    # Z
    .param p1, "usage"    # I
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "exception"    # [Ljava/lang/String;

    .prologue
    .line 343
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 342
    :goto_0
    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 341
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 215
    const-string/jumbo v2, "SilenceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableVIPMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 217
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 219
    .local v1, "mode":I
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 220
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 221
    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 223
    if-nez p1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 224
    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 229
    :goto_0
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 214
    return-void

    .line 226
    :cond_0
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0
.end method

.method public static getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 268
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 278
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 277
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 279
    .local v0, "countDownTime":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_0

    return v2

    .line 175
    :cond_0
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/16 v0, 0x3e7

    .line 178
    .local v0, "userHandle":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 179
    const-string/jumbo v4, "quiet_mode_enable"

    .line 178
    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    return v1

    .line 176
    .end local v0    # "userHandle":I
    :cond_1
    move v0, p1

    .restart local v0    # "userHandle":I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const/16 v0, 0x3e7

    .line 260
    .local v0, "userHandle":I
    :goto_0
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 258
    .end local v0    # "userHandle":I
    :cond_1
    move v0, p1

    .restart local v0    # "userHandle":I
    goto :goto_0
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x3e7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 139
    .local v0, "preMode":I
    if-eqz p1, :cond_1

    .line 140
    if-nez v0, :cond_0

    .line 141
    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "quiet_mode_enable"

    .line 143
    invoke-static {v1, v2, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "quiet_mode_enable"

    .line 147
    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    :goto_0
    return-void

    .line 151
    :cond_1
    if-ne v0, v4, :cond_2

    .line 152
    invoke-static {p0, v3, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 154
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "quiet_mode_enable"

    .line 154
    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "quiet_mode_enable"

    .line 158
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 201
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 202
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 203
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 200
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 242
    const-string/jumbo v0, "SilenceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilenceMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 240
    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 57
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 58
    const/4 p1, 0x2

    .line 60
    :cond_0
    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_1

    .line 61
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_1
    if-ne p1, v6, :cond_2

    .line 65
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    :cond_2
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 71
    :goto_0
    if-nez p2, :cond_3

    .line 72
    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, "foreverId":Landroid/net/Uri;
    new-instance v0, Landroid/service/notification/Condition;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 75
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object p2, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 78
    .end local v0    # "condition":Landroid/service/notification/Condition;
    .end local v1    # "foreverId":Landroid/net/Uri;
    :cond_3
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 55
    return-void

    .line 66
    :cond_4
    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 99
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 101
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 102
    .local v2, "priorityCategories":I
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v3, :cond_0

    .line 103
    or-int/lit8 v2, v2, 0x2

    .line 107
    :goto_0
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_1

    .line 108
    or-int/lit8 v2, v2, 0x8

    .line 112
    :goto_1
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_2

    .line 113
    or-int/lit8 v2, v2, 0x4

    .line 117
    :goto_2
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_3

    .line 118
    or-int/lit8 v2, v2, 0x10

    .line 123
    :goto_3
    new-instance v1, Landroid/app/NotificationManager$Policy;

    .line 124
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 123
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 125
    .end local v0    # "policy":Landroid/app/NotificationManager$Policy;
    .local v1, "policy":Landroid/app/NotificationManager$Policy;
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 126
    const/4 v3, 0x1

    return v3

    .line 105
    .end local v1    # "policy":Landroid/app/NotificationManager$Policy;
    .restart local v0    # "policy":Landroid/app/NotificationManager$Policy;
    :cond_0
    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 110
    :cond_1
    and-int/lit8 v2, v2, -0x9

    goto :goto_1

    .line 115
    :cond_2
    and-int/lit8 v2, v2, -0x5

    goto :goto_2

    .line 120
    :cond_3
    and-int/lit8 v2, v2, -0x11

    goto :goto_3
.end method

.method public static startCountDownSilenceMode(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "time"    # I

    .prologue
    .line 289
    if-nez p2, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 291
    return-void

    .line 294
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {p0, p2, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 295
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 288
    return-void
.end method

.method public static updateRestriction(ZLandroid/content/Context;)V
    .locals 11
    .param p0, "plugged"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 300
    const-string/jumbo v8, "appops"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 302
    .local v2, "appOps":Landroid/app/AppOpsManager;
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    aput-object v8, v4, v9

    .line 303
    .local v4, "defaultException":[Ljava/lang/String;
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    .line 304
    const-string/jumbo v8, "com.android.systemui"

    aput-object v8, v5, v9

    .line 305
    const-string/jumbo v8, "android"

    aput-object v8, v5, v10

    .line 306
    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 307
    const-string/jumbo v8, "com.android.server.telecom"

    const/4 v9, 0x3

    aput-object v8, v5, v9

    .line 308
    .local v5, "exceptionPackages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v7

    .line 309
    .local v7, "mode":I
    invoke-static {p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 310
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v1, 0x1

    .line 311
    .local v1, "allowRingtone":Z
    const/4 v0, 0x1

    .line 312
    .local v0, "allowNotification":Z
    const/4 v6, 0x0

    .line 313
    .local v6, "hasException":Z
    packed-switch v7, :pswitch_data_0

    .line 325
    :pswitch_0
    const/4 v0, 0x1

    .line 326
    const/4 v1, 0x1

    .line 333
    .end local v0    # "allowNotification":Z
    .end local v1    # "allowRingtone":Z
    .end local v6    # "hasException":Z
    :goto_0
    if-eqz v6, :cond_1

    move-object v8, v5

    .line 331
    :goto_1
    const/4 v9, 0x6

    .line 329
    invoke-static {v1, v9, v2, v8}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 338
    if-eqz v6, :cond_2

    .line 336
    .end local v5    # "exceptionPackages":[Ljava/lang/String;
    :goto_2
    const/4 v8, 0x5

    .line 334
    invoke-static {v0, v8, v2, v5}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 299
    return-void

    .line 315
    .restart local v0    # "allowNotification":Z
    .restart local v1    # "allowRingtone":Z
    .restart local v5    # "exceptionPackages":[Ljava/lang/String;
    .restart local v6    # "hasException":Z
    :pswitch_1
    move v1, p0

    .line 316
    .local v1, "allowRingtone":Z
    move v0, p0

    .line 317
    .local v0, "allowNotification":Z
    goto :goto_0

    .line 319
    .local v0, "allowNotification":Z
    .local v1, "allowRingtone":Z
    :pswitch_2
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_0

    iget-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .local v6, "hasException":Z
    goto :goto_0

    .local v6, "hasException":Z
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "allowNotification":Z
    .end local v1    # "allowRingtone":Z
    .end local v6    # "hasException":Z
    :cond_1
    move-object v8, v4

    .line 333
    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 338
    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
