.class Lcom/android/server/display/PaperModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/PaperModeService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    .line 106
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap1(Lcom/android/server/display/PaperModeService;)V

    .line 112
    invoke-static {}, Lcom/android/server/display/PaperModeService;->-get0()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$SettingsObserver;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-static {v0}, Lcom/android/server/display/PaperModeService;->-wrap0(Lcom/android/server/display/PaperModeService;)V

    .line 110
    :cond_0
    return-void
.end method
