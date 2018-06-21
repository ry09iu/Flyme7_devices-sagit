.class public Lcom/android/internal/telephony/SubscriptionControllerInjector;
.super Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;
.source "SubscriptionControllerInjector.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/SubscriptionControllerInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionControllerInjectorBase;-><init>()V

    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/SubscriptionControllerInjector;
    .locals 2

    .prologue
    const-class v1, Lcom/android/internal/telephony/SubscriptionControllerInjector;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjector;->sInstance:Lcom/android/internal/telephony/SubscriptionControllerInjector;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/android/internal/telephony/SubscriptionControllerInjector;

    invoke-direct {v0}, Lcom/android/internal/telephony/SubscriptionControllerInjector;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjector;->sInstance:Lcom/android/internal/telephony/SubscriptionControllerInjector;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionControllerInjector;->sInstance:Lcom/android/internal/telephony/SubscriptionControllerInjector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected createSubscriptionInfo(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;I)Landroid/telephony/SubscriptionInfo;
    .locals 14
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # I
    .param p12, "mnc"    # I
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "simProvisioningStatus"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    return-object v0
.end method

.method protected getSimProvisioningStatus(Landroid/telephony/SubscriptionInfo;)I
    .locals 1
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 23
    const/4 v0, -0x1

    return v0
.end method

.method protected getSimProvisioningStatusTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string/jumbo v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
