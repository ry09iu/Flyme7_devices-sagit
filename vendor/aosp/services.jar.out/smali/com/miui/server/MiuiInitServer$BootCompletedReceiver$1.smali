.class Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;->this$1:Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    const-wide/32 v2, 0x2bf20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installNewUpdatedSystemPreinstallApps()V

    .line 82
    return-void

    .line 89
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
