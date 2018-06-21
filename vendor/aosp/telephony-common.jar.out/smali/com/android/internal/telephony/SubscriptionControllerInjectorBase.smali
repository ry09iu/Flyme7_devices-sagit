.class public abstract Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;
.super Ljava/lang/Object;
.source "SubscriptionControllerInjectorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE_CARRIER_NAME:I = 0x0

.field private static final EVENT_UPDATE_MCC_MNC:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionControllerInjector"

.field protected static sActiveSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sDatabaseHandler:Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SubscriptionControllerInjector.Database"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    new-instance v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sDatabaseHandler:Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized carrierNameEqualsCache(ILjava/lang/String;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "carrierName"    # Ljava/lang/String;

    .prologue
    const-class v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v2

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 132
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore setCarrierText which equals with cache, text:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", subId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 136
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static declared-synchronized clearActiveSubInfosCache()V
    .locals 2

    .prologue
    const-class v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 47
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized displayNameUsingSrcEqualsCache(ILjava/lang/String;J)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "nameSource"    # J

    .prologue
    const-class v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v2

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 151
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-wide/16 v4, -0x1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore setDisplayName which equals with cache, displayName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v3, ", nameSource:"

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v3, " subId:"

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 157
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static dumpDatabaseSubInfoList(Ljava/io/PrintWriter;ZLjava/util/List;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "isSubInfoReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 174
    const-string/jumbo v2, " ActiveSubInfoList in the DB:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 176
    .local v0, "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, " ActiveSubInfoList in the DB: null"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 172
    return-void
.end method

.method protected static declared-synchronized getActiveSubInfoListCache()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v2

    .line 122
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-object v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 125
    return-object v0

    .line 127
    .end local v0    # "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .restart local v0    # "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    const-class v4, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v4

    .line 161
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getActiveSubInfoListCache()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 162
    .local v0, "activeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    monitor-exit v4

    return-object v5

    .line 164
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 165
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/telephony/SubscriptionInfo;->mId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p0, :cond_1

    monitor-exit v4

    .line 166
    return-object v1

    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    monitor-exit v4

    .line 169
    return-object v5

    .end local v0    # "activeInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "SubscriptionControllerInjector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected static declared-synchronized mccMncEqualsCache(III)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    const-class v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v2

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 141
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignore setMccMnc which equals with cache, mcc/mnc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " subId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 145
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static updateCarrierText(Ljava/lang/String;I)V
    .locals 3
    .param p0, "carrier"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    .line 209
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sDatabaseHandler:Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void
.end method

.method protected static updateMccMnc(Ljava/lang/String;I)V
    .locals 3
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    .line 205
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sDatabaseHandler:Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase$DatabaseHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method


# virtual methods
.method protected addActiveSubInfosCache(Landroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 41
    const-class v1, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v1

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addActiveSubInfosCache subInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->logdl(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract createSubscriptionInfo(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;I)Landroid/telephony/SubscriptionInfo;
.end method

.method protected abstract getSimProvisioningStatus(Landroid/telephony/SubscriptionInfo;)I
.end method

.method protected abstract getSimProvisioningStatusTag()Ljava/lang/String;
.end method

.method protected abstract logdl(Ljava/lang/String;)V
.end method

.method protected updateSubInfoListCache(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    const-class v25, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;

    monitor-enter v25

    .line 53
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v25

    .line 54
    return-void

    .line 57
    :cond_1
    const/16 v24, 0x0

    .line 58
    .local v24, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/16 v17, -0x1

    .line 59
    .local v17, "index":I
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "info$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    .line 60
    .local v18, "info":Landroid/telephony/SubscriptionInfo;
    add-int/lit8 v17, v17, 0x1

    .line 61
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    .line 62
    move-object/from16 v24, v18

    .line 67
    .end local v18    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    if-eqz v24, :cond_10

    .line 68
    move-object/from16 v0, v24

    iget-object v6, v0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 69
    .local v6, "displyName":Ljava/lang/CharSequence;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 70
    .local v7, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v0, v24

    iget-object v10, v0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 71
    .local v10, "number":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v8

    .line 72
    .local v8, "nameSource":I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    .line 73
    .local v5, "simSlotIndex":I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v9

    .line 74
    .local v9, "iconTint":I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v13

    .line 75
    .local v13, "mcc":I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v14

    .line 76
    .local v14, "mnc":I
    move-object/from16 v0, v24

    iget v11, v0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 77
    .local v11, "dataRoaming":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getSimProvisioningStatus(Landroid/telephony/SubscriptionInfo;)I

    move-result v16

    .line 78
    .local v16, "simProvisioningStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    const v3, 0x1080448

    .line 78
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 81
    .local v12, "iconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 82
    .local v20, "key":Ljava/lang/String;
    const-string/jumbo v2, "display_name"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "displyName":Ljava/lang/CharSequence;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "displyName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 84
    :cond_5
    const-string/jumbo v2, "carrier_name"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "carrierName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 86
    :cond_6
    const-string/jumbo v2, "number"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "number":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "number":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_7
    const-string/jumbo v2, "name_source"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v8

    goto :goto_0

    .line 90
    :cond_8
    const-string/jumbo v2, "sim_id"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string/jumbo v2, "color"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_0

    .line 96
    :cond_b
    const-string/jumbo v2, "mnc"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string/jumbo v2, "data_roaming"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 99
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_0

    .line 100
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->getSimProvisioningStatusTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_0

    .line 105
    .end local v20    # "key":Ljava/lang/String;
    :cond_e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    move-object/from16 v0, v24

    iget v3, v0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v22

    .line 107
    .local v22, "line1Number":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 108
    move-object/from16 v10, v22

    .line 112
    .end local v22    # "line1Number":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v24

    iget v3, v0, Landroid/telephony/SubscriptionInfo;->mId:I

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 114
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p0

    .line 112
    invoke-virtual/range {v2 .. v16}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->createSubscriptionInfo(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 115
    .local v23, "newSubInfo":Landroid/telephony/SubscriptionInfo;
    sget-object v2, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->sActiveSubscriptionInfoList:Ljava/util/List;

    move/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveSubInfosCache subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", subInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "simSlotIndex":I
    .end local v6    # "displyName":Ljava/lang/CharSequence;
    .end local v7    # "carrierName":Ljava/lang/CharSequence;
    .end local v8    # "nameSource":I
    .end local v9    # "iconTint":I
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "dataRoaming":I
    .end local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v16    # "simProvisioningStatus":I
    .end local v21    # "key$iterator":Ljava/util/Iterator;
    .end local v23    # "newSubInfo":Landroid/telephony/SubscriptionInfo;
    :cond_10
    monitor-exit v25

    .line 51
    return-void

    .line 52
    .end local v17    # "index":I
    .end local v19    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v25

    throw v2
.end method
