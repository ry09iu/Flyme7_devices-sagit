.class Lcom/android/server/am/PKTopWindowSync$2;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;


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
    .line 165
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataASync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v6, "backup_server"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    const-string/jumbo v6, "e4fe8eb68682dfc830b8a877af1b259c"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pk_backupserver.dat"

    const-string/jumbo v8, "e4fe8eb68682dfc830b8a877af1b259c"

    invoke-static {v6, v7, v8}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    const-string/jumbo v6, "PKTopWindowSync"

    const-string/jumbo v7, "YUXI write suc."

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    const-string/jumbo v6, "sync_pk_icon"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    const-string/jumbo v6, "PKTopWindowSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkicons result: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    const-string/jumbo v6, "url"

    invoke-static {p1, v6}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "pkIconUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    const-string/jumbo v7, "md5"

    invoke-static {p1, v7}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowSync;->-set0(Lcom/android/server/am/PKTopWindowSync;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    sget-object v6, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    sget-object v6, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    const-string/jumbo v8, "download_pk_icon"

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .end local v5    # "pkIconUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v6, "download_pk_icon"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    sget-object v6, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    sget-object v6, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "pkIconMD5":Ljava/lang/String;
    const-string/jumbo v6, "PKTopWindowSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "local downloaded zip pkIconMD5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", server pkIconMD5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindowSync;->-get4(Lcom/android/server/am/PKTopWindowSync;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get4(Lcom/android/server/am/PKTopWindowSync;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    invoke-static {}, Lcom/android/server/am/PKTopWindowFile;->createPkLogoDir()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    :try_start_0
    sget-object v6, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_DIR:Ljava/lang/String;

    sget-object v7, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_DIR:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowFile$FileUtils;->unzipFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    .line 208
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pk_iconsmd5.dat"

    invoke-static {v6, v7, v4}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_2

    .line 212
    :try_start_1
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 213
    .local v3, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v3, :cond_2

    .line 214
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/PKTopWindowSync$2$1;

    invoke-direct {v7, p0, v4}, Lcom/android/server/am/PKTopWindowSync$2$1;-><init>(Lcom/android/server/am/PKTopWindowSync$2;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 214
    invoke-interface {v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "iPackageManager":Landroid/content/pm/IPackageManager;
    .end local v4    # "pkIconMD5":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 193
    .restart local v5    # "pkIconUrl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/PKTopWindowSync$2;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowSync;->-get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_ZIP_FILE:Ljava/io/File;

    const-string/jumbo v8, "download_pk_icon"

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/am/PKTopWindowLocalData;->getDataASync(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v5    # "pkIconUrl":Ljava/lang/String;
    .restart local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v4    # "pkIconMD5":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_1
.end method
