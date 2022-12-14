.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$ActionPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ActionPopupWindow$1;
    }
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mFeatureTel:Z

.field private mMaxPhraseListHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPhraseTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field private mShareImageView:Landroid/widget/ImageView;

.field private mTelImageView:Landroid/widget/ImageView;

.field private mTextActionPadding:I

.field private mTranslationHandler:Landroid/os/Handler;

.field private mTranslationImageView:Landroid/widget/ImageView;

.field private mTranslationManager:Landroid/widget/TranslationManager;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslationPresenter:Landroid/widget/TranslationPresenter;

.field private mWebImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 3667
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    .line 3668
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    .line 3608
    const v1, 0x1103001c

    .line 3607
    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->POPUP_TEXT_LAYOUT:I

    .line 3646
    new-instance v1, Landroid/widget/Editor$ActionPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$ActionPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    .line 3670
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3671
    invoke-static {}, Landroid/widget/Editor;->-wrap1()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x110a002c

    .line 3670
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    .line 3674
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3675
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3676
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    .line 3667
    :cond_0
    return-void

    .line 3672
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const v1, 0x110a002b

    goto :goto_0
.end method

.method private getMaxPhraseListHeight()I
    .locals 8

    .prologue
    .line 4128
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 4129
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 4131
    .local v6, "theme":Landroid/content/res/Resources$Theme;
    const v7, 0x11020082

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4132
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 4134
    .local v2, "header":I
    const v7, 0x11020083

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4135
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4136
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 4137
    .local v1, "first":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 4139
    .local v4, "middle":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4140
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 4142
    .local v3, "last":I
    add-int v7, v2, v1

    add-int/2addr v7, v4

    add-int/2addr v7, v3

    return v7
.end method

.method private isPasswordInputType()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4147
    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xfff

    .line 4149
    .local v0, "variation":I
    const/16 v2, 0x81

    .line 4148
    if-eq v0, v2, :cond_0

    .line 4151
    const/16 v2, 0xe1

    .line 4150
    if-ne v0, v2, :cond_1

    .line 4148
    :cond_0
    :goto_0
    return v1

    .line 4153
    :cond_1
    const/16 v2, 0x12

    .line 4152
    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 3787
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3788
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3787
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3789
    .local v1, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3790
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3791
    const v2, 0x110200d6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3792
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3793
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3794
    return-object v0
.end method

.method private newTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3774
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 3775
    const/high16 v3, 0x3f800000    # 1.0f

    .line 3774
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3776
    .local v2, "wrapContent":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3777
    const-string/jumbo v4, "layout_inflater"

    .line 3776
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3778
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1103001c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3779
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3780
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 3781
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3782
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3783
    return-object v1
.end method


# virtual methods
.method protected createAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 3749
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 3750
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3751
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3752
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3753
    .local v2, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3754
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3755
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3757
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    .line 3758
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3759
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3760
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3761
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3762
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3763
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3765
    new-instance v3, Landroid/widget/Editor$ActionPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$ActionPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    .line 3748
    return-void

    .line 3750
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 3751
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 3752
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 3758
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3759
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 3760
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3682
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$AnimatePopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3683
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3681
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 4123
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 4124
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->setZeroTouchableSurface()V

    .line 4122
    return-void
.end method

.method public fadeIn(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4105
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 4106
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 4108
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4104
    return-void

    .line 4106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initContentView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3688
    new-instance v0, Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TouchPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    .line 3690
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setOrientation(I)V

    .line 3691
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110200d5

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setBackgroundResource(I)V

    .line 3692
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110b000e

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setId(I)V

    .line 3694
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3695
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3698
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    .line 3699
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3700
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    const v1, 0x110200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3702
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    .line 3703
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3704
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    const v1, 0x110200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3706
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    .line 3707
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3708
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    const v1, 0x110200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3710
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    .line 3711
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3712
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v1, 0x11070069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3714
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3715
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3716
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x1107006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3718
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3719
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3720
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v1, 0x1107006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3722
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3723
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3724
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v1, 0x1107006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3726
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3727
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3728
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v1, 0x1107006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3730
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3731
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3732
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v1, 0x1107006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3734
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    .line 3735
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3736
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    const v1, 0x110200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3738
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    .line 3739
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3740
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    const v1, 0x110200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3742
    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    .line 3743
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    .line 3744
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    const v1, 0x1107006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3687
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 31
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3914
    const/16 v16, 0x0

    .line 3915
    .local v16, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 3917
    .local v14, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v25

    .line 3919
    .local v25, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v24

    .line 3921
    .local v24, "selEnd":I
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 3922
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3925
    .end local v24    # "selEnd":I
    .end local v25    # "selStart":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 3926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 3928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    .line 3930
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 3913
    :cond_2
    :goto_0
    return-void

    .line 3931
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x102001f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 3934
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->canPaste()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020022

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3936
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 3937
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 3938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Editor;->replace()V

    goto :goto_0

    .line 3939
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020021

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    .line 3941
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    const v28, 0x1020020

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_0

    .line 3943
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 3944
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.SEND"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3945
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v27, "text/plain"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3946
    const-string/jumbo v27, "android.intent.extra.TEXT"

    .line 3947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3946
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3950
    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    .line 3951
    const v28, 0x10404a5

    .line 3950
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v12, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v7, v1}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 3954
    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 3955
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3956
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string/jumbo v27, "query"

    .line 3957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 3956
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 3962
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/LinkSpec;

    .line 3964
    .local v13, "link":Landroid/widget/LinkSpec;
    if-eqz v13, :cond_2

    .line 3965
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.DIAL"

    iget-object v0, v13, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3966
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3968
    move/from16 v0, v16

    if-eq v0, v14, :cond_2

    .line 3969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 3972
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "link":Landroid/widget/LinkSpec;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 3973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/LinkSpec;

    .line 3974
    .restart local v13    # "link":Landroid/widget/LinkSpec;
    if-eqz v13, :cond_2

    .line 3975
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v27, "android.intent.action.VIEW"

    iget-object v0, v13, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3976
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3978
    move/from16 v0, v16

    if-eq v0, v14, :cond_2

    .line 3979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Landroid/text/Spannable;

    add-int v28, v16, v14

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 3982
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "link":Landroid/widget/LinkSpec;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 3984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 3983
    invoke-static/range {v27 .. v27}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v21

    .line 3985
    .local v21, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_e

    .line 3986
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 3987
    .local v4, "addPhraseTextView":Landroid/widget/TextView;
    const v27, 0x11070070

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3989
    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3990
    .local v6, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3992
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v27, v0

    .line 3993
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v28

    .line 3994
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v29, v0

    .line 3995
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v30

    .line 3992
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3997
    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$3;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v28

    .line 4008
    const v29, 0x110200d5

    .line 4007
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4011
    .end local v4    # "addPhraseTextView":Landroid/widget/TextView;
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 4012
    const-string/jumbo v28, "layout_inflater"

    .line 4011
    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 4014
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v27, 0x1103000e

    const/16 v28, 0x0

    .line 4013
    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 4017
    .local v22, "phraseListLayout":Landroid/view/View;
    const v27, 0x110b0027

    .line 4016
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 4018
    .local v9, "editBtn":Landroid/widget/ImageButton;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 4019
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4033
    :goto_1
    const v27, 0x102000a

    .line 4032
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ListView;

    .line 4034
    .local v23, "phraseListView":Landroid/widget/ListView;
    const/16 v27, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 4036
    new-instance v20, Landroid/widget/Editor$PhraseAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$PhraseAdapter;-><init>(Landroid/widget/Editor;Ljava/util/ArrayList;)V

    .line 4037
    .local v20, "phraseAdapter":Landroid/widget/Editor$PhraseAdapter;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4038
    move/from16 v17, v16

    .line 4039
    .local v17, "minimum":I
    move v15, v14

    .line 4040
    .local v15, "maximum":I
    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Landroid/widget/Editor$ActionPopupWindow$5;-><init>(Landroid/widget/Editor$ActionPopupWindow;II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4051
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 4052
    const v28, 0x110a002f

    .line 4051
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 4053
    .local v26, "width":I
    const/4 v10, -0x2

    .line 4054
    .local v10, "height":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    .line 4055
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    move/from16 v27, v0

    if-nez v27, :cond_f

    .line 4056
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->getMaxPhraseListHeight()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    .line 4058
    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    .line 4060
    :cond_10
    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 4064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v28

    .line 4063
    const v29, 0x110200d5

    .line 4062
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 4021
    .end local v10    # "height":I
    .end local v15    # "maximum":I
    .end local v17    # "minimum":I
    .end local v20    # "phraseAdapter":Landroid/widget/Editor$PhraseAdapter;
    .end local v23    # "phraseListView":Landroid/widget/ListView;
    .end local v26    # "width":I
    :cond_11
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4022
    new-instance v27, Landroid/widget/Editor$ActionPopupWindow$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$4;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 4066
    .end local v9    # "editBtn":Landroid/widget/ImageButton;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v21    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "phraseListLayout":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 4067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_15

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v27

    .line 4069
    const-string/jumbo v28, "layout_inflater"

    .line 4068
    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 4071
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    const v27, 0x1103001d

    const/16 v28, 0x0

    .line 4070
    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    .line 4077
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    .line 4078
    new-instance v27, Landroid/widget/TranslationPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 4079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    .line 4078
    invoke-direct/range {v27 .. v29}, Landroid/widget/TranslationPresenter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    .line 4082
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 4083
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 4084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v28

    const v29, 0x110200d5

    .line 4083
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4085
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 4086
    .local v18, "paddings":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4088
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    .line 4089
    .restart local v26    # "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 4090
    const v28, 0x110a0032

    .line 4089
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 4090
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    .line 4089
    add-int v27, v27, v28

    .line 4091
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 4089
    add-int v10, v27, v28

    .line 4092
    .restart local v10    # "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    new-instance v28, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TranslationPresenter;->setAboveHandle(Z)V

    .line 4096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TranslationPresenter;->setInProgress()V

    .line 4098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v27, v0

    .line 4099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 4098
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4072
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "height":I
    .end local v18    # "paddings":Landroid/graphics/Rect;
    .end local v26    # "width":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    if-eqz v27, :cond_13

    .line 4073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 4074
    .local v19, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public show()V
    .locals 31

    .prologue
    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    .line 3800
    .local v26, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v25

    .line 3801
    .local v25, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v24

    .line 3802
    .local v24, "selEnd":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v21

    .line 3804
    .local v21, "isPasswordInputType":Z
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_0

    sub-int v28, v24, v25

    if-lez v28, :cond_0

    if-eqz v21, :cond_9

    :cond_0
    const/4 v11, 0x0

    .line 3806
    .local v11, "canSearch":Z
    :goto_0
    const/4 v15, 0x0

    .line 3807
    .local v15, "canTel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_1

    .line 3810
    const/16 v28, 0x4

    .line 3809
    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v22

    .line 3811
    .local v22, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3813
    const/4 v15, 0x1

    .line 3817
    .end local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    :cond_1
    const/16 v17, 0x0

    .line 3818
    .local v17, "canWeb":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3819
    if-nez v15, :cond_2

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_2

    .line 3821
    const/16 v28, 0x1

    .line 3820
    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v22

    .line 3822
    .restart local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_2

    .line 3823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3824
    const/16 v17, 0x1

    .line 3828
    .end local v22    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinkSpec;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    .line 3829
    .local v6, "canCopy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canCut()Z

    move-result v7

    .line 3830
    .local v7, "canCut":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    .line 3831
    .local v8, "canPaste":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v28

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-wrap7(Landroid/widget/Editor;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 3832
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_a

    const/4 v10, 0x0

    .line 3833
    .local v10, "canReplace":Z
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_c

    :cond_3
    const/4 v12, 0x0

    .line 3834
    .local v12, "canSelect":Z
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_d

    if-nez v25, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    :cond_4
    const/4 v13, 0x1

    .line 3835
    .local v13, "canSelectAll":Z
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_5

    if-eqz v21, :cond_e

    :cond_5
    const/4 v14, 0x0

    .line 3836
    .local v14, "canShare":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-nez v28, :cond_6

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lmiui/phrase/AddPhraseActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 3836
    :cond_6
    const/4 v9, 0x0

    .line 3842
    .local v9, "canPhrase":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 3843
    new-instance v28, Landroid/widget/TranslationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    .line 3843
    invoke-direct/range {v28 .. v30}, Landroid/widget/TranslationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    .line 3846
    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v28

    if-lez v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->hasSelection()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 3847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TranslationManager;->isAvailable()Z

    move-result v28

    .line 3846
    if-eqz v28, :cond_13

    .line 3847
    if-eqz v21, :cond_12

    const/16 v16, 0x0

    .line 3849
    .local v16, "canTranslate":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v11, :cond_14

    const/16 v28, 0x0

    :goto_7
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v15, :cond_15

    const/16 v28, 0x0

    :goto_8
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v17, :cond_16

    const/16 v28, 0x0

    :goto_9
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v6, :cond_17

    const/16 v28, 0x0

    :goto_a
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v7, :cond_18

    const/16 v28, 0x0

    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v8, :cond_19

    const/16 v28, 0x0

    :goto_c
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v10, :cond_1a

    const/16 v28, 0x0

    :goto_d
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v12, :cond_1b

    const/16 v28, 0x0

    :goto_e
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v13, :cond_1c

    const/16 v28, 0x0

    :goto_f
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v16, :cond_1d

    const/16 v28, 0x0

    :goto_10
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    if-eqz v14, :cond_1e

    const/16 v28, 0x0

    :goto_11
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    if-eqz v9, :cond_1f

    const/16 v28, 0x0

    :goto_12
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v19

    .line 3863
    .local v19, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 3864
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_13
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_20

    .line 3865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3866
    .local v18, "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_8

    .line 3867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3864
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_13

    .line 3804
    .end local v6    # "canCopy":Z
    .end local v7    # "canCut":Z
    .end local v8    # "canPaste":Z
    .end local v9    # "canPhrase":Z
    .end local v10    # "canReplace":Z
    .end local v11    # "canSearch":Z
    .end local v12    # "canSelect":Z
    .end local v13    # "canSelectAll":Z
    .end local v14    # "canShare":Z
    .end local v15    # "canTel":Z
    .end local v16    # "canTranslate":Z
    .end local v17    # "canWeb":Z
    .end local v18    # "child":Landroid/view/View;
    .end local v19    # "childCount":I
    .end local v20    # "i":I
    :cond_9
    const/4 v11, 0x1

    .restart local v11    # "canSearch":Z
    goto/16 :goto_0

    .line 3832
    .restart local v6    # "canCopy":Z
    .restart local v7    # "canCut":Z
    .restart local v8    # "canPaste":Z
    .restart local v15    # "canTel":Z
    .restart local v17    # "canWeb":Z
    :cond_a
    const/4 v10, 0x1

    .restart local v10    # "canReplace":Z
    goto/16 :goto_1

    .line 3831
    .end local v10    # "canReplace":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "canReplace":Z
    goto/16 :goto_1

    .line 3833
    :cond_c
    const/4 v12, 0x1

    .restart local v12    # "canSelect":Z
    goto/16 :goto_2

    .line 3834
    :cond_d
    const/4 v13, 0x0

    .restart local v13    # "canSelectAll":Z
    goto/16 :goto_3

    .line 3835
    :cond_e
    const/4 v14, 0x1

    .restart local v14    # "canShare":Z
    goto/16 :goto_4

    .line 3838
    :cond_f
    if-eqz v21, :cond_10

    .line 3839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 3838
    invoke-static/range {v28 .. v28}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 3840
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v28

    if-eqz v28, :cond_11

    const/4 v9, 0x0

    .restart local v9    # "canPhrase":Z
    goto/16 :goto_5

    .end local v9    # "canPhrase":Z
    :cond_11
    const/4 v9, 0x1

    .restart local v9    # "canPhrase":Z
    goto/16 :goto_5

    .line 3847
    :cond_12
    const/16 v16, 0x1

    .restart local v16    # "canTranslate":Z
    goto/16 :goto_6

    .line 3846
    .end local v16    # "canTranslate":Z
    :cond_13
    const/16 v16, 0x0

    .restart local v16    # "canTranslate":Z
    goto/16 :goto_6

    .line 3849
    :cond_14
    const/16 v28, 0x8

    goto/16 :goto_7

    .line 3850
    :cond_15
    const/16 v28, 0x8

    goto/16 :goto_8

    .line 3851
    :cond_16
    const/16 v28, 0x8

    goto/16 :goto_9

    .line 3852
    :cond_17
    const/16 v28, 0x8

    goto/16 :goto_a

    .line 3853
    :cond_18
    const/16 v28, 0x8

    goto/16 :goto_b

    .line 3854
    :cond_19
    const/16 v28, 0x8

    goto/16 :goto_c

    .line 3855
    :cond_1a
    const/16 v28, 0x8

    goto/16 :goto_d

    .line 3856
    :cond_1b
    const/16 v28, 0x8

    goto/16 :goto_e

    .line 3857
    :cond_1c
    const/16 v28, 0x8

    goto/16 :goto_f

    .line 3858
    :cond_1d
    const/16 v28, 0x8

    goto/16 :goto_10

    .line 3859
    :cond_1e
    const/16 v28, 0x8

    goto/16 :goto_11

    .line 3860
    :cond_1f
    const/16 v28, 0x8

    goto/16 :goto_12

    .line 3871
    .restart local v19    # "childCount":I
    .restart local v20    # "i":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v27

    .line 3874
    .local v27, "visibleChildCount":I
    sget-boolean v28, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v28, :cond_24

    sget-boolean v28, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v28, :cond_23

    .line 3875
    const/16 v28, 0x5

    .line 3874
    :goto_14
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_24

    .line 3876
    const/16 v23, 0x0

    .line 3881
    .local v23, "paddingHorizontal":I
    :goto_15
    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_25

    .line 3882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 3883
    .restart local v18    # "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3884
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3885
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    .line 3886
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    .line 3885
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v23

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3904
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "child":Landroid/view/View;
    :cond_21
    if-nez v6, :cond_22

    if-eqz v7, :cond_28

    .line 3909
    :cond_22
    invoke-super/range {p0 .. p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    .line 3798
    return-void

    .line 3875
    .end local v23    # "paddingHorizontal":I
    :cond_23
    const/16 v28, 0x6

    goto :goto_14

    .line 3878
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v23, v0

    .restart local v23    # "paddingHorizontal":I
    goto :goto_15

    .line 3888
    :cond_25
    const/16 v20, 0x0

    :goto_16
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_21

    .line 3889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 3890
    .restart local v18    # "child":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3892
    .restart local v5    # "bg":Landroid/graphics/drawable/Drawable;
    if-nez v20, :cond_26

    .line 3893
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3899
    :goto_17
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    .line 3900
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    .line 3899
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v23

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3888
    add-int/lit8 v20, v20, 0x1

    goto :goto_16

    .line 3894
    :cond_26
    add-int/lit8 v28, v27, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_27

    .line 3895
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_17

    .line 3897
    :cond_27
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_17

    .line 3904
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "child":Landroid/view/View;
    :cond_28
    if-nez v8, :cond_22

    if-nez v10, :cond_22

    if-nez v12, :cond_22

    if-nez v13, :cond_22

    .line 3905
    if-nez v9, :cond_22

    .line 3906
    return-void
.end method

.method protected updatePosition(II)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 4113
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    .line 4114
    .local v0, "popupWindow":Landroid/widget/Editor$AnimatePopupWindow;
    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    .line 4118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    .line 4112
    return-void
.end method
