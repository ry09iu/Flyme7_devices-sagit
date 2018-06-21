.class Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 300
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 14

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v1, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v13

    .line 312
    .local v13, "subId":I
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v0, v13, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get6(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 316
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 319
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    const v1, 0x1120064

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v11, 0x0

    .line 321
    .local v11, "restoreSelection":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendSubscriptionSettings(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string/jumbo v1, "gsm.network.type"

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 324
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get5(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->-get6(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get2(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get1(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get3(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->-get4(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->-set1(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    .line 336
    :cond_0
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 339
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "network_selection_key"

    const-string/jumbo v1, ""

    .line 338
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, "oldNetworkSelection":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_name_key"

    const-string/jumbo v1, ""

    .line 340
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "oldNetworkSelectionName":Ljava/lang/String;
    const-string/jumbo v0, "network_selection_short_key"

    const-string/jumbo v1, ""

    .line 342
    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 344
    .local v10, "oldNetworkSelectionShort":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    .line 366
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "oldNetworkSelection":Ljava/lang/String;
    .end local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .end local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .end local v11    # "restoreSelection":Z
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    .line 308
    :cond_2
    return-void

    .line 319
    .restart local v6    # "context":Landroid/content/Context;
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "restoreSelection":Z
    goto/16 :goto_0

    .line 347
    .restart local v8    # "oldNetworkSelection":Ljava/lang/String;
    .restart local v9    # "oldNetworkSelectionName":Ljava/lang/String;
    .restart local v10    # "oldNetworkSelectionShort":Ljava/lang/String;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 348
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "network_selection_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "network_selection_name_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "network_selection_short_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    const-string/jumbo v0, "network_selection_key"

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string/jumbo v0, "network_selection_name_key"

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string/jumbo v0, "network_selection_short_key"

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method
