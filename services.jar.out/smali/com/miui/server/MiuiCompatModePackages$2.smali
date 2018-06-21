.class Lcom/miui/server/MiuiCompatModePackages$2;
.super Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;-><init>(Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;)V

    return-void
.end method


# virtual methods
.method protected onFirstLaunch(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x68

    .line 424
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->-get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 425
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v0}, Lcom/miui/server/MiuiCompatModePackages;->-get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$2;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    return-void
.end method
