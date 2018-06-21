.class public Lcom/android/server/policy/MiuiScreenOnProximityLock;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiScreenOnProximityLock$1;,
        Lcom/android/server/policy/MiuiScreenOnProximityLock$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_PREPARE_VIEW:I = 0x1

.field private static final EVENT_RELEASE:I = 0x0

.field private static final EVENT_RELEASE_VIEW:I = 0x3

.field private static final EVENT_SHOW_VIEW:I = 0x2

.field private static final FIRST_CHANGE_TIMEOUT:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiScreenOnProximityLock"


# instance fields
.field private mAquiredTime:J

.field private mContext:Landroid/content/Context;

.field protected mFrontFingerprintSensor:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasNavigationBar:Z

.field protected mHintContainer:Landroid/view/ViewGroup;

.field protected mHintView:Landroid/view/View;

.field protected mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private final mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardDelegate"    # Lcom/android/server/policy/MiuiKeyguardServiceDelegate;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 56
    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 285
    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    .line 284
    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 68
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 71
    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    .line 98
    const-string/jumbo v0, "front_fingerprint_sensor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    .line 99
    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->hasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    .line 67
    return-void
.end method

.method private hasNavigationBar()Z
    .locals 3

    .prologue
    .line 275
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 277
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    return v2

    .line 278
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private prepareHintWindow()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 171
    new-instance v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v5, 0x103006b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 172
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 183
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 186
    const/16 v3, 0x7d9

    .line 187
    const v4, 0x1021100

    .line 191
    const/4 v5, -0x3

    move v2, v1

    .line 183
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 193
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 194
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 195
    const-string/jumbo v1, "ScreenOnProximitySensorGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 197
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 170
    return-void
.end method

.method private releaseHintWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 203
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 204
    .local v1, "container":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 211
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 239
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3, v9}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    .line 242
    :cond_2
    iput-object v8, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 202
    return-void

    .line 214
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 215
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 235
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 236
    iput-object v8, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    goto :goto_0
.end method

.method private shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "ScreenOnFully"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 141
    :cond_0
    return v1

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 163
    return v2

    .line 147
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 148
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    .line 157
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_1
    return v1

    .line 159
    :sswitch_2
    iget-boolean v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    if-eqz v3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method private showHint()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v8, 0x1f4

    .line 246
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 247
    :cond_0
    return-void

    .line 250
    :cond_1
    const-string/jumbo v4, "MiuiScreenOnProximityLock"

    const-string/jumbo v5, "show hint..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const v3, 0x11030017

    .line 252
    .local v3, "resource":I
    iget-boolean v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v4, :cond_2

    .line 253
    const v3, 0x11030018

    .line 256
    :cond_2
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v6, 0x103006b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 258
    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 255
    invoke-static {v4, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 259
    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    const/4 v7, 0x0

    aput v10, v6, v7

    const/4 v7, 0x1

    aput v11, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 260
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 263
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 264
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 266
    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 267
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 269
    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v5, 0x110b0047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, "animationView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    return-void
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "aquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    new-instance v0, Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 106
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceShow()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    return-void
.end method

.method public declared-synchronized isHeld()Z
    .locals 4

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return v2

    .line 128
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldBeBlocked(IZLandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "ScreenOnFully"    # Z
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 132
    invoke-direct {p0, p3, p2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
