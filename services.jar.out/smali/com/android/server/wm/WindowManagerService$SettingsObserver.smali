.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAnimationDurationScaleUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mTransitionAnimationScaleUri:Landroid/net/Uri;

.field private final mWindowAnimationScaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 697
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 698
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 689
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 688
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 691
    const-string/jumbo v1, "window_animation_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 690
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    .line 693
    const-string/jumbo v1, "transition_animation_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 692
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    .line 695
    const-string/jumbo v1, "animator_duration_scale"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 694
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    .line 699
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 704
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 706
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 697
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 712
    if-nez p2, :cond_0

    .line 713
    return-void

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap10(Lcom/android/server/wm/WindowManagerService;)V

    .line 711
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    const/4 v1, 0x0

    .line 731
    .local v1, "mode":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 723
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "mode":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_1

    .line 725
    .end local v1    # "mode":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    const/4 v1, 0x2

    .restart local v1    # "mode":I
    goto :goto_1

    .line 729
    .end local v1    # "mode":I
    :cond_4
    return-void
.end method
