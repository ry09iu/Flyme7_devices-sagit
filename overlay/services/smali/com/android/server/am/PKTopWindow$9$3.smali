.class Lcom/android/server/am/PKTopWindow$9$3;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$9;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$9;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$9$3;->this$1:Lcom/android/server/am/PKTopWindow$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 874
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 876
    .local v4, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 878
    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 884
    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 886
    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 888
    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 890
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 892
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, "fileName":Ljava/lang/String;
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 897
    iget-object v5, p0, Lcom/android/server/am/PKTopWindow$9$3;->this$1:Lcom/android/server/am/PKTopWindow$9;

    iget-object v5, v5, Lcom/android/server/am/PKTopWindow$9;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindow;->-get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "download"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 899
    .local v2, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 900
    .local v0, "downloadId":J
    const-string/jumbo v5, "PKTopWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method
