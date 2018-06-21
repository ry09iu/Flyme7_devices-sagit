.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimTransactionSequence:I

.field private mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayFlags:I

.field private mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field private final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p1, "frameTimeNs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 99
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 104
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 116
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 120
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 122
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 137
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 138
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 140
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 142
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 136
    return-void
.end method

.method private animateLocked(J)V
    .locals 25
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    const-wide/32 v20, 0xf4240

    div-long v20, p1, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 715
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v17, v0

    .line 717
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 718
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 725
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 726
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 728
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 729
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_6

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 731
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 734
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 736
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 738
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 757
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 758
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 761
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 762
    .local v4, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v4, :cond_5

    .line 763
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 762
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 740
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 741
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 742
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 746
    if-nez v7, :cond_1

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    .line 749
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 799
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    .line 800
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v19, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "Unhandled exception in Window Manager"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 807
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_3
    const/4 v11, 0x0

    .line 808
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 809
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_4
    if-ge v8, v14, :cond_d

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 811
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v15

    .line 812
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    if-eqz v19, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 815
    :cond_3
    if-eqz v15, :cond_4

    .line 816
    const/4 v11, 0x1

    .line 809
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 729
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v15    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 767
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v14, :cond_9

    .line 768
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 770
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 772
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 774
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_7

    .line 775
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 778
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v19

    .line 780
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    .line 779
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 783
    if-nez v7, :cond_8

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 767
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 788
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 789
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DragState;->stepAnimationLocked(J)Z

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 792
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 796
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_3

    .line 801
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    .line 802
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 801
    throw v19

    .line 820
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_d
    const/4 v9, 0x0

    .line 821
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 825
    .end local v9    # "doRequest":Z
    :cond_e
    if-nez v11, :cond_f

    if-eqz v9, :cond_10

    .line 826
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 829
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    if-eqz v17, :cond_14

    .line 833
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    if-eqz v17, :cond_12

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 835
    const-wide/16 v20, 0x20

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 836
    const-string/jumbo v19, "animating"

    const-wide/16 v20, 0x20

    const/16 v22, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 840
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 841
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->removeReplacedWindowsLocked()V

    .line 844
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->stopUsingSavedSurfaceLocked()V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    .line 709
    return-void

    .line 829
    :cond_14
    const-wide/16 v20, 0x20

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 830
    const-string/jumbo v19, "animating"

    const-wide/16 v20, 0x20

    const/16 v22, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_6
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 878
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 879
    const-string/jumbo v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 882
    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 885
    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 888
    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 891
    const-string/jumbo v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    return-object v0

    .line 130
    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    return-object v0

    .line 131
    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    return-object v0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 976
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 977
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 978
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    .line 979
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 981
    :cond_0
    return-object v0
.end method

.method private getWinShowWhenLockedOrAnimating()Lcom/android/server/wm/WindowState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 240
    .local v0, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 241
    return-object v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    .line 243
    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    return-object v1

    .line 248
    :cond_1
    return-object v3
.end method

.method private removeReplacedWindowsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 859
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 861
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 862
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 863
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 864
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 865
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->maybeRemoveReplacedWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 861
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 869
    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 873
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 856
    return-void

    .line 868
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    .line 869
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 868
    throw v4
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v11, 0x80000

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 252
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 253
    .local v3, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 254
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v11

    if-nez v8, :cond_5

    .line 255
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v3, v10}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    .line 257
    .local v5, "showImeOverKeyguard":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->getWinShowWhenLockedOrAnimating()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 258
    .local v6, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_8

    .line 259
    const/4 v1, 0x0

    .line 263
    :goto_1
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_0

    if-ne v3, p1, :cond_9

    :cond_0
    move v0, v5

    .line 265
    .local v0, "allowWhenLocked":Z
    :goto_2
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_a

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :goto_3
    or-int/2addr v0, v8


    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowAnimator;->isFlymeAllowWhenLocked(Lcom/android/server/wm/WindowState;Z)Z

    move-result v0

    .line 267
    if-eqz v1, :cond_2

    .line 268
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v8, :cond_1

    .line 270
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_b

    :cond_1
    move v8, v9

    .line 268
    :goto_4
    or-int/2addr v0, v8

    .line 278
    :cond_2
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x400000

    and-int/2addr v8, v10

    if-eqz v8, :cond_3

    .line 279
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->canShowDismissingWindowWhileLockedLw()Z

    move-result v7

    .line 278
    :cond_3
    or-int/2addr v0, v7

    .line 282
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 285
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    if-eqz v7, :cond_d

    const/4 v4, 0x1

    .line 287
    .local v4, "keyguardOn":Z
    :goto_5
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7f2

    if-ne v7, v8, :cond_10

    .line 288
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-nez v7, :cond_f

    const/4 v2, 0x1

    .line 289
    .local v2, "hideDockDivider":Z
    :goto_6
    if-eqz v4, :cond_4

    if-eqz v0, :cond_11

    :cond_4
    move v9, v2

    :goto_7
    return v9

    .line 254
    .end local v0    # "allowWhenLocked":Z
    .end local v2    # "hideDockDivider":Z
    .end local v4    # "keyguardOn":Z
    .end local v5    # "showImeOverKeyguard":Z
    .end local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 255
    .end local v5    # "showImeOverKeyguard":Z
    :cond_6
    const/4 v5, 0x1

    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 253
    .end local v5    # "showImeOverKeyguard":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "showImeOverKeyguard":Z
    goto :goto_0

    .line 259
    .restart local v6    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_8
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    move v0, v7

    .line 263
    goto :goto_2

    .restart local v0    # "allowWhenLocked":Z
    :cond_a
    move v8, v7

    .line 265
    goto :goto_3

    .line 272
    :cond_b
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_c

    move v8, v9

    goto :goto_4

    :cond_c
    move v8, v7

    goto :goto_4

    .line 285
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    .line 282
    .end local v4    # "keyguardOn":Z
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "keyguardOn":Z
    goto :goto_5

    .line 288
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    .line 287
    .end local v2    # "hideDockDivider":Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "hideDockDivider":Z
    goto :goto_6

    .line 289
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_7
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 665
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 666
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 667
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 668
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 669
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 670
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 671
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 672
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 673
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 674
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_0

    .line 675
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 676
    if-eqz v0, :cond_0

    .line 679
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_1

    .line 680
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 681
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 690
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    .line 689
    const/4 v10, 0x4

    .line 688
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 670
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 694
    :cond_1
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    .line 693
    const/16 v10, 0x8

    .line 692
    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 697
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 698
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    goto :goto_2

    .line 667
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 662
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    .line 173
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    .line 174
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "stackNdx":I
    :goto_0
    if-ltz v4, :cond_9

    .line 175
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 176
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 177
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_3

    .line 178
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v9, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 179
    .local v9, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v9}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "tokenNdx":I
    :goto_2
    if-ltz v8, :cond_2

    .line 180
    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 181
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 182
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v10, v11, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 183
    iput-boolean v12, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 184
    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 185
    iput-boolean v12, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 179
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 186
    :cond_1
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v10, :cond_0

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appToken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " done"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 188
    invoke-virtual {p0, v0, v13, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_3

    .line 177
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 197
    .end local v8    # "tokenNdx":I
    .end local v9    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->clear()V

    .line 198
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v11, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/AppTokenList;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    .line 201
    .local v1, "exitingCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_7

    .line 202
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTmpExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 207
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-object v10, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/AppTokenList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 201
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 210
    :cond_5
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 211
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v10, v11, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 212
    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 213
    iput-boolean v12, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    goto :goto_5

    .line 214
    :cond_6
    iget-boolean v10, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v10, :cond_4

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting appToken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " done"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-virtual {p0, v0, v13, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    goto :goto_5

    .line 227
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_7
    iget-boolean v10, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    if-nez v10, :cond_8

    .line 228
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    .line 174
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 172
    .end local v1    # "exitingCount":I
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_9
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/high16 v10, 0x100000

    .line 596
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 598
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 599
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 601
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .end local v2    # "detachedWallpaper":Lcom/android/server/wm/WindowState;
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 602
    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 603
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 604
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 608
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 613
    .local v3, "flags":I
    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v9, :cond_2

    .line 614
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_1

    .line 615
    and-int v9, v3, v10

    if-eqz v9, :cond_0

    .line 616
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    .line 615
    if-eqz v9, :cond_0

    .line 617
    move-object v2, v6

    .line 619
    :cond_0
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 620
    .local v1, "color":I
    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 622
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_1

    .line 623
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 627
    .end local v1    # "color":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    .line 633
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 634
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_4

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_4

    .line 635
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 634
    if-eqz v9, :cond_4

    .line 636
    and-int v9, v3, v10

    if-eqz v9, :cond_3

    .line 637
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    .line 636
    if-eqz v9, :cond_3

    .line 638
    move-object v2, v6

    .line 641
    :cond_3
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 642
    .restart local v1    # "color":I
    if-eqz v1, :cond_4

    .line 643
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 644
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_4

    .line 645
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 601
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v3    # "flags":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 651
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_6

    .line 655
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 656
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 595
    :cond_6
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 34
    .param p1, "displayId"    # I

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v28

    .line 299
    .local v28, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_0

    const/4 v14, 0x1

    .line 301
    .local v14, "keyguardGoingAwayToShade":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_1

    const/4 v13, 0x1

    .line 303
    .local v13, "keyguardGoingAwayNoAnimation":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_2

    const/4 v15, 0x1

    .line 305
    .local v15, "keyguardGoingAwayWithWallpaper":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 306
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_4

    .line 307
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 308
    .local v25, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 306
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 299
    .end local v12    # "i":I
    .end local v13    # "keyguardGoingAwayNoAnimation":Z
    .end local v14    # "keyguardGoingAwayToShade":Z
    .end local v15    # "keyguardGoingAwayWithWallpaper":Z
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "keyguardGoingAwayToShade":Z
    goto :goto_0

    .line 301
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "keyguardGoingAwayNoAnimation":Z
    goto :goto_1

    .line 303
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "keyguardGoingAwayWithWallpaper":Z
    goto :goto_2

    .line 311
    .restart local v12    # "i":I
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v26, v0

    .line 312
    .local v26, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 313
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v29, v0

    if-nez v29, :cond_4

    .line 318
    new-instance v29, Landroid/view/animation/AlphaAnimation;

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-direct/range {v29 .. v31}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 319
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 321
    const-wide/16 v30, -0x1

    move-wide/from16 v0, v30

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 322
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 323
    move-object/from16 v0, v26

    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 336
    .end local v12    # "i":I
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_4
    :goto_4
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 338
    const/16 v23, 0x0

    .line 339
    .local v23, "wallpaperInUnForceHiding":Z
    const/16 v18, 0x0

    .line 340
    .local v18, "startingInUnForceHiding":Z
    const/16 v19, 0x0

    .line 341
    .local v19, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v21, 0x0

    .line 342
    .local v21, "wallpaper":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v22, v0

    .line 343
    .local v22, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    .end local v19    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v21    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v12    # "i":I
    :goto_5
    if-ltz v12, :cond_21

    .line 344
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 345
    .restart local v25    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v26, v0

    .line 346
    .restart local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 347
    .local v11, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    .line 348
    .local v8, "canBeForceHidden":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 349
    .local v17, "shouldBeForceHidden":Z
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 350
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v24, v0

    .line 351
    .local v24, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v16

    .line 352
    .local v16, "nowAnimating":Z
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 353
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 360
    if-eqz v24, :cond_5

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 372
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 373
    if-nez v24, :cond_f

    if-eqz v16, :cond_f

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 379
    const/16 v29, 0x4

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 392
    :cond_6
    :goto_7
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 393
    if-eqz v16, :cond_10

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 394
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 498
    .end local v16    # "nowAnimating":Z
    .end local v24    # "wasAnimating":Z
    :cond_7
    :goto_8
    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 499
    .local v7, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 500
    if-eqz v7, :cond_8

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 501
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 503
    const/16 v29, 0x8

    .line 502
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 512
    :cond_9
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 513
    .local v5, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v5, :cond_b

    iget-object v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 514
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 516
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 518
    :cond_a
    iget v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 519
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v5, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 522
    :cond_b
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 523
    move-object/from16 v21, v25

    .line 343
    .end local v5    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    :goto_9
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_5

    .line 329
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v17    # "shouldBeForceHidden":Z
    .end local v18    # "startingInUnForceHiding":Z
    .end local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v23    # "wallpaperInUnForceHiding":Z
    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 330
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_4

    .line 361
    .restart local v8    # "canBeForceHidden":Z
    .restart local v11    # "flags":I
    .restart local v16    # "nowAnimating":Z
    .restart local v17    # "shouldBeForceHidden":Z
    .restart local v18    # "startingInUnForceHiding":Z
    .restart local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v23    # "wallpaperInUnForceHiding":Z
    .restart local v24    # "wasAnimating":Z
    :cond_e
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v29

    .line 360
    if-eqz v29, :cond_5

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 363
    const/16 v29, 0x0

    .line 364
    const/16 v30, 0x4

    .line 363
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto/16 :goto_6

    .line 386
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    if-nez v16, :cond_6

    .line 388
    sget-object v29, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "Timeout waiting for animation to startup"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 390
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_7

    .line 396
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v29

    if-eqz v29, :cond_11

    const/16 v29, 0x1

    :goto_a
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_8

    :cond_11
    const/16 v29, 0x0

    goto :goto_a

    .line 408
    :cond_12
    if-eqz v8, :cond_7

    .line 409
    if-eqz v17, :cond_14

    .line 410
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 475
    :cond_13
    :goto_b
    const/high16 v29, 0x100000

    and-int v29, v29, v11

    if-eqz v29, :cond_7

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 477
    const/16 v29, 0x0

    .line 478
    const/16 v30, 0x4

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto/16 :goto_8

    .line 417
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v29

    if-eqz v29, :cond_17

    .line 417
    :cond_15
    const/4 v6, 0x0

    .line 427
    .local v6, "applyExistingExitAnimation":Z
    :goto_c
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v29

    if-nez v29, :cond_16

    if-eqz v6, :cond_c

    .line 430
    :cond_16
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v20

    .line 431
    .local v20, "visibleNow":Z
    if-nez v20, :cond_19

    .line 433
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_9

    .line 419
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v20    # "visibleNow":Z
    :cond_17
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    .line 420
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v29

    .line 417
    if-eqz v29, :cond_15

    .line 421
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_15

    .line 422
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    .line 423
    if-nez p1, :cond_18

    const/4 v6, 0x1

    .restart local v6    # "applyExistingExitAnimation":Z
    goto :goto_c

    .end local v6    # "applyExistingExitAnimation":Z
    :cond_18
    const/4 v6, 0x0

    .restart local v6    # "applyExistingExitAnimation":Z
    goto :goto_c

    .line 438
    .restart local v20    # "visibleNow":Z
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_1e

    .line 439
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_1e

    .line 440
    if-nez v19, :cond_1a

    .line 441
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :cond_1a
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const/high16 v29, 0x100000

    and-int v29, v29, v11

    if-eqz v29, :cond_1b

    .line 445
    const/16 v23, 0x1

    .line 447
    :cond_1b
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    .line 448
    const/16 v18, 0x1

    .line 465
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 466
    .local v9, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_1d

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v29, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 472
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_b

    .line 450
    .end local v9    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_1e
    if-eqz v6, :cond_1c

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v14}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 459
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v30

    .line 460
    const/16 v29, 0x1

    .line 459
    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    move/from16 v3, v29

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    .line 461
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 462
    move-object/from16 v0, v26

    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    goto :goto_d

    .line 490
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v6    # "applyExistingExitAnimation":Z
    .end local v16    # "nowAnimating":Z
    .end local v20    # "visibleNow":Z
    .end local v24    # "wasAnimating":Z
    :cond_1f
    if-eqz v8, :cond_7

    .line 491
    if-eqz v17, :cond_20

    .line 492
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_8

    .line 494
    :cond_20
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_8

    .line 530
    .end local v8    # "canBeForceHidden":Z
    .end local v11    # "flags":I
    .end local v17    # "shouldBeForceHidden":Z
    .end local v25    # "win":Lcom/android/server/wm/WindowState;
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_21
    if-eqz v19, :cond_27

    .line 531
    if-nez v13, :cond_25

    .line 532
    const/4 v10, 0x1

    .line 533
    .local v10, "first":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    :goto_e
    if-ltz v12, :cond_26

    .line 534
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowStateAnimator;

    .line 535
    .restart local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    .line 536
    if-eqz v23, :cond_22

    if-eqz v18, :cond_24

    :cond_22
    const/16 v29, 0x0

    .line 535
    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-interface {v0, v1, v14}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_23


    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/WindowAnimator;->getFlymeLauncherUnlockAnimation(Lcom/android/server/wm/WindowStateAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v4

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;I)V

    .line 542
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 543
    move-object/from16 v0, v26

    iput-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 545
    if-eqz v10, :cond_23

    .line 546
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 548
    const/4 v10, 0x0

    .line 533
    :cond_23
    add-int/lit8 v12, v12, -0x1

    goto :goto_e

    .line 536
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_24
    const/16 v29, 0x1

    goto :goto_f

    .line 552
    .end local v10    # "first":Z
    .end local v26    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v29, v0

    if-eqz v29, :cond_26

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 554
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 559
    :cond_26
    if-nez v23, :cond_27

    if-eqz v21, :cond_27

    if-eqz v13, :cond_2a

    .line 569
    :cond_27
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_28

    .line 571
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2b

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v30, v0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v32

    .line 572
    add-long v30, v30, v32

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v32

    .line 572
    invoke-interface/range {v29 .. v33}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 575
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 589
    :cond_28
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 590
    .local v27, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-eqz v27, :cond_29

    .line 591
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mLastShowWinWhenLocked:Lcom/android/server/wm/WindowState;

    .line 293
    :cond_29
    return-void

    .line 561
    .end local v27    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v14}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v4

    .line 563
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_27

    .line 564
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10

    .line 580
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v29

    if-nez v29, :cond_2c

    .line 581
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v32

    sub-long v30, v30, v32

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v32

    .line 581
    cmp-long v29, v30, v32

    if-lez v29, :cond_28

    .line 585
    :cond_2c
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_11
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 152
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 897
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 901
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 903
    const-string/jumbo v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 906
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 907
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 908
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 909
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 910
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 911
    const-string/jumbo v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 908
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 913
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 914
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 919
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    :cond_2
    if-eqz p3, :cond_1

    .line 917
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 922
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 924
    if-eqz p3, :cond_4

    .line 925
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 927
    const-string/jumbo v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 932
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 937
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 896
    :cond_6
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 943
    if-gez p1, :cond_0

    .line 944
    return v1

    .line 946
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 947
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    return v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 991
    if-gez p1, :cond_0

    .line 992
    const/4 v0, 0x0

    return-object v0

    .line 994
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return v0
.end method

.method orAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1013
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 162
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 165
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 160
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 997
    return-void
.end method

.method setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 1010
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 1009
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 3
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 962
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 963
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 964
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    .line 965
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 961
    :cond_0
    return-void

    .line 963
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 951
    if-gez p1, :cond_0

    .line 952
    return-void

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 955
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 956
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 950
    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 985
    if-ltz p1, :cond_0

    .line 986
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 984
    :cond_0
    return-void
.end method

.method private getFlymeLauncherUnlockAnimation(Lcom/android/server/wm/WindowStateAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "a"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v0, "com.meizu.flyme.launcher"

    .local v0, "LAUNCHER_PACKAGENAME":Ljava/lang/String;
    const-string v3, "com.meizu.flyme.launcher"

    iget-object v4, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isLauncher":Z
    if-eqz v1, :cond_0

    const/high16 v3, 0x43df0000    # 446.0f

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .local v2, "translationY":F
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    .end local p2    # "a":Landroid/view/animation/Animation;
    invoke-direct {p2, v5, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local p2    # "a":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x226

    invoke-virtual {p2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3de147ae    # 0.11f

    const v5, 0x3f666666    # 0.9f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v8}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .end local v2    # "translationY":F
    :cond_0
    return-object p2
.end method

.method private isFlymeAllowWhenLocked(Lcom/android/server/wm/WindowState;Z)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "allowWhenLocked"    # Z

    .prologue
    const/high16 v3, 0x20000

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    or-int/2addr p2, v0

    return p2

    :cond_1
    move v0, v1

    goto :goto_0
.end method
