.class Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    :cond_0
    return-void
.end method
