.class Lcom/miui/server/SplashScreenServiceDelegate$2;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 163
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private asyncSetSplashPackageCheckListener()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate$2$1;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "SplashScreenService connected!"

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {p2}, Lcom/miui/server/ISplashScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    .line 168
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-set2(Lcom/miui/server/SplashScreenServiceDelegate;J)J

    .line 169
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->-set0(Lcom/miui/server/SplashScreenServiceDelegate;I)I

    .line 170
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-get1(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-get4(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/server/ISplashScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-get0(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;->asyncSetSplashPackageCheckListener()V

    .line 165
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "linkToDeath exception"

    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v1, "SplashScreenService disconnected!"

    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->-set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    .line 181
    return-void
.end method
