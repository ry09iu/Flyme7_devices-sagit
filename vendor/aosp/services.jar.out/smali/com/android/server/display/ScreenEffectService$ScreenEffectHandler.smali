.class Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;
.super Landroid/os/Handler;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap3(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get12(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ScreenEffectService;->-wrap1(Lcom/android/server/display/ScreenEffectService;Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap2(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap0(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
