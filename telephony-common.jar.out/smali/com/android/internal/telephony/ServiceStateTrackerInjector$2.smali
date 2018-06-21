.class final Lcom/android/internal/telephony/ServiceStateTrackerInjector$2;
.super Lcom/android/internal/telephony/RILInjector$ScreenStateListener;
.source "ServiceStateTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTrackerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/RILInjector$ScreenStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenStateChange(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    const/4 v2, 0x2

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-get0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-get0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-get0()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
