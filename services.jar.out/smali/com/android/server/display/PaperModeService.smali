.class public Lcom/android/server/display/PaperModeService;
.super Lcom/android/server/SystemService;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PaperModeService$LocalService;,
        Lcom/android/server/display/PaperModeService$ScreenOnReceiver;,
        Lcom/android/server/display/PaperModeService$SettingsObserver;,
        Lcom/android/server/display/PaperModeService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaperModeService"

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaperModeEnabled:Z

.field private mPaperModePkg:Ljava/lang/String;

.field private mPaperModeTimeEnabled:Z

.field private mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/PaperModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/PaperModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 37
    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private initColorService(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    const-string/jumbo v1, "is_xiaomi"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string/jumbo v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.qti.service.colorservice"

    const-string/jumbo v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    new-instance v1, Lcom/android/server/display/PaperModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/PaperModeService$1;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 95
    const/4 v2, 0x2

    .line 94
    if-ne v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "screen_paper_mode_enabled"

    const/4 v3, -0x2

    .line 96
    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 98
    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    :cond_1
    return v5
.end method

.method private updatePaperMode()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    .line 154
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    const-string/jumbo v3, "screen_paper_mode_enabled"

    .line 119
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    const-string/jumbo v3, "screen_paper_mode_time_enabled"

    .line 123
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    .line 118
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 61
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/PaperModeService$SettingsObserver;-><init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    .line 63
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 64
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    .line 63
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    .line 66
    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    .line 65
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$UserSwitchReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$ScreenOnReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    .line 71
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    .line 60
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 56
    const-class v0, Lcom/android/server/display/ScreenEffectManager;

    new-instance v1, Lcom/android/server/display/PaperModeService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/PaperModeService$LocalService;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/PaperModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    return-void
.end method
