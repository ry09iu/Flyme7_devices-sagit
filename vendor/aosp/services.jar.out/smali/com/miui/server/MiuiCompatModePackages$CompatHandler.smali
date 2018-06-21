.class final Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v1}, Lcom/miui/server/MiuiCompatModePackages;->saveCompatModes()V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap7(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 96
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap8(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap3(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap5(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1, v0}, Lcom/miui/server/MiuiCompatModePackages;->-wrap2(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap1(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
