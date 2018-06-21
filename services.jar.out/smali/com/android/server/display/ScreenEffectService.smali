.class public Lcom/android/server/display/ScreenEffectService;
.super Lcom/android/server/SystemService;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ScreenEffectService$LocalService;,
        Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;,
        Lcom/android/server/display/ScreenEffectService$SettingsObserver;,
        Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_MONOCHROME_MODE:I = 0x3

.field private static final MSG_UPDATE_PAPER_MODE:I = 0x1

.field private static final MSG_UPDATE_SCREEN_OPTIMIZE:I = 0x2

.field private static final MSG_UPDATE_SETTINGS:I = 0x0

.field private static final SUPPORT_MONOCHROME_MODE:Z

.field private static final TAG:Ljava/lang/String; = "ScreenEffectService"

.field private static final URI_MONOCHROME_MODE_TYPE:Landroid/net/Uri;

.field private static final URI_MONOCHROME_MODE_WHITE_LIST:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

.field private static final URI_SCREEN_COLOR_LEVEL:Landroid/net/Uri;

.field private static final URI_SCREEN_MONOCHROME_MODE_ENABLED:Landroid/net/Uri;

.field private static final URI_SCREEN_OPTIMIZE_MODE:Landroid/net/Uri;

.field private static final URI_SCREEN_PAPER_MODE_LEVEL:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

.field private mDisplayState:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsScreenEyeCare:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonochromeModeEnabled:Z

.field private mMonochromeModeType:I

.field private mMonochromeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPaperModeEnabled:Z

.field private mPaperModeLevel:I

.field private mPaperModeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenColorLevel:I

.field private mScreenOptimizeMode:I

.field private mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

.field private mTopAppPkg:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    return v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_MONOCHROME_MODE_TYPE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/ScreenEffectService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/ScreenEffectService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/display/ScreenEffectService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_COLOR_LEVEL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_MONOCHROME_MODE_ENABLED:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_OPTIMIZE_MODE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get6()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_PAPER_MODE_LEVEL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/ScreenEffectService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/ScreenEffectService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/ScreenEffectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/ScreenEffectService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService;->updatePaperMode(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/ScreenEffectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/ScreenEffectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 45
    const-string/jumbo v1, "screen_paper_mode_white_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    .line 46
    const-string/jumbo v1, "screen_paper_mode_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_PAPER_MODE_LEVEL:Landroid/net/Uri;

    .line 47
    const-string/jumbo v1, "screen_optimize_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_OPTIMIZE_MODE:Landroid/net/Uri;

    .line 48
    const-string/jumbo v1, "screen_color_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_COLOR_LEVEL:Landroid/net/Uri;

    .line 49
    const-string/jumbo v1, "screen_monochrome_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_MONOCHROME_MODE_ENABLED:Landroid/net/Uri;

    .line 50
    const-string/jumbo v1, "screen_monochrome_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_MONOCHROME_MODE_TYPE:Landroid/net/Uri;

    .line 51
    const-string/jumbo v1, "screen_monochrome_mode_white_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/display/ScreenEffectService;->URI_MONOCHROME_MODE_WHITE_LIST:Landroid/net/Uri;

    .line 57
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ScreenEffectThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;-><init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    return-void
.end method

.method private checkSettingsData()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    const-string/jumbo v2, "screen_paper_mode_enabled"

    .line 132
    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 134
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_paper_mode_level"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string/jumbo v1, "persist.sys.eyecare_cache"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "paperModeLevel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "screen_paper_mode_level"

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 140
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 149
    .end local v0    # "paperModeLevel":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_level"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 150
    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "screen_color_level"

    .line 153
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->getInstance()Lcom/android/server/display/DisplayFeatureManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v3

    .line 151
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 157
    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->getInstance()Lcom/android/server/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayFeatureManager;->isAdEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "screen_optimize_mode"

    .line 159
    invoke-static {v1, v2, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 129
    :cond_3
    :goto_1
    return-void

    .line 144
    .restart local v0    # "paperModeLevel":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "screen_paper_mode_level"

    .line 146
    sget v3, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    .line 144
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 162
    .end local v0    # "paperModeLevel":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->getInstance()Lcom/android/server/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v1

    if-nez v1, :cond_6

    .line 163
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "screen_optimize_mode"

    .line 163
    invoke-static {v1, v2, v7, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "screen_optimize_mode"

    .line 169
    const/4 v3, 0x3

    .line 167
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private setScreenEyeCare(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/server/display/ScreenEffectService;->mIsScreenEyeCare:Z

    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 270
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    goto :goto_0
.end method

.method public static startScreenEffectService()V
    .locals 2

    .prologue
    .line 340
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    if-eqz v1, :cond_0

    .line 341
    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 342
    .local v0, "systemServiceManager":Lcom/android/server/SystemServiceManager;
    const-class v1, Lcom/android/server/display/ScreenEffectService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 339
    :cond_0
    return-void
.end method

.method private updateMonochromeMode()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x1

    .line 253
    iget-boolean v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    if-nez v4, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    invoke-virtual {v2, v6, v3}, Lcom/android/server/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 252
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    if-ne v4, v2, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    invoke-virtual {v3, v6, v2}, Lcom/android/server/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 260
    .local v1, "monochromeModepkg":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 261
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v4, v6, v2}, Lcom/android/server/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    .local v0, "isPkgMonochromeMode":Z
    goto :goto_1

    .end local v0    # "isPkgMonochromeMode":Z
    :cond_3
    move v2, v3

    .line 261
    goto :goto_2
.end method

.method private updatePaperMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService;->setScreenEyeCare(Z)V

    .line 266
    return-void
.end method

.method public static updateScreenEffect(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 347
    const-class v1, Lcom/android/server/display/ScreenEffectManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/ScreenEffectManager;

    .line 348
    .local v0, "screenEffectManager":Lcom/android/server/display/ScreenEffectManager;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectManager;->updateScreenEffect(I)V

    .line 346
    :cond_0
    return-void
.end method

.method private updateScreenOptimize()V
    .locals 4

    .prologue
    .line 280
    iget-boolean v2, p0, Lcom/android/server/display/ScreenEffectService;->mIsScreenEyeCare:Z

    if-eqz v2, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    .line 284
    .local v1, "screenColor":I
    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 285
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 286
    const/4 v1, 0x2

    .line 289
    :cond_1
    const/4 v0, 0x0

    .line 290
    .local v0, "mode":I
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 291
    const/4 v0, 0x1

    .line 295
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 279
    return-void

    .line 292
    :cond_3
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 293
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 222
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    const-string/jumbo v3, "screen_paper_mode_enabled"

    .line 222
    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    .line 226
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 227
    const-string/jumbo v3, "screen_paper_mode_white_list"

    .line 226
    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeWhiteList:Ljava/util/HashMap;

    .line 228
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    const-string/jumbo v3, "screen_paper_mode_level"

    .line 230
    sget v4, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    .line 228
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    .line 231
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const-string/jumbo v3, "screen_optimize_mode"

    .line 233
    sget v4, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    .line 231
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    .line 234
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    const-string/jumbo v3, "screen_color_level"

    .line 234
    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    .line 238
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    const-string/jumbo v3, "screen_monochrome_mode_enabled"

    .line 239
    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    .line 243
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "screen_monochrome_mode"

    .line 243
    invoke-static {v0, v1, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    .line 246
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 247
    const-string/jumbo v1, "screen_monochrome_mode_white_list"

    .line 246
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    .line 221
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 222
    goto :goto_0

    :cond_2
    move v1, v2

    .line 239
    goto :goto_1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 96
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 97
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->getInstance()Lcom/android/server/display/DisplayFeatureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lcom/android/server/display/DisplayFeatureManager;

    .line 98
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->checkSettingsData()V

    .line 99
    new-instance v0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/ScreenEffectService$SettingsObserver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 100
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 101
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 100
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_PAPER_MODE_WHITE_LIST:Landroid/net/Uri;

    .line 103
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 102
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_PAPER_MODE_LEVEL:Landroid/net/Uri;

    .line 105
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 104
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_OPTIMIZE_MODE:Landroid/net/Uri;

    .line 107
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 106
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_COLOR_LEVEL:Landroid/net/Uri;

    .line 109
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 108
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_SCREEN_MONOCHROME_MODE_ENABLED:Landroid/net/Uri;

    .line 118
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 117
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_MONOCHROME_MODE_TYPE:Landroid/net/Uri;

    .line 120
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 119
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 121
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->URI_MONOCHROME_MODE_WHITE_LIST:Landroid/net/Uri;

    .line 122
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 121
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 91
    const-class v0, Lcom/android/server/display/ScreenEffectManager;

    new-instance v1, Lcom/android/server/display/ScreenEffectService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/ScreenEffectService$LocalService;-><init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/ScreenEffectService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
