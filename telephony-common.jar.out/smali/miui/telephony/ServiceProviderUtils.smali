.class public Lmiui/telephony/ServiceProviderUtils;
.super Ljava/lang/Object;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ServiceProviderUtils$Condition;,
        Lmiui/telephony/ServiceProviderUtils$Gid1Condition;,
        Lmiui/telephony/ServiceProviderUtils$IServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$ImsiCondition;,
        Lmiui/telephony/ServiceProviderUtils$Name;,
        Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;,
        Lmiui/telephony/ServiceProviderUtils$SpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    }
.end annotation


# static fields
.field private static final ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceProvider"

.field private static final MIUI_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/miui-spn-conf.xml"

.field private static final MIUI_SPN_OVERRIDE_VERSION:I = 0x1

.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    .line 249
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    .line 252
    invoke-static {}, Lmiui/telephony/ServiceProviderUtils;->loadFromXml()V

    .line 41
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "longName"    # Z

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "result":Ljava/lang/String;
    move v3, p1

    .line 281
    .local v3, "slotId":I
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 283
    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 285
    :cond_0
    sget v5, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v5, :cond_1

    .line 286
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    .line 290
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v3, p2}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v4

    .line 291
    .local v4, "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v4, :cond_3

    .line 292
    invoke-interface {v4}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getName()Lmiui/telephony/ServiceProviderUtils$Name;

    move-result-object v1

    .line 293
    .local v1, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez p3, :cond_2

    iget-object v5, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    if-nez v5, :cond_7

    :cond_2
    iget-object v2, v1, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 301
    :cond_4
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    move-object v2, p2

    .line 306
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-boolean v5, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "ServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", spn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    const-string/jumbo v7, " => "

    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_6
    return-object v2

    .line 293
    .restart local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_7
    :try_start_1
    iget-object v5, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {v3}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static get(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "longName"    # Z

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "longName"    # Z

    .prologue
    .line 271
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    .locals 7
    .param p0, "numeric"    # I
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v4, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 337
    .local v1, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    move-object v0, v1

    .line 338
    .local v0, "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v1, :cond_0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    .end local v0    # "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_0
    :goto_0
    sget-boolean v4, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ServiceProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getServiceProvider numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", spn= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 351
    const-string/jumbo v6, " => "

    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    return-object v0

    .line 339
    .restart local v0    # "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_2
    invoke-virtual {v1}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "vsp$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .line 340
    .local v2, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v2, p1, p2, p0}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    move-object v0, v2

    .line 345
    .end local v2    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_4
    invoke-virtual {v1, p1, p2, p0}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 346
    const/4 v0, 0x0

    .local v0, "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    goto :goto_0
.end method

.method public static isChinaMobile(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    const v1, 0xb3b0

    .line 432
    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    add-int v0, v1, p1

    invoke-static {v1, v0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaMobile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 401
    const/4 v1, 0x0

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xb3b0

    invoke-static {v2, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "ServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return v4
.end method

.method public static isChinaTelecom(Ljava/lang/String;)Z
    .locals 5
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 421
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 423
    const/4 v1, 0x0

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xb3b3

    invoke-static {v2, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "ServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return v4
.end method

.method public static isChinaTelecomSim(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    .line 440
    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    const v0, 0xb3b0

    add-int/2addr v0, p1

    const v1, 0xb3b3

    invoke-static {v1, v0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaUnicom(Ljava/lang/String;)Z
    .locals 5
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 410
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 412
    const/4 v1, 0x0

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xb3b1

    invoke-static {v2, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "ServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return v4
.end method

.method public static isChinaUnicomSim(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    .line 436
    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    const v0, 0xb3b0

    add-int/2addr v0, p1

    const v1, 0xb3b1

    invoke-static {v1, v0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseServiceProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 395
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameServiceProvider(II)Z
    .locals 6
    .param p0, "numeric1"    # I
    .param p1, "numeric2"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 373
    if-ne p0, p1, :cond_0

    .line 374
    return v2

    .line 376
    :cond_0
    invoke-static {p0, v5, v4}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v0

    .line 377
    .local v0, "sp1":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    invoke-static {p1, v5, v4}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v1

    .line 378
    .local v1, "sp2":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 379
    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v5

    if-ne v4, v5, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 380
    :cond_2
    if-eqz v0, :cond_4

    .line 381
    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    if-ne v4, p1, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 382
    :cond_4
    if-eqz v1, :cond_6

    .line 383
    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    if-ne v4, p0, :cond_5

    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2

    .line 385
    :cond_6
    return v3
.end method

.method public static isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "numeric1"    # Ljava/lang/String;
    .param p1, "numeric2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 357
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 358
    :cond_0
    return v2

    .line 357
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    const/4 v0, 0x1

    return v0

    .line 365
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    return v2

    .line 369
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    return v0
.end method

.method public static isVirtualServiceProvider(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 313
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 314
    :cond_0
    return v8

    .line 318
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    .local v1, "inumeric":I
    sget-object v5, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 324
    .local v2, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-eqz v2, :cond_2

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    :cond_2
    return v8

    .line 319
    .end local v1    # "inumeric":I
    .end local v2    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "ServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v8

    .line 325
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "inumeric":I
    .restart local v2    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_3
    invoke-virtual {v2}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vsp$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .line 326
    .local v3, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v3, p1, p2, v1}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 327
    const/4 v5, 0x1

    return v5

    .line 330
    .end local v3    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_5
    return v8
.end method

.method private static loadFromXml()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 444
    const/4 v4, 0x0

    .line 446
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 447
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "etc/miui-spn-conf.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 449
    const-string/jumbo v6, "spns"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v6, "version"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 452
    .local v5, "version":I
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SPN file loaded version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eq v5, v10, :cond_1

    .line 455
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SPN file version does\'nt match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    .line 473
    :try_start_1
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v2

    .line 475
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 459
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 461
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_4

    .line 462
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "spn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 464
    invoke-static {v4}, Lmiui/telephony/ServiceProviderUtils;->loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 466
    :cond_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 468
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "version":I
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in miui-spn-conf parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_3

    .line 473
    :try_start_4
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 443
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 471
    .restart local v5    # "version":I
    :cond_4
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_3

    .line 473
    :try_start_5
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 474
    :catch_2
    move-exception v2

    .line 475
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 474
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v5    # "version":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 475
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 471
    instance-of v7, v4, Ljava/io/Closeable;

    if-eqz v7, :cond_5

    .line 473
    :try_start_6
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 470
    .restart local v2    # "ioe":Ljava/io/IOException;
    :cond_5
    :goto_3
    throw v6

    .line 474
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 475
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string/jumbo v7, "ServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in close parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 497
    const-string/jumbo v18, "numeric"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 498
    .local v13, "numericAttribute":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 499
    :cond_0
    return-void

    .line 502
    :cond_1
    invoke-static {v13}, Lmiui/telephony/ServiceProviderUtils;->readNumerics(Ljava/lang/String;)[I

    move-result-object v14

    .line 504
    .local v14, "numerics":[I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v11, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    new-instance v10, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$Name;)V

    .line 506
    .local v10, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .local v7, "l":I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 507
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "attribute":Ljava/lang/String;
    const-string/jumbo v18, "alpha"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 509
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    .line 506
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    :cond_3
    const-string/jumbo v18, "short"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 511
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto :goto_1

    .line 512
    :cond_4
    const-string/jumbo v18, "alpha-"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 513
    const-string/jumbo v18, "alpha-"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 515
    .local v9, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v9, :cond_5

    .line 516
    new-instance v9, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$Name;)V

    .line 517
    .restart local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_5
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    goto :goto_1

    .line 520
    .end local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_6
    const-string/jumbo v18, "short-"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 521
    const-string/jumbo v18, "short-"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 523
    .restart local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v9, :cond_7

    .line 524
    new-instance v9, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$Name;)V

    .line 525
    .restart local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_7
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto/16 :goto_1

    .line 531
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v9    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_8
    iget-object v0, v10, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 532
    return-void

    .line 535
    :cond_9
    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v18, "condition"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lmiui/telephony/ServiceProviderUtils;->readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;

    move-result-object v4

    .line 539
    .local v4, "conditions":[Lmiui/telephony/ServiceProviderUtils$Condition;
    const-string/jumbo v18, "mvno"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 540
    .local v8, "mvno":Ljava/lang/String;
    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 541
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    invoke-direct {v15, v14, v11, v4}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 542
    .local v15, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget v12, v14, v18

    .line 543
    .local v12, "numeric":I
    sget-object v20, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 546
    .end local v12    # "numeric":I
    :cond_a
    sget-boolean v18, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v18, :cond_b

    const-string/jumbo v18, "ServiceProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Loaded spn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_b
    return-void

    .line 550
    .end local v15    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_c
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 551
    .local v16, "usedServiceProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lmiui/telephony/ServiceProviderUtils$ServiceProvider;>;"
    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    aget v12, v14, v18

    .line 552
    .restart local v12    # "numeric":I
    sget-object v20, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 553
    .restart local v15    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-nez v15, :cond_d

    .line 555
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v5, "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    const-string/jumbo v20, ""

    new-instance v21, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$Name;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .end local v15    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v12, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v5, v1}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 558
    .restart local v15    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    sget-object v20, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    .end local v5    # "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 562
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v17, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v11, v4}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;-><init>(Lmiui/telephony/ServiceProviderUtils$ServiceProvider;Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 564
    .local v17, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->addMvno(Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;)V

    .line 566
    sget-boolean v20, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v20, :cond_e

    const-string/jumbo v20, "ServiceProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Loaded virtual spn: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v17    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 496
    .end local v12    # "numeric":I
    .end local v15    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_f
    return-void
.end method

.method public static onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "alpha":Ljava/lang/String;
    const/4 v3, 0x0

    .line 773
    .local v3, "numeric":Ljava/lang/String;
    const/4 v1, 0x0

    .line 774
    .local v1, "isNumeric":Z
    move-object v4, p1

    .line 775
    .local v4, "property":Ljava/lang/String;
    const-string/jumbo v5, "gsm.sim.operator.alpha"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 776
    move-object v0, p2

    .line 777
    .local v0, "alpha":Ljava/lang/String;
    const-string/jumbo v5, "gsm.sim.operator.numeric"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "gsm.sim.operator.orig.alpha"

    invoke-static {p0, v5, p2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 795
    .end local v0    # "alpha":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 796
    if-eqz v1, :cond_1

    .line 797
    invoke-static {p0, v4, v0}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_1
    return-object p2

    .line 779
    .local v0, "alpha":Ljava/lang/String;
    .local v3, "numeric":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "gsm.sim.operator.numeric"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    move-object v3, p2

    .line 781
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "gsm.sim.operator.orig.alpha"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "alpha":Ljava/lang/String;
    const/4 v1, 0x1

    .line 783
    const-string/jumbo v4, "gsm.sim.operator.alpha"

    goto :goto_0

    .line 784
    .local v0, "alpha":Ljava/lang/String;
    .local v3, "numeric":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "gsm.operator.alpha"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 785
    move-object v0, p2

    .line 786
    .local v0, "alpha":Ljava/lang/String;
    const-string/jumbo v5, "gsm.operator.numeric"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "gsm.operator.orig.alpha"

    invoke-static {p0, v5, p2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    .local v0, "alpha":Ljava/lang/String;
    .local v3, "numeric":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "gsm.operator.numeric"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 789
    move-object v3, p2

    .line 790
    .local v3, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "gsm.operator.orig.alpha"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "alpha":Ljava/lang/String;
    const/4 v1, 0x1

    .line 792
    const-string/jumbo v4, "gsm.operator.alpha"

    goto :goto_0

    .line 802
    .end local v0    # "alpha":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    invoke-static {v3, p0, v0, v5}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "newAlpha":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 804
    :cond_6
    move-object v2, v0

    .line 807
    :cond_7
    if-eqz v1, :cond_8

    .line 808
    invoke-static {p0, v4, v2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 809
    return-object p2

    .line 811
    :cond_8
    return-object v2
.end method

.method private static readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;
    .locals 19
    .param p0, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;)[",
            "Lmiui/telephony/ServiceProviderUtils$Condition;"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 573
    const/4 v14, 0x0

    return-object v14

    .line 576
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v4, "conditionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string/jumbo v14, ";"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v2, v15, v14

    .line 578
    .local v2, "c":Ljava/lang/String;
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "cs":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 580
    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 581
    .local v12, "type":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v5, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 582
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 583
    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 585
    :cond_2
    const-string/jumbo v17, "alpha"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 586
    const-string/jumbo v17, "alpha"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 587
    :cond_3
    const-string/jumbo v17, "numericSpn"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 588
    const-string/jumbo v17, "numericSpn"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 592
    .end local v2    # "c":Ljava/lang/String;
    .end local v5    # "cs":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v3, "conditionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/ServiceProviderUtils$Condition;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 594
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string/jumbo v14, "alpha"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 595
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 596
    .local v11, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v10, v14, v15

    .line 597
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 599
    .end local v10    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "n$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 600
    .local v8, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    iget-object v14, v8, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v14, v8, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 603
    .end local v8    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_7
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$SpnCondition;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-direct {v15, v14}, Lmiui/telephony/ServiceProviderUtils$SpnCondition;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 604
    .end local v9    # "n$iterator":Ljava/util/Iterator;
    .end local v11    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v14, "imsi"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 605
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-direct {v15, v14}, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 606
    :cond_9
    const-string/jumbo v14, "gid1"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 607
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-direct {v15, v14}, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 608
    :cond_a
    const-string/jumbo v14, "numericSpn"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 609
    new-instance v14, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;-><init>(Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 612
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lmiui/telephony/ServiceProviderUtils$Condition;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lmiui/telephony/ServiceProviderUtils$Condition;

    return-object v14
.end method

.method private static readNumerics(Ljava/lang/String;)[I
    .locals 8
    .param p0, "numericAttribute"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string/jumbo v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "numerics":[Ljava/lang/String;
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 484
    .local v5, "sia":Landroid/util/SparseIntArray;
    const/4 v6, 0x0

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 485
    .local v2, "numeric":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, "num":I
    invoke-virtual {v5, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "num":I
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 490
    .local v4, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 491
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v4, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_1
    return-object v4
.end method

.method private static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 816
    .local v3, "propVal":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 817
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 820
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 823
    .end local v1    # "p":[Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 824
    return-void

    .line 827
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_3

    .line 828
    const-string/jumbo v4, ""

    .line 829
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 830
    aget-object v4, v1, v0

    .line 832
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    const-string/jumbo p2, ""

    .end local p2    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    if-eqz v1, :cond_5

    .line 837
    add-int/lit8 v0, p0, 0x1

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 838
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 842
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_6

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-le v5, v6, :cond_7

    .line 844
    :cond_6
    return-void

    .line 847
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method
