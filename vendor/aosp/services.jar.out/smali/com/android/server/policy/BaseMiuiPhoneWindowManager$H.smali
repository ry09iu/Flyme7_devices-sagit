.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;
.super Landroid/os/Handler;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field static final MSG_KEY_FUNCTION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1406
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 1408
    :cond_0
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_1

    return-void

    .line 1410
    :cond_1
    const/4 v5, 0x0

    .line 1411
    .local v5, "triggered":Z
    const-string/jumbo v1, "virtual_key_longpress"

    .line 1412
    .local v1, "effectKey":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1413
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1414
    return-void

    .line 1416
    :cond_2
    const-string/jumbo v8, "launch_camera"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1417
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v5

    .line 1465
    .end local v5    # "triggered":Z
    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    .line 1466
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v6

    invoke-virtual {v6, v1, v7}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1467
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    .line 1469
    :cond_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1405
    return-void

    .line 1419
    .restart local v5    # "triggered":Z
    :cond_5
    const-string/jumbo v8, "screen_shot"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1420
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1421
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1422
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "screenshot"

    const-string/jumbo v9, "key_shortcut"

    invoke-static {v6, v8, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const/4 v5, 0x1

    goto :goto_0

    .line 1425
    :cond_6
    const-string/jumbo v8, "launch_voice_assistant"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1426
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    .line 1427
    .local v5, "triggered":Z
    const-string/jumbo v1, "screen_button_voice_assist"

    goto :goto_0

    .line 1429
    .local v5, "triggered":Z
    :cond_7
    const-string/jumbo v8, "launch_google_search"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1430
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)Z

    move-result v5

    .line 1431
    .local v5, "triggered":Z
    const-string/jumbo v1, "screen_button_voice_assist"

    goto :goto_0

    .line 1433
    .local v5, "triggered":Z
    :cond_8
    const-string/jumbo v8, "go_to_sleep"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1434
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1435
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1437
    :cond_9
    const-string/jumbo v8, "turn_on_torch"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1438
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 1439
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v4, :cond_c

    .line 1440
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v8

    if-nez v8, :cond_b

    move v3, v6

    .line 1441
    .local v3, "phoneIdle":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 1442
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v5

    .line 1443
    .local v5, "triggered":Z
    if-eqz v5, :cond_3

    .line 1444
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    goto/16 :goto_0

    .end local v3    # "phoneIdle":Z
    .local v5, "triggered":Z
    :cond_a
    move v3, v6

    .line 1439
    goto :goto_1

    :cond_b
    move v3, v7

    .line 1440
    goto :goto_1

    :cond_c
    move v3, v7

    .line 1439
    goto :goto_1

    .line 1448
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_d
    const-string/jumbo v6, "close_app"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1449
    const-string/jumbo v6, "close_app"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1450
    .local v2, "isTriggeredByBack":Z
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v5

    .local v5, "triggered":Z
    goto/16 :goto_0

    .line 1452
    .end local v2    # "isTriggeredByBack":Z
    .local v5, "triggered":Z
    :cond_e
    const-string/jumbo v6, "show_menu"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1453
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap8(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    .local v5, "triggered":Z
    goto/16 :goto_0

    .line 1455
    .local v5, "triggered":Z
    :cond_f
    const-string/jumbo v6, "mi_pay_trans"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1456
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1458
    :cond_10
    const-string/jumbo v6, "mi_pay_bank"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1459
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1460
    :cond_11
    const-string/jumbo v6, "launch_recents"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1461
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    .line 1462
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    .local v5, "triggered":Z
    goto/16 :goto_0
.end method
