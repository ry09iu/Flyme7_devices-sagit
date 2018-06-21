.class Lcom/android/server/policy/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-static/range {p0 .. p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 41
    return-void

    .line 44
    :cond_0
    sget v20, Lmiui/R$attr;->windowTranslucentStatus:I

    .line 45
    const/16 v21, 0x0

    .line 44
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v17

    .line 46
    .local v17, "translucentStatus":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 47
    sget v21, Lcom/miui/internal/R$integer;->window_translucent_status:I

    .line 46
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 48
    .local v8, "globalTranslucentStatus":I
    if-ltz v8, :cond_1

    .line 49
    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v8, v0, :cond_1

    .line 50
    move/from16 v17, v8

    .line 52
    :cond_1
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v19

    .line 53
    .local v19, "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 55
    sget v20, Lmiui/R$attr;->windowActionBar:I

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 56
    sget v20, Lmiui/R$attr;->startingWindowOverlay:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v10

    .line 57
    .local v10, "overlayRes":I
    if-gtz v10, :cond_2

    .line 58
    return-void

    .line 59
    :cond_2
    sget v20, Lcom/miui/internal/R$layout;->starting_window_simple:I

    move/from16 v0, v20

    if-ne v10, v0, :cond_5

    .line 60
    const v20, 0x1103001a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    .line 66
    const v20, 0x110b0049

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 67
    .local v11, "statusBar":Landroid/view/View;
    if-eqz v11, :cond_3

    .line 68
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 69
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string/jumbo v22, "status_bar_height"

    const-string/jumbo v23, "dimen"

    const-string/jumbo v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    sget-object v20, Lmiui/R$styleable;->ActionBar:[I

    const/16 v21, 0x0

    .line 74
    const v22, 0x10102ce

    const/16 v23, 0x0

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 75
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v20, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    .line 76
    const/16 v21, 0x0

    .line 75
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 77
    .local v15, "titleStyleRes":I
    sget v20, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    .line 78
    const/16 v21, 0x0

    .line 77
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 79
    .local v12, "titleCenter":Z
    sget v20, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    .line 80
    const/16 v21, 0x0

    .line 79
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 82
    .local v7, "displayOptions":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const v20, 0x110b0048

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, "actionBar":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 86
    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    .line 87
    sget v21, Lmiui/R$attr;->colorPrimary:I

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_4
    const v20, 0x110b004a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 91
    .local v14, "titleLayout":Landroid/view/View;
    const v20, 0x110b0010

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 92
    .local v16, "titleView":Landroid/widget/TextView;
    const v20, 0x110b000f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 95
    .local v18, "upView":Landroid/widget/ImageView;
    and-int/lit8 v20, v7, 0x8

    if-nez v20, :cond_6

    .line 96
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 62
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "actionBar":Landroid/view/View;
    .end local v7    # "displayOptions":I
    .end local v11    # "statusBar":Landroid/view/View;
    .end local v12    # "titleCenter":Z
    .end local v14    # "titleLayout":Landroid/view/View;
    .end local v15    # "titleStyleRes":I
    .end local v16    # "titleView":Landroid/widget/TextView;
    .end local v18    # "upView":Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    .line 63
    return-void

    .line 101
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "actionBar":Landroid/view/View;
    .restart local v7    # "displayOptions":I
    .restart local v11    # "statusBar":Landroid/view/View;
    .restart local v12    # "titleCenter":Z
    .restart local v14    # "titleLayout":Landroid/view/View;
    .restart local v15    # "titleStyleRes":I
    .restart local v16    # "titleView":Landroid/widget/TextView;
    .restart local v18    # "upView":Landroid/widget/ImageView;
    :cond_6
    if-eqz v12, :cond_9

    and-int/lit8 v20, v7, 0x2

    if-nez v20, :cond_9

    .line 102
    and-int/lit8 v20, v7, 0x4

    if-nez v20, :cond_9

    .line 104
    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v13, "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v13    # "titleLP":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    if-eqz v15, :cond_7

    .line 117
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 121
    :cond_7
    if-eqz p3, :cond_8

    .line 122
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "actionBar":Landroid/view/View;
    .end local v7    # "displayOptions":I
    .end local v10    # "overlayRes":I
    .end local v11    # "statusBar":Landroid/view/View;
    .end local v12    # "titleCenter":Z
    .end local v14    # "titleLayout":Landroid/view/View;
    .end local v15    # "titleStyleRes":I
    .end local v16    # "titleView":Landroid/widget/TextView;
    .end local v18    # "upView":Landroid/widget/ImageView;
    :cond_8
    return-void

    .line 112
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "actionBar":Landroid/view/View;
    .restart local v7    # "displayOptions":I
    .restart local v10    # "overlayRes":I
    .restart local v11    # "statusBar":Landroid/view/View;
    .restart local v12    # "titleCenter":Z
    .restart local v14    # "titleLayout":Landroid/view/View;
    .restart local v15    # "titleStyleRes":I
    .restart local v16    # "titleView":Landroid/widget/TextView;
    .restart local v18    # "upView":Landroid/widget/ImageView;
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static performReleaseHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 2
    .param p0, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 31
    .local v0, "down":Z
    :goto_0
    return-void

    .line 32
    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0
.end method
