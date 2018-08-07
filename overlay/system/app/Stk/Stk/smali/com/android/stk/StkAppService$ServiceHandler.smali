.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkAppService;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkAppService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method

.method private handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "slotId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 648
    const-string/jumbo v2, "card_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 650
    .local v0, "cardStatus":Z
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CardStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-nez v0, :cond_2

    .line 652
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CARD is ABSENT"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get2(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v3, p2}, Lcom/android/stk/StkAppService;->-wrap3(Lcom/android/stk/StkAppService;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 656
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 657
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 658
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    iput-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 659
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    iput-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 660
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get6(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v2

    aput-object v5, v2, p2

    .line 665
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2, p2}, Lcom/android/stk/StkAppService;->-wrap0(Lcom/android/stk/StkAppService;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2, p2}, Lcom/android/stk/StkAppService;->-wrap1(Lcom/android/stk/StkAppService;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "All CARDs are ABSENT or no card has stk menu"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get1(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 669
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService;->stopSelf()V

    goto :goto_0

    .line 672
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 673
    .local v1, "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string/jumbo v2, "refresh_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 675
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icc Refresh Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 677
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v6, :cond_4

    .line 679
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get2(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v3, p2}, Lcom/android/stk/StkAppService;->-wrap3(Lcom/android/stk/StkAppService;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 682
    :cond_4
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v6, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2, p2}, Lcom/android/stk/StkAppService;->-wrap0(Lcom/android/stk/StkAppService;I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2, p2}, Lcom/android/stk/StkAppService;->-wrap1(Lcom/android/stk/StkAppService;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 689
    :goto_1
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    iput-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 690
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v2

    aget-object v2, v2, p2

    iput-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 687
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get1(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 509
    if-nez p1, :cond_0

    .line 510
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ServiceHandler handleMessage msg is null"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void

    .line 513
    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 514
    .local v5, "opcode":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 516
    .local v7, "slotId":I
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage opcode["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "], sim id["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-ne v5, v13, :cond_1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 518
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 519
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cmdName["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iput v5, v8, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    .line 522
    packed-switch v5, :pswitch_data_0

    .line 508
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 524
    :pswitch_1
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v8, :cond_3

    .line 525
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mMainCmd is null"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void

    .line 529
    :cond_3
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage OP_LAUNCH_APP - mCmdInProgress["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 530
    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v10}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v10

    aget-object v10, v10, v7

    iget-boolean v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 529
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 530
    const-string/jumbo v10, "]"

    .line 529
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v7}, Lcom/android/stk/StkAppService;->-wrap7(Lcom/android/stk/StkAppService;I)V

    .line 536
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current cmd type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 537
    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v10}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v10

    aget-object v10, v10, v7

    iget-object v10, v10, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    .line 536
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v7}, Lcom/android/stk/StkAppService;->-wrap15(Lcom/android/stk/StkAppService;I)V

    goto :goto_0

    .line 542
    :pswitch_2
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "[OP_CMD]"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 552
    .local v1, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v1}, Lcom/android/stk/StkAppService;->-wrap2(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 553
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v1, v7}, Lcom/android/stk/StkAppService;->-wrap10(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_0

    .line 555
    :cond_4
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-boolean v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    if-nez v8, :cond_5

    .line 556
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iput-boolean v13, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 557
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {v9, v8, v7}, Lcom/android/stk/StkAppService;->-wrap10(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_0

    .line 559
    :cond_5
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "[Interactive][in progress]"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v10, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v11, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    .line 561
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 560
    invoke-direct {v10, v11, v13, v8, v7}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 566
    .end local v1    # "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_3
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v9, v8, v7}, Lcom/android/stk/StkAppService;->-wrap9(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V

    .line 568
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 569
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v7}, Lcom/android/stk/StkAppService;->-wrap4(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_0

    .line 571
    :cond_6
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iput-boolean v11, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 575
    :pswitch_4
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-boolean v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    if-nez v8, :cond_7

    .line 576
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iput-boolean v13, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 577
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v7}, Lcom/android/stk/StkAppService;->-wrap13(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_0

    .line 579
    :cond_7
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    .line 580
    new-instance v9, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11, v12, v7}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    .line 579
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 584
    :pswitch_5
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " OP_BOOT_COMPLETED"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x0

    .line 586
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get4(Lcom/android/stk/StkAppService;)I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 587
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_9

    .line 591
    :cond_8
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get4(Lcom/android/stk/StkAppService;)I

    move-result v8

    if-ne v3, v8, :cond_2

    .line 592
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get1(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 586
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 596
    .end local v3    # "i":I
    :pswitch_6
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v7}, Lcom/android/stk/StkAppService;->-wrap11(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_0

    .line 599
    :pswitch_7
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Card/Icc Status change received"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-direct {p0, v8, v7}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 603
    :pswitch_8
    new-instance v0, Landroid/app/Activity;

    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    .line 604
    .local v0, "act":Landroid/app/Activity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "act":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 605
    .restart local v0    # "act":Landroid/app/Activity;
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set activity instance. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8, v0}, Lcom/android/stk/StkAppService$StkContext;->-set0(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;

    goto/16 :goto_0

    .line 609
    .end local v0    # "act":Landroid/app/Activity;
    :pswitch_9
    new-instance v2, Landroid/app/Activity;

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    .line 610
    .local v2, "dal":Landroid/app/Activity;
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set dialog instance. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "dal":Landroid/app/Activity;
    check-cast v2, Landroid/app/Activity;

    .line 612
    .restart local v2    # "dal":Landroid/app/Activity;
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8, v2}, Lcom/android/stk/StkAppService$StkContext;->-set2(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;

    goto/16 :goto_0

    .line 615
    .end local v2    # "dal":Landroid/app/Activity;
    :pswitch_a
    new-instance v4, Landroid/app/Activity;

    invoke-direct {v4}, Landroid/app/Activity;-><init>()V

    .line 616
    .local v4, "mainAct":Landroid/app/Activity;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "mainAct":Landroid/app/Activity;
    check-cast v4, Landroid/app/Activity;

    .line 617
    .restart local v4    # "mainAct":Landroid/app/Activity;
    invoke-static {}, Lcom/android/stk/StkAppService;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Set activity instance. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8, v4}, Lcom/android/stk/StkAppService$StkContext;->-set5(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;

    goto/16 :goto_0

    .line 621
    .end local v4    # "mainAct":Landroid/app/Activity;
    :pswitch_b
    const-string/jumbo v8, "Locale Changed"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    const/4 v6, 0x0

    .local v6, "slot":I
    :goto_2
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get4(Lcom/android/stk/StkAppService;)I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 623
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const/4 v10, 0x7

    invoke-static {v9, v10, v8, v6}, Lcom/android/stk/StkAppService;->-wrap6(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V

    .line 622
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 627
    .end local v6    # "slot":I
    :pswitch_c
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v9, v8}, Lcom/android/stk/StkAppService;->-wrap8(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 630
    :pswitch_d
    const/4 v6, 0x0

    .restart local v6    # "slot":I
    :goto_3
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get4(Lcom/android/stk/StkAppService;)I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 631
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8}, Lcom/android/stk/StkAppService;->-get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v8

    aget-object v8, v8, v6

    if-eqz v8, :cond_a

    .line 632
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, v6}, Lcom/android/stk/StkAppService;->-wrap12(Lcom/android/stk/StkAppService;I)V

    .line 630
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 637
    .end local v6    # "slot":I
    :pswitch_e
    const-string/jumbo v8, "Received HCI CONNECTIVITY"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const/16 v10, 0x13

    invoke-static {v9, v10, v8, v7}, Lcom/android/stk/StkAppService;->-wrap6(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V

    .line 641
    :pswitch_f
    const-string/jumbo v8, "Stop tone"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget-object v8, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v8, p1, v7}, Lcom/android/stk/StkAppService;->-wrap14(Lcom/android/stk/StkAppService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
