.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;
    .param p2, "val$onlyCore"    # Z

    .prologue
    .line 517
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 520
    const/16 v12, 0xa

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 521
    sget-boolean v12, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v12, :cond_0

    iget-boolean v12, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    if-eqz v12, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 523
    .local v0, "begin":J
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 524
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 526
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string/jumbo v12, "android"

    const/16 v13, 0x40

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 531
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 533
    .local v10, "platformSignature":[Landroid/content/pm/Signature;
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap2(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 535
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12, v10}, Lcom/miui/server/SecurityManagerService;->-wrap6(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V

    .line 538
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v2, "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "com.lbe.security.miui"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string/jumbo v12, "com.android.updater"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    const-string/jumbo v12, "com.miui.securitycenter"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    const-string/jumbo v12, "com.xiaomi.finddevice"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    const-string/jumbo v12, "com.miui.home"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const-string/jumbo v12, "com.miui.guardprovider"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string/jumbo v12, "com.miui.gallery"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_3

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v12, :cond_4

    .line 553
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 554
    .local v8, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12, v11, v8}, Lcom/miui/server/SecurityManagerService;->-wrap4(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_2

    .line 527
    .end local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "pkg$iterator":Ljava/util/Iterator;
    .end local v10    # "platformSignature":[Landroid/content/pm/Signature;
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 528
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 529
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "System error: cannot find android package."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 547
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "platformSignature":[Landroid/content/pm/Signature;
    :cond_4
    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v12, :cond_3

    .line 548
    const-string/jumbo v12, "com.miui.player"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const-string/jumbo v12, "com.android.browser"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    const-string/jumbo v12, "com.xiaomi.market"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    .restart local v9    # "pkg$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.android.updater"

    const/4 v14, 0x1

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 561
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.miui.securitycenter"

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 564
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.xiaomi.finddevice"

    const/4 v14, 0x1

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    .line 566
    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_6

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v12, :cond_8

    .line 572
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap1(Lcom/miui/server/SecurityManagerService;)Z

    move-result v6

    .line 573
    .local v6, "oldmanMode":Z
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap2(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v6, :cond_9

    .line 578
    :cond_7
    const-string/jumbo v12, "SecurityManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nativeIsReleased not set or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "end":J
    goto/16 :goto_0

    .line 567
    .end local v4    # "end":J
    .end local v6    # "oldmanMode":Z
    :cond_8
    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v12, :cond_6

    .line 569
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.xiaomi.market"

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    goto :goto_3

    .line 574
    .restart local v6    # "oldmanMode":Z
    :cond_9
    const-string/jumbo v12, "SecurityManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nativeIsReleased set and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v13, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap0(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_5
    invoke-static {v13, v12}, Lcom/miui/server/SecurityManagerService;->-set0(Lcom/miui/server/SecurityManagerService;I)I

    goto :goto_4

    .line 576
    :cond_a
    const/4 v12, 0x0

    goto :goto_5
.end method
