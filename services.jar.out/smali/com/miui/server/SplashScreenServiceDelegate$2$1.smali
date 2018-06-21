.class Lcom/miui/server/SplashScreenServiceDelegate$2$1;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SplashScreenServiceDelegate$2;->asyncSetSplashPackageCheckListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/server/SplashScreenServiceDelegate$2;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-get4(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;

    move-result-object v1

    .line 191
    .local v1, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v3, "Set splash package check listener"

    invoke-static {v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-get3(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/server/ISplashScreenService;->setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v3, "asyncSetSplashPackageCheckListener exception"

    invoke-static {v2, v3, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
