.class final Lcom/android/internal/telephony/ServiceStateTrackerInjector$3;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTrackerInjector;->init(Lcom/android/internal/telephony/ServiceStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const-string/jumbo v2, "phone"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "slotId":I
    if-ne v1, v4, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "simState":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    const-string/jumbo v2, "NOT_READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 63
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-get2()[Z

    move-result-object v2

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTrackerInjector;->-get1()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    aput-object v3, v2, v1

    .line 54
    .end local v0    # "simState":Ljava/lang/String;
    .end local v1    # "slotId":I
    :cond_2
    return-void
.end method
