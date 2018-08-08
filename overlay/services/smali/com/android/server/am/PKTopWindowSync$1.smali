.class Lcom/android/server/am/PKTopWindowSync$1;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;


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
    .line 41
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostDataASync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    .line 44
    const-string/jumbo v5, "sync_white_packs"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45
    invoke-static {p1}, Lcom/android/server/am/PKTopWindowCommonData;->getWhitePacksJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "whitepacks":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 48
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "pk_whitepacks.dat"

    invoke-static {v5, v6, v4}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    :try_start_0
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 53
    .local v2, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_0

    .line 54
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/PKTopWindowSync$1$1;

    invoke-direct {v6, p0, v4}, Lcom/android/server/am/PKTopWindowSync$1$1;-><init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 54
    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    const-string/jumbo v5, "on"

    invoke-static {p1, v5}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "localWhitePacksSwith":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pk_whitepacksswitch.dat"

    sget-boolean v5, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "1"

    :goto_1
    invoke-static {v6, v7, v5}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    :try_start_1
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 82
    .restart local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_2

    .line 83
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/PKTopWindowSync$1$2;

    invoke-direct {v6, p0, v3}, Lcom/android/server/am/PKTopWindowSync$1$2;-><init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 83
    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .end local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :cond_2
    :goto_2
    const-string/jumbo v5, "freq"

    invoke-static {p1, v5}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "freq":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "m"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_5

    .line 106
    sget-boolean v5, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 107
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "pk_freq.dat"

    const-string/jumbo v7, "3m20t"

    invoke-static {v5, v6, v7}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 108
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "\u7cfb\u7edf\u6587\u4ef6\u88ab\u7be1\u6539\uff01"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    .end local v1    # "freq":Ljava/lang/String;
    .end local v3    # "localWhitePacksSwith":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "localWhitePacksSwith":Ljava/lang/String;
    :cond_3
    move-object v5, v3

    .line 77
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_2

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "freq":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 111
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "key_lastsuccess_time"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "key_successtimes"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    if-eqz v5, :cond_6

    .line 151
    sget-boolean v5, Lcom/android/server/am/PKTopWindowConfig;->SECRET_LOG:Z

    if-eqz v5, :cond_6

    .line 152
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/PKTopWindowSync$1$4;

    invoke-direct {v6, p0, v3, v1, v4}, Lcom/android/server/am/PKTopWindowSync$1$4;-><init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .end local v1    # "freq":Ljava/lang/String;
    .end local v3    # "localWhitePacksSwith":Ljava/lang/String;
    .end local v4    # "whitepacks":Ljava/lang/String;
    :cond_6
    return-void

    .line 118
    .restart local v1    # "freq":Ljava/lang/String;
    .restart local v3    # "localWhitePacksSwith":Ljava/lang/String;
    .restart local v4    # "whitepacks":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pk_freq.dat"

    sget-boolean v5, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "3m20t"

    :goto_4
    invoke-static {v6, v7, v5}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 122
    :try_start_2
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 123
    .restart local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_5

    .line 124
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/PKTopWindowSync$1$3;

    invoke-direct {v6, p0, v1}, Lcom/android/server/am/PKTopWindowSync$1$3;-><init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 124
    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 138
    .end local v2    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :catch_2
    move-exception v0

    .line 139
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_3

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    move-object v5, v1

    .line 118
    goto :goto_4

    .line 142
    :cond_9
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 143
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "key_lastsuccess_time"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    invoke-static {}, Lcom/android/server/am/PKTopWindowSync;->-get1()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "key_successtimes"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3
.end method
