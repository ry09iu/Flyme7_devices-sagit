.class public Lcom/android/server/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_ADAPT:I = 0x0

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_ENHANCE:I = 0x1

.field public static final SCREEN_EYECARE:I = 0x3

.field public static final SCREEN_MONOCHROME:I = 0x4

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field public static final SCREEN_STANDARD:I = 0x2

.field private static final SUPPORT_SET_FEATURE:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/server/display/DisplayFeatureManager;


# instance fields
.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mLock:Ljava/lang/Object;

.field private mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayFeatureManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayFeatureManager;Lcom/android/server/display/DisplayFeatureServiceProxy;)Lcom/android/server/display/DisplayFeatureServiceProxy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    const-string/jumbo v1, "DisplayFeatureManager"

    sput-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "support_screen_effect"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    .line 186
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lcom/android/server/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    .line 25
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManager;->initProxyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 53
    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDefaultScreenSaturation()I
    .locals 3

    .prologue
    .line 189
    const/16 v0, 0xa

    .line 190
    .local v0, "defaultSaturationMode":I
    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/16 v0, 0xb

    .line 193
    :cond_0
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/server/display/DisplayFeatureManager;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/display/DisplayFeatureManager;->sInstance:Lcom/android/server/display/DisplayFeatureManager;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/android/server/display/DisplayFeatureManager;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/android/server/display/DisplayFeatureManager;->sInstance:Lcom/android/server/display/DisplayFeatureManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/server/display/DisplayFeatureManager;

    invoke-direct {v0}, Lcom/android/server/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayFeatureManager;->sInstance:Lcom/android/server/display/DisplayFeatureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 50
    :cond_1
    sget-object v0, Lcom/android/server/display/DisplayFeatureManager;->sInstance:Lcom/android/server/display/DisplayFeatureManager;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initProxyLocked()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    const-string/jumbo v2, "DisplayFeatureControl"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 112
    new-instance v2, Lcom/android/server/display/DisplayFeatureServiceProxy;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private initServiceDeathRecipient()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/android/server/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayFeatureManager$1;-><init>(Lcom/android/server/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 120
    return-void
.end method


# virtual methods
.method public getColorPrefer()I
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .locals 2

    .prologue
    .line 230
    const-string/jumbo v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .locals 2

    .prologue
    .line 252
    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "persist.sys.display_ce"

    sget v1, Lcom/android/server/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAdEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set assertive display error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setColorPrefer(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set color prefer error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEyeCare(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setEyeCare(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set eye care error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenCabc(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen cabc error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenEffect(II)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setScreenEffect mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-boolean v1, Lcom/android/server/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    if-eqz v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManager;->initProxyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v1, v3, p1, p2, v4}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setFeature(IIII)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 61
    :goto_1
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 74
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 76
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 79
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_SATURATION:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 81
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 87
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 94
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 100
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayFeatureManager;->setEyeCare(I)V

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setScreenGamut(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen gamut error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenSaturation(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManager;->mProxy:Lcom/android/server/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen ce error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
