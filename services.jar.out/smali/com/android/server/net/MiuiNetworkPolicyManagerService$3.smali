.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x61a8

    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 569
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 618
    :goto_0
    return v4

    .line 571
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v5, v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    goto :goto_0

    .line 577
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 578
    .local v2, "uid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 579
    .local v0, "isActive":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 583
    :cond_0
    if-nez v0, :cond_1

    .line 584
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 590
    :cond_1
    :goto_2
    return v3

    .end local v0    # "isActive":Z
    :cond_2
    move v0, v4

    .line 578
    goto :goto_1

    .line 580
    .restart local v0    # "isActive":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    goto :goto_2

    .line 592
    .end local v0    # "isActive":Z
    .end local v2    # "uid":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I

    .line 593
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v1

    .line 594
    .local v1, "networkPriority":I
    const-string/jumbo v4, "MiuiNetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkPriorityMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 595
    const-string/jumbo v6, " mNetworkPriorityMode ="

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 595
    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v6

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 595
    const-string/jumbo v6, " mWifiConnected="

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 595
    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v6

    .line 594
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 597
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    .line 599
    :cond_4
    return v3

    .line 601
    .end local v1    # "networkPriority":I
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 602
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v5, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 603
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 605
    :cond_5
    return v3

    .line 607
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 608
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    .line 609
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    :cond_6
    return v3

    .line 613
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    .line 614
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0xbb8

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
