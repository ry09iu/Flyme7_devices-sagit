.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final PM:Ljava/lang/String; = "Pm"

.field public static final STATUS_INVALID_APK:I = 0x3

.field public static final STATUS_REJECT:I = -0x1

.field public static final STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserId()I
    .locals 5

    .prologue
    .line 118
    :try_start_0
    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 119
    .local v1, "um":Landroid/os/IUserManager;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 120
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 124
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 127
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public static installVerify(Ljava/lang/String;)I
    .locals 12
    .param p0, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 49
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "apkFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    .local v2, "apkURI":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.miui.securitycenter"

    .line 54
    const-string/jumbo v9, "com.miui.permcenter.install.AdbInstallActivity"

    .line 53
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v8, "application/vnd.android.package-archive"

    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 57
    .local v0, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string/jumbo v8, "observer"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 58
    const/high16 v8, 0x18000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    :try_start_0
    invoke-static {v5}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v7

    .line 62
    .local v7, "res":I
    if-eqz v7, :cond_0

    .line 63
    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start PackageInstallerActivity failed ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return v11

    .line 66
    .end local v7    # "res":I
    :catch_0
    move-exception v4

    .line 67
    .local v4, "e1":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    const-string/jumbo v8, "Pm"

    const-string/jumbo v9, "start PackageInstallerActivity RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v11

    .line 73
    .end local v4    # "e1":Landroid/os/RemoteException;
    .restart local v7    # "res":I
    :cond_0
    monitor-enter v0

    .line 74
    :goto_0
    :try_start_1
    iget-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    .line 76
    const-wide/32 v8, 0xea60

    :try_start_2
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/pm/PmInjector$InstallObserver;->wait(J)V

    .line 77
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 81
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v11, :cond_2

    .line 82
    const/4 v8, 0x2

    monitor-exit v0

    return v8

    .line 84
    :cond_2
    :try_start_4
    iget-object v6, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 85
    .local v6, "msg":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 86
    const-string/jumbo v6, "Failure [INSTALL_CANCELED_BY_USER]"

    .line 88
    :cond_3
    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install msg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v8, "Invalid apk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 90
    const/4 v8, 0x3

    monitor-exit v0

    return v8

    :cond_4
    monitor-exit v0

    .line 92
    return v11

    .line 73
    .end local v6    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 30
    const-string/jumbo v0, ""

    .line 31
    .local v0, "msg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return-object v0

    .line 33
    :pswitch_1
    const-string/jumbo v0, "Install canceled by user"

    goto :goto_0

    .line 36
    :pswitch_2
    const-string/jumbo v0, "Sucess"

    goto :goto_0

    .line 39
    :pswitch_3
    const-string/jumbo v0, "Invalid apk"

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
