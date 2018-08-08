.class public Lcom/baidu/mobstat/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 221
    if-eqz p0, :cond_0

    move v1, v0

    .line 225
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    .line 241
    :goto_1
    return-object v0

    .line 222
    :cond_0
    return-object v2

    .line 226
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_2

    const/16 v0, -0x1388

    .line 231
    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    if-nez v0, :cond_3

    .line 225
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_3
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 233
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "baidu_mtj_edit_txtview"

    .line 234
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    .line 236
    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    .line 67
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Lcom/baidu/mobstat/cj;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    if-nez v1, :cond_1

    .line 79
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private static a(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 139
    check-cast v0, Landroid/view/View;

    .line 141
    new-instance v1, Lcom/baidu/mobstat/cl;

    invoke-direct {v1, v0, p0}, Lcom/baidu/mobstat/cl;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    .line 49
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/baidu/mobstat/cj;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    .line 61
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 54
    :cond_0
    return-void

    .line 59
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/baidu/mobstat/cj;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(FFFF)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/mobstat/cj;->b(FFFF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x1388

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 42
    :goto_0
    return v0

    .line 35
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "baidu_mtj_edit_txtview"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 38
    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    .line 86
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    if-nez v0, :cond_1

    .line 135
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 92
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-static {v0}, Lcom/baidu/mobstat/cj;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    if-nez v1, :cond_2

    .line 102
    new-instance v1, Lcom/baidu/mobstat/ch;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ch;-><init>(Landroid/content/Context;)V

    const v2, -0xff8501

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v2, 0x11

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v2, "\u5708\u9009\u4e2d"

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, -0x1388

    const-string/jumbo v3, "baidu_mtj_edit_txtview"

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 112
    new-instance v2, Lcom/baidu/mobstat/ck;

    invoke-direct {v2, v0, p0, v1}, Lcom/baidu/mobstat/ck;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    invoke-static {p0, v1}, Lcom/baidu/mobstat/cj;->a(Landroid/app/Activity;Landroid/widget/TextView;)V

    goto :goto_1

    .line 99
    :cond_2
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u662f\u5426\u786e\u8ba4\u9000\u51fa\u5708\u9009?"

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u786e\u5b9a"

    .line 247
    new-instance v2, Lcom/baidu/mobstat/cm;

    invoke-direct {v2}, Lcom/baidu/mobstat/cm;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    .line 261
    new-instance v2, Lcom/baidu/mobstat/cn;

    invoke-direct {v2}, Lcom/baidu/mobstat/cn;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 269
    return-void
.end method

.method private static b(FFFF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    .line 210
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 211
    sub-float v3, p2, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 212
    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    cmpl-float v0, v3, v4

    if-lez v0, :cond_2

    .line 213
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    return v1
.end method
