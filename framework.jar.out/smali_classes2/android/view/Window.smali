.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;
    }
.end annotation


# static fields
.field public static final DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = #android:id@content#t

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mOverlayWithDecorCaptionEnabled:Z

.field private mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    .line 288
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    .line 289
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 290
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 291
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 296
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 297
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 300
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 304
    iput-boolean v1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 308
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 307
    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 647
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 648
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I


    invoke-direct {p0}, Landroid/view/Window;->initFlymeTintBarWindow()V


    .line 646
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1602
    const/4 v0, 0x0

    .line 1604
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1605
    .local v1, "res":Landroid/content/res/Resources;
    const v2, #android:bool@config_defaultWindowFeatureOptionsPanel#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1606
    const/4 v0, 0x1

    .line 1609
    :cond_0
    const v2, #android:bool@config_defaultWindowFeatureContextMenu#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1610
    or-int/lit8 v0, v0, 0x40

    .line 1613
    :cond_1
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 1212
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 1213
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 1214
    .local v1, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1215
    .local v0, "decorView":Landroid/view/View;
    neg-int v5, v1

    if-lt v2, v5, :cond_0

    neg-int v5, v1

    if-ge v3, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    .line 1216
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v2, v5, :cond_0

    .line 1217
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setPrivateFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1089
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1090
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1091
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1088
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addExtraFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 2168
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setExtraFlags(II)V

    .line 2167
    return-void
.end method

.method public addFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1033
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1032
    return-void
.end method

.method public final addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 846
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 847
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "can\'t observe a Window without an attached view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_0
    if-nez p1, :cond_1

    .line 851
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 844
    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1038
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1037
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v7, 0x1000000

    const/16 v6, 0x3e8

    const/16 v5, 0x20

    .line 747
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 748
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v6, :cond_d

    .line 749
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d

    .line 750
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 751
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 752
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 756
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 757
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 758
    .local v2, "title":Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_7

    .line 759
    const-string/jumbo v3, "Media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 774
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 802
    iget-object v3, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 804
    :cond_4
    iget-boolean v3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-nez v3, :cond_5

    .line 805
    iget-object v3, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    .line 806
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v7

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 746
    :cond_6
    return-void

    .line 760
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_8

    .line 761
    const-string/jumbo v3, "MediaOvr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    :cond_8
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_9

    .line 763
    const-string/jumbo v3, "Panel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 764
    :cond_9
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_a

    .line 765
    const-string/jumbo v3, "SubPanel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 766
    :cond_a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_b

    .line 767
    const-string/jumbo v3, "AboveSubPanel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 768
    :cond_b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_c

    .line 769
    const-string/jumbo v3, "AtchDlg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    :cond_c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 778
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_10

    .line 779
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_10

    .line 784
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 785
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 786
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Sys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 788
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_f
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 793
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_10
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_11

    .line 794
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v3, :cond_13

    iget-object v3, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_2
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 796
    :cond_11
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 797
    :cond_12
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 798
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 794
    :cond_13
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v3, v3, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract clearContentView()V
.end method

.method public clearExtraFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setExtraFlags(II)V

    .line 2175
    return-void
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1049
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1048
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 707
    return-void
.end method

.method public final dispatchOnWindowDismissed(Z)V
    .locals 1
    .param p1, "finishTask"    # Z

    .prologue
    .line 874
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(Z)V

    .line 873
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1272
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2039
    const/4 v0, 0x1

    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2065
    const/4 v0, 0x1

    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 1802
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 1407
    const/4 v0, 0x0

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFeatures()I
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .locals 1

    .prologue
    .line 1635
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1919
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1956
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 2002
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 2013
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1965
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 2104
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 2

    .prologue
    .line 2078
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 1779
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public final getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .prologue
    .line 666
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 669
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    .line 668
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 671
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1623
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v2

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final hasSoftInputMode()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1766
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 1259
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    .prologue
    .line 2218
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 1251
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1253
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1254
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1246
    return-void
.end method

.method public notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2225
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 2226
    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 2225
    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 2222
    :cond_0
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onMultiWindowModeChanged()V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    .line 1241
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 1242
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1243
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    not-int v2, v2

    and-int/2addr v0, v2

    .end local v0    # "flag":I
    :cond_0
    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1240
    return-void
.end method

.method public final removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 862
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 860
    :cond_0
    return-void
.end method

.method public abstract reportActivityRelaunched()V
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1231
    shl-int v0, v2, p1

    .line 1232
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1233
    iget v4, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    not-int v1, v1

    and-int/2addr v1, v0

    :goto_0
    or-int/2addr v1, v4

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1234
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    move v1, v0

    .line 1233
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1234
    goto :goto_1
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 2026
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 2052
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue

    invoke-direct {p0, p0, p1}, Landroid/view/Window;->onFlymeWindowAttributesChanged(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1431
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1430
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 826
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .locals 0
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1419
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1169
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1168
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1175
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 1176
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1174
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 683
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 684
    if-eqz p1, :cond_0

    .line 686
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 687
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 682
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setDecorCaptionShade(I)V
.end method

.method public setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1734
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1752
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 1649
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 1650
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v1, :cond_0

    .line 1651
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1652
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1653
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1648
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1122
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1123
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 1124
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1120
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    const/16 v1, 0x800

    .line 1184
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1183
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 1399
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1816
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1847
    return-void
.end method

.method public setExtraFlags(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/high16 v3, 0x4000000

    .line 2184
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2185
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 2187
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 2188
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 2189
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 2190
    invoke-virtual {p0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2198
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    .line 2199
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2183
    :cond_1
    return-void

    .line 2193
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 2194
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/high16 v3, 0x4000000

    .line 1072
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1073
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1076
    and-int v1, p2, v3

    if-eqz v1, :cond_0

    .line 1077
    and-int v1, p1, v3

    if-nez v1, :cond_0

    .line 1078
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1079
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearExtraFlags(I)V

    .line 1084
    :cond_0
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 1085
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1071
    return-void
.end method

.method public setFormat(I)V
    .locals 3
    .param p1, "format"    # I

    .prologue
    const/4 v2, 0x0

    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 984
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 985
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 986
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 991
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 982
    return-void

    .line 988
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 989
    iput-boolean v2, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 955
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 956
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 952
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1725
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 937
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 938
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 939
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 935
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1760
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1743
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1692
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1098
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1099
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 1100
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1097
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .prologue
    .line 869
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 868
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2213
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 2212
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1863
    return-void
.end method

.method public abstract setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .prologue
    const/4 v0, 0x0

    .line 895
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 896
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 894
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1833
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1932
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1978
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1991
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1947
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 2115
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1016
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1017
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1018
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 1022
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1014
    return-void

    .line 1020
    :cond_0
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public setSustainedPerformanceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/high16 v1, 0x40000

    .line 1205
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1204
    return-void

    .line 1206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 2204
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 0
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 2092
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 1790
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 967
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 968
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 965
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 1710
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1718
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1003
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1004
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1001
    return-void
.end method

.method public final setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0
    .param p1, "wccb"    # Landroid/view/Window$WindowControllerCallback;

    .prologue
    .line 881
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 880
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 723
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .prologue
    .line 736
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 737
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 738
    if-nez p4, :cond_1

    .line 739
    const-string/jumbo v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 738
    :goto_0
    iput-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 740
    if-nez p1, :cond_0

    .line 741
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "wm":Landroid/view/WindowManager;
    check-cast p1, Landroid/view/WindowManager;

    .line 743
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    .end local p1    # "wm":Landroid/view/WindowManager;
    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 735
    return-void

    .line 738
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1194
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    const/4 v0, 0x1

    return v0

    .line 1198
    :cond_0
    return v1
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method

.method private initFlymeTintBarWindow()V
    .locals 0

    .prologue
    invoke-static {p0}, Lcom/meizu/tintbar/MzTintBarHelp;->initWindow(Landroid/view/Window;)V

    return-void
.end method

.method private isOutOfBoundsNoSlop(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .local v2, "y":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    if-ltz v1, :cond_0

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gt v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gt v2, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private onFlymeWindowAttributesChanged(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getAppTintBarAssist()Lcom/meizu/tintbar/IAppTintBarAssist;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meizu/tintbar/IAppTintBarAssist;->onWindowAttributesChanged(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public getAppTintBarAssist()Lcom/meizu/tintbar/IAppTintBarAssist;
    .locals 1

    .prologue
    sget-object v0, Lcom/meizu/tintbar/MzTintBarHelp;->mAppTintBarAssistEmpty:Lcom/meizu/tintbar/IAppTintBarAssistInner;

    return-object v0
.end method

.method public isTouchOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public setAutoStatusBarIcon(Z)V
    .locals 0
    .param p1, "autoStatusBarIcon"    # Z

    .prologue
    return-void
.end method

.method public setForcedNavigationBarColor(Z)V
    .locals 0
    .param p1, "forcedNavigationBarColor"    # Z

    .prologue
    return-void
.end method

.method protected setLightStatusBar(ZZ)V
    .locals 4
    .param p1, "darkIcon"    # Z
    .param p2, "change"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .local v2, "oldVis":I
    move v1, v2

    .local v1, "newVis":I
    if-eqz p1, :cond_2

    or-int/lit16 v1, v2, 0x2000

    :goto_0
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void

    :cond_2
    and-int/lit16 v1, v2, -0x2001

    goto :goto_0
.end method

.method public setNavigationBarColorExt(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->navigationBarColor:I

    if-eq v2, p1, :cond_0

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->navigationBarColor:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v1    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setNavigationBarIconColor(Z)V
    .locals 4
    .param p1, "darkIcon"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .local v2, "oldFlags":I
    move v1, v2

    .local v1, "newFlags":I
    if-eqz p1, :cond_1

    or-int/lit16 v1, v2, 0x100

    :goto_0
    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    :cond_1
    and-int/lit16 v1, v2, -0x101

    goto :goto_0
.end method

.method public setNavigationBarIconColor(ZZ)V
    .locals 0
    .param p1, "darkIcon"    # Z
    .param p2, "force"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarIconColor(Z)V

    return-void
.end method

.method public setStatusBarDarkIcon(Z)V
    .locals 1
    .param p1, "darkIcon"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setStatusBarIconColor(ZI)V

    return-void
.end method

.method public setStatusBarIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setStatusBarIconColor(ZI)V

    return-void
.end method

.method public setStatusBarIconColor(ZI)V
    .locals 4
    .param p1, "darkIcon"    # Z
    .param p2, "color"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "change":Z
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    if-eq v3, p2, :cond_0

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setLightStatusBar(ZZ)V

    .end local v0    # "change":Z
    .end local v2    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public shouldCloseOnTouchNoSlop(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBoundsNoSlop(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
