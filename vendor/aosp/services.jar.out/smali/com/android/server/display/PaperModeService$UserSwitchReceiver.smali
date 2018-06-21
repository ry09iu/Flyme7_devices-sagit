.class Lcom/android/server/display/PaperModeService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$UserSwitchReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/PaperModeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap1(Lcom/android/server/display/PaperModeService;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap0(Lcom/android/server/display/PaperModeService;)V

    .line 131
    return-void
.end method
