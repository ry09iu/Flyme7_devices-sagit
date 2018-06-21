.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 41
    const-string/jumbo v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    const-string/jumbo v5, "google.com"

    const-string/jumbo v6, "from"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MasterClear"

    const-string v6, "Ignoring master clear request -- not from trusted server."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v5, "shutdown"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "shutdown":Z
    const-string v5, "android.intent.extra.REASON"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "reason":Ljava/lang/String;
    const-string v5, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, "wipeExternalStorage":Z
    const-string v5, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "forceWipe":Z
    const-string v5, "MasterClear"

    const-string v6, "!!! FACTORY RESET !!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/MasterClearReceiver$1;

    const-string v5, "Reboot"

    invoke-direct {v3, p0, v5, p1, p2}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    .local v3, "thr":Ljava/lang/Thread;
    if-eqz v4, :cond_1

    new-instance v5, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private flymeRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/FlymeMasterClearRebootThread;

    invoke-direct {v0, p1, p2}, Lcom/android/server/FlymeMasterClearRebootThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .local v0, "flymeRebootThread":Lcom/android/server/FlymeMasterClearRebootThread;
    invoke-virtual {v0}, Lcom/android/server/FlymeMasterClearRebootThread;->start()V

    const/4 v1, 0x1

    return v1
.end method
