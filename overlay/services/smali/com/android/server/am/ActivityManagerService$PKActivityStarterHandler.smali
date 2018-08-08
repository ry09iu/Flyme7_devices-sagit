.class final Lcom/android/server/am/ActivityManagerService$PKActivityStarterHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PKActivityStarterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 22607
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PKActivityStarterHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 22608
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 22607
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22614
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 22613
    :goto_0
    return-void

    .line 22616
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v7, v1, v2

    .line 22617
    .local v7, "packageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, v3

    .line 22618
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PKActivityStarterHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PKActivityStarterHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$PKActivityStarterHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v4, 0x1388

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->showPKTopWindow(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;JLandroid/content/ComponentName;)V

    .line 22619
    const-string/jumbo v1, "ActivityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LAUNCHER_ACTIVITY_TO_FRONT, packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22623
    .end local v0    # "className":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v7, v1, v2

    .line 22624
    .restart local v7    # "packageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, v3

    .line 22625
    .restart local v0    # "className":Ljava/lang/String;
    const-string/jumbo v1, "ActivityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOT_LAUNCHER_ACTIVITY_TO_FRONT, packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22641
    .end local v0    # "className":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v7, v1, v2

    .line 22642
    .restart local v7    # "packageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, v3

    .line 22643
    .restart local v0    # "className":Ljava/lang/String;
    const-string/jumbo v1, "ActivityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WITHOUT_LAUNCHER_ACTIVITY_TO_FRONT, packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 22614
    :pswitch_data_0
    .packed-switch 0x7ffffffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
