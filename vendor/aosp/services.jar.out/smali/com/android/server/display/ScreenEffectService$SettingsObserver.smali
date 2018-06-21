.class Lcom/android/server/display/ScreenEffectService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 177
    invoke-static {p1}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap3(Lcom/android/server/display/ScreenEffectService;)V

    .line 183
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get2()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get12(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get6()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get12(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ScreenEffectService;->-wrap1(Lcom/android/server/display/ScreenEffectService;Z)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get3()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get5()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 186
    if-eqz v0, :cond_4

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap2(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_0

    .line 189
    :cond_4
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get4()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 190
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get1()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_1

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap0(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_0
.end method
