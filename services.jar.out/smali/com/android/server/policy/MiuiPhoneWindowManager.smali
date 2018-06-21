.class public Lcom/android/server/policy/MiuiPhoneWindowManager;
.super Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# static fields
.field private static final ACTION_NOT_PASS_TO_USER:I = 0x0

.field private static final ACTION_PASS_TO_USER:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_DEFAULT:I = -0x1

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_NONE:I = 0x0

.field protected static final NAV_BAR_BOTTOM:I = 0x0

.field protected static final NAV_BAR_LEFT:I = 0x2

.field protected static final NAV_BAR_RIGHT:I = 0x1


# instance fields
.field private mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

.field private mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mKeyguardAdded:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MiuiPhoneWindowManager;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    .line 393
    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    .line 44
    return-void
.end method

.method private bringUpActionChooseDlg()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    new-instance v0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    .line 413
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    const v3, 0x110700c4

    .line 413
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 415
    const v3, 0x110700c5

    .line 413
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 416
    const v3, 0x110700c6

    .line 413
    invoke-virtual {v2, v3, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 417
    const v3, 0x110700c7

    .line 413
    invoke-virtual {v2, v3, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 418
    const/4 v3, 0x0

    .line 413
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    .line 419
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 420
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 421
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 422
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method private drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 557
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 561
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 562
    const/high16 v3, 0x20000

    .line 561
    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "transWin"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "vis":I
    if-eqz p1, :cond_0

    .line 547
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v0, v1, 0x0

    .line 548
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 549
    or-int/lit8 v0, v0, 0x1

    .line 552
    :cond_0
    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v0

    .line 553
    return v0
.end method

.method private hideNavBar(II)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "sys"    # I

    .prologue
    const/4 v1, 0x0

    .line 442
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 443
    and-int/lit16 v0, p2, 0x1800

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_1
    return v1
.end method

.method private hideStatusBar(II)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "sys"    # I

    .prologue
    const/4 v1, 0x0

    .line 435
    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_1
    return v1
.end method

.method private injectEvent(Landroid/view/KeyEvent;II)V
    .locals 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "injectKeyCode"    # I
    .param p3, "deviceId"    # I

    .prologue
    .line 426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 427
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 428
    .local v3, "homeDown":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p2

    move/from16 v16, p3

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 429
    .local v7, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 430
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 431
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 425
    return-void
.end method

.method private processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "miui.policy:FINGERPRINT_DPAD_CENTER"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 320
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v1, :cond_0

    .line 321
    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    .line 322
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    if-eqz v1, :cond_0

    .line 323
    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    .line 324
    const-string/jumbo v1, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v2, "After dpcenter & home down, ignore tap fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 329
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_3

    .line 330
    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 333
    const-string/jumbo v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    .line 332
    invoke-static {v1, v2, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 334
    .local v0, "action":I
    if-ne v6, v0, :cond_4

    .line 335
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 341
    :cond_4
    if-ne v7, v0, :cond_5

    .line 342
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    goto :goto_0

    .line 343
    :cond_5
    if-nez v0, :cond_1

    .line 344
    return-void

    .line 348
    .end local v0    # "action":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iput-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    goto :goto_0
.end method

.method private processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 355
    const-string/jumbo v0, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v1, "processFrontFingerprintDprightEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method


# virtual methods
.method protected adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;FI)V
    .locals 14
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;
    .param p9, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p10, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p11, "maxAspect"    # F
    .param p12, "aspectSystemUIVisibility"    # I

    .prologue
    .line 451
    iget-boolean v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v12, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 455
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 456
    .local v2, "fl":I
    const/4 v12, 0x0

    move-object/from16 v0, p9

    invoke-static {v0, v12}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v11

    .line 457
    .local v11, "sysUiFl":I
    invoke-static/range {p11 .. p11}, Lmiui/util/CustomizeUtil;->isRestrict(F)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    if-nez p10, :cond_1

    .line 459
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    if-nez v12, :cond_5

    .line 460
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 461
    .local v5, "newHeight":I
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v13, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarHeight:I

    sub-int v4, v12, v13

    .line 462
    .local v4, "newBottom":I
    sub-int v8, v4, v5

    .line 463
    .local v8, "newTop":I
    iget v12, p1, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v12

    .line 465
    .local v10, "offset":I
    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_3

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 466
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    sub-int/2addr v12, v5

    div-int/lit8 v3, v12, 0x2

    .line 467
    .local v3, "gap":I
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    sub-int v4, v12, v3

    .line 468
    sub-int v8, v4, v5

    .line 470
    .end local v3    # "gap":I
    :cond_3
    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v4, :cond_4

    iget v12, p1, Landroid/graphics/Rect;->top:I

    if-lt v12, v8, :cond_4

    .line 471
    return-void

    .line 473
    :cond_4
    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 474
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 476
    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    iget v13, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 478
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 479
    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p5

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 480
    .end local v4    # "newBottom":I
    .end local v5    # "newHeight":I
    .end local v8    # "newTop":I
    .end local v10    # "offset":I
    :cond_5
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 481
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v9, v12

    .line 482
    .local v9, "newWidth":I
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v13, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    sub-int v7, v12, v13

    .line 483
    .local v7, "newRight":I
    sub-int v6, v7, v9

    .line 485
    .local v6, "newLeft":I
    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_6

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 486
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    .line 487
    .restart local v3    # "gap":I
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v7, v12, v3

    .line 488
    sub-int v6, v7, v9

    .line 490
    .end local v3    # "gap":I
    :cond_6
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 491
    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 493
    iget v12, p1, Landroid/graphics/Rect;->right:I

    iget v13, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 494
    .end local v6    # "newLeft":I
    .end local v7    # "newRight":I
    .end local v9    # "newWidth":I
    :cond_7
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 495
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v9, v12

    .line 496
    .restart local v9    # "newWidth":I
    iget v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    .line 497
    .restart local v6    # "newLeft":I
    add-int v7, v6, v9

    .line 498
    .restart local v7    # "newRight":I
    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 499
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    .line 500
    .restart local v3    # "gap":I
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v7, v12, v3

    .line 501
    sub-int v6, v7, v9

    .line 504
    .end local v3    # "gap":I
    :cond_8
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 505
    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 507
    iget v12, p1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 508
    iget v12, p1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 509
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 510
    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p5

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 511
    move-object/from16 v0, p7

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p7

    iput v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0
.end method

.method public beginLayoutLw(ZIIII)V
    .locals 2
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I
    .param p5, "uiMode"    # I

    .prologue
    .line 166
    invoke-super/range {p0 .. p5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->beginLayoutLw(ZIIII)V

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    if-nez v0, :cond_1

    .line 169
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemBottom:I

    .line 170
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    .line 171
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenHeight:I

    .line 172
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 179
    :goto_0
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentTop:I

    .line 180
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentBottom:I

    .line 181
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentLeft:I

    .line 182
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentRight:I

    .line 165
    :cond_0
    return-void

    .line 174
    :cond_1
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemRight:I

    .line 175
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    .line 176
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenWidth:I

    .line 177
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_0
.end method

.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 265
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 111
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishedGoingToSleep(I)V

    .line 73
    return-void
.end method

.method protected forceStopPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "OwningUserId"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "maxAspect"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 517
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I

    .line 518
    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v7, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 519
    .local v2, "forceOpaqueStatusBar":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v7, :cond_4

    .line 521
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 522
    .local v4, "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v5

    .line 524
    .local v5, "fullscreenVis":I
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 525
    and-int v7, v5, v8

    if-nez v7, :cond_5

    .line 524
    const/4 v3, 0x1

    .line 528
    :goto_2
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v1

    .line 530
    .local v1, "dockedVis":I
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 531
    and-int v7, v1, v8

    if-nez v7, :cond_6

    .line 530
    const/4 v0, 0x1

    .line 533
    :goto_3
    const/4 v6, 0x0

    .line 534
    .local v6, "vis":I
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 535
    const/16 v6, 0x8

    .line 536
    const v7, -0x40000001    # -1.9999999f

    and-int/lit8 v6, v7, 0x8

    .line 541
    :cond_2
    :goto_4
    return v6

    .line 518
    .end local v1    # "dockedVis":I
    .end local v2    # "forceOpaqueStatusBar":Z
    .end local v4    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v5    # "fullscreenVis":I
    .end local v6    # "vis":I
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "forceOpaqueStatusBar":Z
    goto :goto_0

    .line 520
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .line 526
    .restart local v4    # "fullscreenTransWin":Landroid/view/WindowManagerPolicy$WindowState;
    .restart local v5    # "fullscreenVis":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    .local v3, "fullscreenDrawsStatusBarBackground":Z
    goto :goto_2

    .line 532
    .end local v3    # "fullscreenDrawsStatusBarBackground":Z
    .restart local v1    # "dockedVis":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    .local v0, "dockedDrawsStatusBarBackground":Z
    goto :goto_3

    .line 537
    .end local v0    # "dockedDrawsStatusBarBackground":Z
    .restart local v6    # "vis":I
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v4, v7, :cond_8

    .line 539
    :goto_5
    const/4 v6, 0x0

    goto :goto_4

    .line 537
    :cond_8
    if-eqz v2, :cond_2

    goto :goto_5
.end method

.method protected getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 60
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    .line 204
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 205
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 210
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    const/high16 v1, 0x20000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 305
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 308
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 313
    return v3

    .line 311
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 316
    .end local v0    # "keyCode":I
    :cond_0
    return v3

    .line 308
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 130
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 131
    return v2

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method protected isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 294
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 297
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 229
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScreenOnInternal()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isStatusBarKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 100
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected launchRecentPanelInternal()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 81
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 3
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 271
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected preloadRecentAppsInternal()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 89
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 87
    :cond_0
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 147
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v2, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, -0x7

    return v1

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    .line 153
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 157
    .local v0, "ret":I
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 161
    :cond_2
    return v0
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 372
    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .line 389
    return v2

    .line 374
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v1, :cond_1

    .line 375
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    .line 377
    return v2

    .line 379
    :cond_0
    return v2

    .line 382
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    .line 383
    return v2

    .line 386
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V

    .line 387
    return v2

    .line 372
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_1

    .line 189
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Removing keyguard window (Did it crash?)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 191
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .line 194
    .local v0, "isStatusBarWindowRemoving":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 195
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-nez v1, :cond_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    goto :goto_0

    .line 193
    .end local v0    # "isStatusBarWindowRemoving":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isStatusBarWindowRemoving":Z
    goto :goto_1
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected setKeyguardVisibilityState(Z)Z
    .locals 5
    .param p1, "hide"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 234
    .local v1, "wasOccluded":Z
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 235
    .local v0, "showing":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 242
    :cond_0
    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 243
    iput-boolean v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 244
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 245
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 248
    :cond_1
    return v3

    .line 235
    :cond_2
    if-eqz v0, :cond_0

    .line 236
    iput-boolean v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .line 237
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v4, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 238
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 241
    :cond_3
    return v3

    .line 250
    :cond_4
    return v4
.end method

.method protected stopLockTaskMode()Z
    .locals 3

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 280
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v2, 0x1

    return v2

    .line 284
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V

    .line 68
    new-instance v0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReadyInternal()V

    .line 66
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 256
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    .line 257
    const/16 v0, 0xd

    return v0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method
