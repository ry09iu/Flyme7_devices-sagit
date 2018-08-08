.class Lcom/android/server/am/PKTopWindowSync$3;
.super Landroid/content/BroadcastReceiver;
.source "PKTopWindowSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowSync;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowSync;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowSync;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    sget-object v2, Lcom/android/server/am/PKTopWindowConfig;->RELEASE_URL:Ljava/lang/String;

    .line 251
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/PKTopWindow;->mBackupURLEnabled:Z

    if-eqz v3, :cond_1

    .line 252
    const-string/jumbo v2, "http://www.fiui.org/"

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v3

    const-string/jumbo v4, "http://www.fiui.org/yuxi/md5.md"

    const-string/jumbo v5, "backup_server"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 271
    :cond_3
    sget-object v3, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_8

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v1/md5?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "md5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "00000000000000000000000000000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sync_pk_icon"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 257
    .restart local v2    # "url":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v1/whitepacks"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    const-string/jumbo v6, "sync_white_packs"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/PKTopWindowLocalData;->postDataASync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pk_fulljson.dat"

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 261
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pk_backupurl_enabled.dat"

    const-string/jumbo v5, "http://www.fiui.org/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 275
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pk_iconsmd5.dat"

    invoke-static {v3, v4}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "localLogoMd5":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 277
    const-string/jumbo v1, "00000000000000000000000000000000"

    .line 279
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync$3;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v3}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v1/md5?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "md5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sync_pk_icon"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
