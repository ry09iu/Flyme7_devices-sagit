.class Lmiui/app/ToggleManager$5;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1122
    iput-object p1, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1125
    iget-object v0, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-get3(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get0(Lmiui/app/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->onMobileDataChange(Landroid/content/Context;)V

    .line 1126
    iget-object v0, p0, Lmiui/app/ToggleManager$5;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-wrap7(Lmiui/app/ToggleManager;)V

    .line 1124
    return-void
.end method
