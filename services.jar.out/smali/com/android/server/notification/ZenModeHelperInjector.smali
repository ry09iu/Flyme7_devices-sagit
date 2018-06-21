.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V
    .locals 5
    .param p0, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p1, "isRestricted"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    if-eqz p1, :cond_0

    move v0, v1

    .line 157
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p2, v0, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_1

    .line 160
    :goto_1
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p2, v1, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 156
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method

.method static applyMiuiRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;)V
    .locals 13
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 112
    sget-boolean v8, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v8, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v4

    .line 117
    .local v4, "mode":I
    invoke-static {v12}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 121
    .local v1, "device":I
    and-int/lit16 v8, v1, 0x8c

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 123
    .local v3, "isHeadsetConnected":Z
    :goto_0
    new-instance v7, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    invoke-direct {v7, v9, p1, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;-><init>(ILandroid/app/AppOpsManager;Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;)V

    .line 124
    .local v7, "unknow":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    new-instance v5, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    const/4 v8, 0x5

    invoke-direct {v5, v8, p1, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;-><init>(ILandroid/app/AppOpsManager;Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;)V

    .line 125
    .local v5, "notification":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    new-instance v6, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    const/4 v8, 0x6

    invoke-direct {v6, v8, p1, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;-><init>(ILandroid/app/AppOpsManager;Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;)V

    .line 126
    .local v6, "ringtone":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    new-instance v0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    const/16 v8, 0xd

    invoke-direct {v0, v8, p1, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;-><init>(ILandroid/app/AppOpsManager;Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;)V

    .line 127
    .local v0, "assistance":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    packed-switch v4, :pswitch_data_0

    .line 148
    :pswitch_0
    invoke-virtual {v7, v10, v10}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 149
    invoke-virtual {v0, v10, v10}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 150
    invoke-virtual {v5, v10, v10}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 151
    invoke-virtual {v6, v10, v10}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 111
    :goto_1
    return-void

    .line 121
    .end local v0    # "assistance":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .end local v3    # "isHeadsetConnected":Z
    .end local v5    # "notification":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .end local v6    # "ringtone":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .end local v7    # "unknow":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isHeadsetConnected":Z
    goto :goto_0

    .line 129
    .restart local v0    # "assistance":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .restart local v5    # "notification":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .restart local v6    # "ringtone":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .restart local v7    # "unknow":Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    :pswitch_1
    invoke-virtual {v7, v10, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 130
    invoke-virtual {v0, v10, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 131
    invoke-virtual {v5, v10, v3}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 132
    invoke-virtual {v6, v10, v3}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-virtual {v7, v9, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 136
    invoke-virtual {v0, v9, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v8

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v8

    iget-boolean v2, v8, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 138
    :goto_2
    invoke-virtual {v5, v9, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->hasException(Z)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 139
    invoke-virtual {v6, v9, v9}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->hasException(Z)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->applyRestriction()V

    .line 142
    invoke-virtual {v6, v12, v10, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(II[Ljava/lang/String;)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    .line 144
    invoke-virtual {v7, v12, v9, v11}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->setRestriction(II[Ljava/lang/String;)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;

    goto :goto_1

    .line 137
    :cond_2
    const/4 v2, 0x1

    .local v2, "hasException":Z
    goto :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 3
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 23
    .local v1, "zenMode":I
    const/4 v0, -0x1

    .line 24
    .local v0, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 26
    :pswitch_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 27
    const/4 v0, 0x3

    goto :goto_0

    .line 32
    :pswitch_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 33
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;II)I
    .locals 4
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerModeOld"    # I
    .param p3, "ringerModeNew"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    .line 44
    .local v2, "zenMode":I
    const/4 v1, -0x1

    .line 45
    .local v1, "newZen":I
    if-eq p2, p3, :cond_1

    const/4 v0, 0x1

    .line 47
    .local v0, "isChange":Z
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 61
    :cond_0
    :goto_1
    return v1

    .line 45
    .end local v0    # "isChange":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 49
    :pswitch_0
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 50
    const/4 v1, 0x3

    goto :goto_1

    .line 55
    :pswitch_1
    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 56
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 57
    const/4 v1, 0x0

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static getExternalRingerMode(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ExternalOut"    # I

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 168
    const/4 v2, -0x3

    .line 167
    invoke-static {p0, v2}, Lmiui/util/AudioManagerHelper;->isNewVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    .line 169
    .local v0, "isVibrate":Z
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v0    # "isVibrate":Z
    :cond_1
    return p1
.end method

.method static getInternalRingerMode(I)I
    .locals 1
    .param p0, "newZen"    # I

    .prologue
    .line 175
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 176
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static miuiComputeZenMode(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)I
    .locals 5
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 189
    monitor-enter p1

    .line 190
    if-nez p1, :cond_0

    const/4 v3, 0x0

    monitor-exit p1

    return v3

    .line 191
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_1

    .line 192
    const-string/jumbo v3, "conditionChanged"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    :cond_1
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 198
    .local v2, "zen":I
    :goto_0
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 199
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 201
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_1

    .line 193
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "zen":I
    :cond_3
    const-string/jumbo v3, "setNotificationPolicy"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    const-string/jumbo v3, "updateAutomaticZenRule"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return v3

    .line 197
    :cond_4
    :try_start_1
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "zen":I
    goto :goto_0

    .restart local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit p1

    .line 205
    return v2

    .line 189
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "zen":I
    :catchall_0
    move-exception v3

    monitor-exit p1

    throw v3
.end method

.method private static zenSeverity(I)I
    .locals 1
    .param p0, "zen"    # I

    .prologue
    .line 180
    packed-switch p0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    return v0

    .line 181
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 182
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 183
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
