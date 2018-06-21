.class final Lcom/android/internal/telephony/ServiceStateTrackerInjector$1;
.super Landroid/os/Handler;
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
    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-wrap0()V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-wrap1()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
