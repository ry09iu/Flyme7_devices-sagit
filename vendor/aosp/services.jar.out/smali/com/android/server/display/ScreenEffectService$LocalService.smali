.class Lcom/android/server/display/ScreenEffectService$LocalService;
.super Lcom/android/server/display/ScreenEffectManager;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService$LocalService;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    return-void
.end method


# virtual methods
.method public updateLocalScreenEffect(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get13(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/ScreenEffectService;->-set1(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get10(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get11(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public updateScreenEffect(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 328
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get7(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    .line 329
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1, p1}, Lcom/android/server/display/ScreenEffectService;->-set0(Lcom/android/server/display/ScreenEffectService;I)I

    .line 330
    if-ne v0, v3, :cond_1

    if-eq p1, v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get9(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->-set1(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    :cond_1
    return-void
.end method
