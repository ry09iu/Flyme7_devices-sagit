.class Lcom/miui/server/SplashScreenServiceDelegate$4;
.super Lcom/miui/server/ISplashPackageCheckListener$Stub;
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
    .line 243
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 4
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap0(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap4(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V

    .line 263
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "updateSplashPackageCheckInfo exception"

    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "splashPackageCheckInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v4, "updateSplashPackageCheckInfoList"

    invoke-static {v3, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->-get2(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 250
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SplashPackageCheckInfo;

    .line 255
    .local v1, "info":Lcom/miui/server/SplashPackageCheckInfo;
    invoke-virtual {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$4;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v1    # "info":Lcom/miui/server/SplashPackageCheckInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v4, "updateSplashPackageCheckInfoList exception"

    invoke-static {v3, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->-wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method
