.class public Lcom/android/server/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "colorKey"    # Ljava/lang/String;
    .param p3, "freqKey"    # Ljava/lang/String;
    .param p4, "defaultNotificationColor"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    const v4, 0x1106000b

    .line 96
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 98
    .local v0, "defaultFreq":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, p4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 100
    .local v1, "freq":I
    if-gez v1, :cond_0

    .end local v0    # "defaultFreq":I
    :goto_0
    invoke-static {v0}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v2

    .line 101
    .local v2, "offOn":[I
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    .line 102
    aget v3, v2, v6

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 95
    return-void

    .end local v2    # "offOn":[I
    .restart local v0    # "defaultFreq":I
    :cond_0
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V
    .locals 8
    .param p0, "service"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "defaultNotificationColor"    # I

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 70
    .local v2, "identify":J
    const/4 v0, 0x0

    .line 73
    .local v0, "customized":Z
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "light$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "light":Ljava/lang/String;
    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.android.server.telecom"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "call_breathing_light_color"

    const-string/jumbo v7, "call_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    return-void

    .line 77
    :cond_2
    const-string/jumbo v5, "com.android.mms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mms_breathing_light_color"

    const-string/jumbo v7, "mms_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "light":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 84
    return-void

    .line 88
    :cond_4
    iget v5, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "breathing_light_color"

    const-string/jumbo v7, "breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return-void
.end method

.method public static getBestNotificationLight(Landroid/util/ArrayMap;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    .local p0, "notificationsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local p1, "lights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 51
    .local v0, "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 53
    .local v0, "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "light$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, "light":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 55
    .local v3, "notifLight":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.android.server.telecom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    :cond_1
    move-object v0, v3

    .line 64
    .end local v0    # "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "light":Ljava/lang/String;
    .end local v2    # "light$iterator":Ljava/util/Iterator;
    .end local v3    # "notifLight":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 59
    .restart local v0    # "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "light":Ljava/lang/String;
    .restart local v2    # "light$iterator":Ljava/util/Iterator;
    .restart local v3    # "notifLight":Lcom/android/server/notification/NotificationRecord;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "com.android.mms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    move-object v0, v3

    goto :goto_0
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .param p0, "totalLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 19
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 20
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    .line 21
    aget v1, v0, v2

    sub-int v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 22
    return-object v0
.end method

.method public static updateNotificationLight(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "defaultNotificationColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 30
    .local v4, "identify":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 31
    const-string/jumbo v7, "breathing_light_color"

    .line 30
    invoke-static {v6, v7, p2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 33
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 34
    const v7, 0x1106000b

    .line 33
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 35
    .local v1, "defaultFreq":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 36
    const-string/jumbo v7, "breathing_light_freq"

    .line 35
    invoke-static {v6, v7, v1, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 38
    .local v2, "freq":I
    if-gez v2, :cond_0

    .end local v1    # "defaultFreq":I
    :goto_0
    invoke-static {v1}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v3

    .line 39
    .local v3, "offOn":[I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 40
    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, p1, Landroid/app/Notification;->ledOnMS:I

    .line 41
    aget v6, v3, v9

    iput v6, p1, Landroid/app/Notification;->ledOffMS:I

    .line 44
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return-void

    .end local v3    # "offOn":[I
    .restart local v1    # "defaultFreq":I
    :cond_0
    move v1, v2

    .line 38
    goto :goto_0
.end method
