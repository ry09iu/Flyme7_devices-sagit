.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 80
    if-nez p2, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Boot completed, delay to bind SplashScreenService"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 87
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap2(Lcom/miui/server/SplashScreenServiceDelegate;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Debug On"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 90
    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-set3(Z)Z

    goto :goto_0

    .line 91
    :cond_3
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "Debug Off"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 93
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-set3(Z)Z

    goto :goto_0
.end method
