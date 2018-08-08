.class public Lcom/baidu/mobstat/eq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/GridView;)I
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1287
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    .line 1289
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1293
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x1

    .line 1295
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_3

    .line 1303
    :cond_0
    :goto_0
    mul-int/2addr v0, v2

    .line 1305
    if-ge v0, v1, :cond_1

    move v0, v1

    .line 1306
    :cond_1
    return v0

    .line 1290
    :cond_2
    return v1

    .line 1296
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1298
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v4

    .line 1299
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1300
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    int-to-double v6, v0

    int-to-double v4, v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0
.end method

.method public static a(Landroid/widget/ListView;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1265
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 1267
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1271
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x1

    .line 1274
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1275
    if-nez v3, :cond_2

    .line 1279
    :goto_0
    mul-int/2addr v0, v2

    .line 1281
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 1282
    :cond_0
    return v0

    .line 1268
    :cond_1
    return v1

    .line 1276
    :cond_2
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, ""

    .line 436
    return-object v0

    .line 430
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/baidu/mobstat/ey;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x1000

    const-string/jumbo v1, ""

    .line 103
    if-eqz p0, :cond_1

    .line 109
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 133
    instance-of v0, p0, Landroid/widget/Spinner;

    if-nez v0, :cond_6

    move-object v0, v1

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 145
    array-length v2, v1

    if-gt v2, v3, :cond_9

    .line 154
    :goto_1
    return-object v0

    .line 104
    :cond_1
    return-object v1

    .line 110
    :cond_2
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 117
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 118
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 119
    check-cast p0, Landroid/widget/Switch;

    .line 122
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 125
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    .line 128
    :goto_3
    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_2

    .line 113
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v0, p0

    .line 134
    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 135
    if-nez v0, :cond_8

    .line 138
    :cond_7
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 136
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_a

    const-string/jumbo v0, ""

    goto :goto_1

    .line 147
    :cond_a
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    if-eqz p0, :cond_2

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 304
    if-nez v0, :cond_3

    .line 305
    :cond_0
    return-object v1

    .line 296
    :cond_1
    return-object v1

    .line 300
    :cond_2
    return-object v1

    .line 304
    :cond_3
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 307
    check-cast v0, Landroid/view/View;

    const-class v2, Landroid/widget/ListView;

    .line 309
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Landroid/widget/GridView;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "RecyclerView"

    .line 328
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 338
    :cond_4
    :goto_0
    return-object v1

    .line 312
    :cond_5
    :try_start_0
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_7

    :cond_6
    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 318
    goto :goto_0

    .line 312
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 313
    check-cast v0, Landroid/widget/ListView;

    .line 314
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_8
    :try_start_1
    instance-of v2, v0, Landroid/widget/GridView;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 322
    check-cast v0, Landroid/widget/GridView;

    .line 323
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 330
    :cond_9
    :try_start_2
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 332
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    goto :goto_0

    .line 318
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, ""

    .line 220
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 225
    if-nez v1, :cond_1

    .line 229
    :goto_0
    if-eqz v0, :cond_2

    .line 232
    :goto_1
    return-object v0

    .line 221
    :cond_0
    return-object v0

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, ""

    .line 1061
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1070
    :cond_0
    :goto_0
    return-object v0

    .line 1062
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1063
    if-eqz v1, :cond_0

    .line 1064
    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 993
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_0

    .line 997
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v2, ""

    .line 879
    if-nez p0, :cond_1

    .line 880
    :cond_0
    return-object v2

    .line 879
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 885
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 892
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    :goto_1
    return-object v0

    .line 886
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v4, "p"

    .line 887
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "i"

    .line 889
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 579
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 581
    if-nez p0, :cond_1

    .line 582
    :cond_0
    return-object v1

    .line 581
    :cond_1
    if-eqz p1, :cond_0

    .line 587
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 591
    :goto_0
    if-eqz v3, :cond_3

    .line 596
    :goto_1
    if-nez p1, :cond_4

    :cond_2
    move-object v0, v1

    .line 647
    :goto_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 649
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_a

    .line 656
    :goto_4
    return-object v2

    .line 590
    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 592
    :cond_3
    return-object v1

    .line 597
    :cond_4
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "p"

    .line 598
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    const-string/jumbo v2, "i"

    .line 614
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "t"

    .line 616
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_2

    .line 626
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "com.android.internal.policy"

    .line 631
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 637
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v4, 0x3e8

    if-gt v2, v4, :cond_2

    .line 641
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 642
    goto :goto_1

    :cond_6
    const-string/jumbo v2, ""

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 604
    if-nez v0, :cond_8

    :cond_7
    move-object v0, v2

    .line 609
    :goto_7
    invoke-static {p1, v0}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 611
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 604
    :cond_8
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_7

    .line 605
    check-cast v0, Landroid/view/View;

    .line 606
    invoke-static {v0}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    const-string/jumbo v2, "DecorView"

    .line 632
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_2

    goto :goto_6

    .line 645
    :catch_1
    move-exception v0

    .line 644
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto/16 :goto_2

    .line 650
    :cond_a
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 654
    :catch_2
    move-exception v0

    goto/16 :goto_4
.end method

.method private static a(Landroid/view/View;Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1566
    if-eqz p0, :cond_1

    .line 1570
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 1577
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    .line 1571
    check-cast v0, Landroid/widget/TextView;

    .line 1573
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1575
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1578
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    .line 1579
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1581
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1582
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1583
    invoke-static {v2, p1}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    .line 1581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/view/View;F)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1613
    if-eqz p0, :cond_1

    .line 1617
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1618
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1620
    mul-int v3, v1, v2

    if-lez v3, :cond_2

    .line 1624
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->x(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1625
    if-nez v3, :cond_3

    .line 1629
    :cond_0
    :goto_0
    return v0

    .line 1614
    :cond_1
    return v0

    .line 1621
    :cond_2
    return v0

    .line 1625
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 1626
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    :goto_0
    return v0

    .line 1110
    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 1114
    goto :goto_0
.end method

.method public static b(Landroid/widget/GridView;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1425
    if-eqz p0, :cond_0

    .line 1429
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1442
    :goto_0
    return v0

    .line 1426
    :cond_0
    return v0

    .line 1430
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    .line 1433
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_3

    .line 1439
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 1434
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    .line 1435
    if-eqz v2, :cond_2

    .line 1436
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    div-int/2addr v0, v2

    goto :goto_1
.end method

.method public static b(Landroid/widget/ListView;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1409
    if-eqz p0, :cond_0

    .line 1413
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1418
    :goto_0
    return v0

    .line 1410
    :cond_0
    return v0

    .line 1414
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1415
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 445
    return-object v0

    .line 442
    :cond_0
    invoke-static {v0}, Lcom/baidu/mobstat/fb$a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 168
    instance-of v2, p0, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 170
    instance-of v2, p0, Landroid/webkit/WebView;

    if-nez v2, :cond_2

    .line 175
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 201
    :goto_3
    return-object v0

    :cond_1
    const-class v0, Landroid/widget/ListView;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Landroid/webkit/WebView;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.widget"

    .line 178
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "android.support.v7.widget.RecyclerView"

    .line 181
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_4
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "RecyclerView"

    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/eq;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "Object"

    goto :goto_3

    .line 184
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 1018
    if-eqz p0, :cond_1

    .line 1022
    invoke-static {p0, v1}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 1032
    :goto_1
    return-object v0

    .line 1019
    :cond_1
    return-object v0

    .line 1024
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 974
    invoke-static {}, Lcom/baidu/mobstat/eb;->a()Lcom/baidu/mobstat/eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/eb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    :goto_0
    if-eqz v0, :cond_1

    .line 982
    :goto_1
    return-object v0

    .line 976
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/dq$a;->a:I

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v2, ""

    .line 909
    if-nez p0, :cond_1

    .line 910
    :cond_0
    return-object v2

    .line 909
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 915
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 923
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    :goto_1
    return-object v0

    .line 916
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v4, "p"

    .line 917
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 918
    invoke-static {v4}, Lcom/baidu/mobstat/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "i"

    .line 920
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 926
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    if-eqz p1, :cond_0

    .line 1354
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1360
    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 1364
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    .line 1373
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 1378
    instance-of v0, p1, Landroid/widget/GridView;

    if-nez v0, :cond_5

    .line 1382
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    move v2, v1

    .line 1395
    :goto_0
    add-int/2addr v2, v3

    .line 1396
    add-int v3, v5, v0

    .line 1398
    if-gtz v2, :cond_7

    move v0, v1

    .line 1399
    :goto_1
    if-gtz v3, :cond_8

    .line 1401
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    return-object v4

    .line 1349
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    return-object v4

    .line 1362
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1363
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 1368
    :cond_2
    check-cast p1, Landroid/widget/ScrollView;

    .line 1369
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v1

    move v2, v1

    goto :goto_0

    .line 1370
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    .line 1371
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 1376
    :cond_4
    check-cast p1, Landroid/widget/ListView;

    .line 1377
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/widget/ListView;)I

    move-result v0

    move v2, v1

    .line 1378
    goto :goto_0

    .line 1380
    :cond_5
    check-cast p1, Landroid/widget/GridView;

    .line 1381
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/widget/GridView;)I

    move-result v0

    move v2, v1

    .line 1382
    goto :goto_0

    .line 1387
    :cond_6
    :try_start_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 1388
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1389
    :try_start_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v6, v2

    move v2, v0

    move v0, v6

    .line 1392
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1398
    goto :goto_1

    :cond_8
    move v1, v3

    .line 1399
    goto :goto_2

    .line 1392
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "ListView"

    .line 684
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    return v2

    :cond_1
    const-string/jumbo v0, "RecyclerView"

    .line 684
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GridView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    return v1

    .line 691
    :cond_2
    return v2
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 78
    return v0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    if-eqz p0, :cond_1

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 244
    if-nez v0, :cond_2

    .line 245
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_4

    .line 253
    invoke-static {v2}, Lcom/baidu/mobstat/eq;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 258
    check-cast v0, Landroid/view/ViewGroup;

    move v2, v1

    .line 259
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 281
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 262
    if-eqz v4, :cond_7

    .line 266
    if-eq v4, p0, :cond_3

    .line 270
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 271
    if-eqz v5, :cond_7

    .line 275
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/eq;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 259
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 1448
    if-nez p0, :cond_1

    move-object v0, v1

    .line 1455
    :goto_0
    if-nez p1, :cond_4

    :goto_1
    move-object p1, v0

    .line 1459
    :cond_0
    return-object p1

    :cond_1
    const v0, -0x17ae9

    .line 1449
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1450
    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1451
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1455
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p0, :cond_1

    .line 210
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.widget"

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 207
    return-object v0

    :cond_2
    const-string/jumbo v1, "android.view"

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/eq;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/graphics/Bitmap;)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 449
    if-eqz p0, :cond_1

    .line 457
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 459
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 463
    if-nez v0, :cond_2

    .line 472
    :cond_0
    :goto_0
    return-object v1

    .line 450
    :cond_1
    return-object v1

    .line 465
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 463
    :goto_1
    if-eqz v0, :cond_0

    .line 465
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 468
    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 463
    :goto_2
    if-nez v1, :cond_3

    .line 470
    :goto_3
    throw v0

    .line 465
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 468
    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 89
    return v0
.end method

.method public static d(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    .line 344
    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 349
    if-nez v0, :cond_2

    .line 350
    :cond_0
    return-object v2

    .line 345
    :cond_1
    return-object v2

    .line 349
    :cond_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.widget"

    .line 355
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 356
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v5, "android.view"

    .line 355
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 359
    check-cast v0, Landroid/view/ViewGroup;

    :try_start_0
    const-string/jumbo v4, "android.support.v4.view.ViewPager"

    .line 362
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 367
    :goto_0
    if-eqz v3, :cond_6

    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 376
    :try_start_1
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    move v3, v1

    .line 381
    :goto_1
    if-lt v3, v5, :cond_8

    .line 390
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_a

    .line 415
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_2
    return-object v0

    .line 368
    :cond_6
    return-object v2

    .line 372
    :cond_7
    return-object v2

    .line 382
    :cond_8
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 383
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {v6}, Lcom/baidu/mobstat/eq;->f(Landroid/view/View;)Landroid/graphics/Rect;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-nez v6, :cond_9

    .line 381
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 386
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 390
    :cond_a
    if-lt v1, v7, :cond_5

    .line 392
    :try_start_2
    new-instance v1, Lcom/baidu/mobstat/er;

    invoke-direct {v1}, Lcom/baidu/mobstat/er;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    const/4 v1, 0x1

    .line 402
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    div-int v1, v3, v1

    .line 404
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 405
    if-nez v0, :cond_b

    move v0, v1

    .line 408
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 406
    :cond_b
    rem-int v0, v1, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 419
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_2

    .line 400
    :catch_1
    move-exception v1

    goto :goto_4

    .line 365
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, ""

    .line 1003
    if-nez p0, :cond_1

    .line 1004
    :cond_0
    return-object v0

    .line 1003
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1011
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 1009
    goto :goto_0
.end method

.method public static e(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 493
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 494
    return v0

    .line 488
    :cond_0
    return v1
.end method

.method public static f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 505
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 506
    if-eqz v1, :cond_2

    .line 511
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_3

    .line 512
    :cond_0
    return-object v3

    .line 500
    :cond_1
    return-object v3

    .line 507
    :cond_2
    return-object v3

    .line 511
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    .line 515
    return-object v0
.end method

.method public static f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    .line 1198
    if-nez p0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1209
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 1213
    :goto_2
    return-object v0

    .line 1199
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1200
    if-eqz v1, :cond_0

    .line 1201
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 1210
    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static g(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 548
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const-string/jumbo v1, ":id/"

    .line 554
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 567
    :goto_2
    return-object v0

    .line 548
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    .line 556
    if-eq v2, v3, :cond_0

    .line 557
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 551
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Landroid/view/View;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v0, -0x17700

    .line 661
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 663
    if-nez v0, :cond_1

    .line 664
    :cond_0
    return-object v1

    .line 663
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 669
    :try_start_0
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    if-nez v0, :cond_3

    .line 675
    :cond_2
    return-object v1

    .line 672
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 674
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    return-object v0
.end method

.method public static i(Landroid/view/View;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x80

    const/4 v3, 0x0

    .line 780
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 786
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 810
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 814
    :goto_1
    return-object v0

    .line 781
    :cond_1
    check-cast p0, Landroid/widget/TextView;

    .line 782
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 783
    if-eqz v1, :cond_0

    .line 784
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 787
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    check-cast p0, Landroid/view/ViewGroup;

    .line 789
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v2, v3

    move v1, v3

    .line 791
    :goto_2
    if-lt v2, v5, :cond_4

    .line 803
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v2, v8, :cond_8

    .line 805
    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v8, :cond_3

    .line 792
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 793
    invoke-static {v6}, Lcom/baidu/mobstat/eq;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 794
    if-nez v6, :cond_6

    .line 791
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 794
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 795
    if-nez v1, :cond_7

    .line 798
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 799
    goto :goto_3

    :cond_7
    const-string/jumbo v1, ", "

    .line 796
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 804
    :cond_8
    invoke-virtual {v4, v3, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static j(Landroid/view/View;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v0, 0x0

    .line 825
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 838
    :cond_0
    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 839
    return v0

    .line 826
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 827
    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public static k(Landroid/view/View;)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 845
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 849
    :goto_0
    return v0

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    goto :goto_0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x1000

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 934
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 940
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 964
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 968
    :goto_1
    return-object v0

    .line 935
    :cond_1
    check-cast p0, Landroid/widget/TextView;

    .line 936
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_0

    .line 938
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    check-cast p0, Landroid/view/ViewGroup;

    .line 943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v2, v3

    move v1, v3

    .line 945
    :goto_2
    if-lt v2, v5, :cond_4

    .line 957
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v2, v8, :cond_8

    .line 959
    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 945
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_3

    .line 946
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 947
    invoke-static {v6}, Lcom/baidu/mobstat/eq;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 948
    if-nez v6, :cond_6

    .line 945
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 948
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 949
    if-nez v1, :cond_7

    .line 952
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 953
    goto :goto_3

    :cond_7
    const-string/jumbo v1, "| "

    .line 950
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 958
    :cond_8
    invoke-virtual {v4, v3, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static m(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, ""

    .line 1037
    if-eqz p0, :cond_1

    .line 1041
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1042
    if-eqz v1, :cond_2

    .line 1046
    invoke-static {v1}, Lcom/baidu/mobstat/eq;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1056
    :goto_1
    return-object v0

    .line 1038
    :cond_1
    return-object v0

    .line 1043
    :cond_2
    return-object v0

    .line 1048
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static n(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1081
    if-eqz p0, :cond_1

    .line 1085
    instance-of v3, p0, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 1087
    :cond_0
    return v1

    .line 1082
    :cond_1
    return v0

    .line 1085
    :cond_2
    instance-of v3, p0, Landroid/widget/GridView;

    if-nez v3, :cond_0

    .line 1090
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.widget"

    .line 1092
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1104
    :cond_3
    :goto_0
    return v0

    :cond_4
    const-string/jumbo v4, "android.view"

    .line 1092
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    const-string/jumbo v3, "android.support.v7.widget.RecyclerView"

    .line 1095
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1099
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1100
    goto :goto_0

    .line 1098
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static o(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1120
    if-eqz p0, :cond_1

    .line 1124
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1125
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1130
    check-cast v0, Landroid/view/View;

    .line 1131
    if-nez v0, :cond_3

    :goto_0
    move-object v0, v1

    .line 1134
    :cond_0
    return-object v0

    .line 1121
    :cond_1
    return-object v1

    .line 1126
    :cond_2
    return-object v1

    .line 1131
    :cond_3
    invoke-static {v0}, Lcom/baidu/mobstat/eq;->n(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1222
    if-nez p0, :cond_0

    .line 1225
    :goto_0
    return v0

    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public static q(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1234
    if-nez p0, :cond_0

    .line 1237
    :goto_0
    return v0

    .line 1235
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static r(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1242
    if-eqz p0, :cond_1

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.widget"

    .line 1248
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1260
    :cond_0
    :goto_0
    return v0

    .line 1243
    :cond_1
    return v0

    :cond_2
    const-string/jumbo v3, "android.view"

    .line 1248
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "android.support.v7.widget.RecyclerView"

    .line 1251
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1255
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1256
    goto :goto_0

    .line 1254
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static s(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1464
    if-eqz p0, :cond_1

    const v1, -0x17ae9

    .line 1468
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1469
    if-nez v1, :cond_2

    .line 1472
    :cond_0
    :goto_0
    return v0

    .line 1465
    :cond_1
    return v0

    .line 1469
    :cond_2
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1470
    goto :goto_0
.end method

.method public static t(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 1477
    if-eqz p0, :cond_1

    const v0, -0x17aeb

    .line 1481
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1482
    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 1486
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1490
    :goto_1
    return-object v0

    .line 1478
    :cond_1
    return-object v1

    .line 1482
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1483
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1487
    :cond_3
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->v(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static u(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 1495
    if-eqz p0, :cond_1

    const v0, -0x17aec

    .line 1499
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1500
    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 1504
    :goto_0
    return-object v0

    .line 1496
    :cond_1
    return-object v1

    .line 1500
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1501
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static v(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    .line 1509
    if-eqz p0, :cond_1

    .line 1514
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1515
    invoke-static {p0, v1}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/util/LinkedHashMap;)V

    .line 1517
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1523
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1524
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1532
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_8

    .line 1562
    :goto_2
    return-object v0

    .line 1510
    :cond_1
    return-object v0

    .line 1518
    :cond_2
    return-object v0

    .line 1524
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1526
    if-gt v0, v2, :cond_4

    move v0, v2

    :cond_4
    move v2, v0

    .line 1529
    goto :goto_0

    .line 1532
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 1537
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1538
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1539
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v0, ""

    .line 1542
    if-nez v1, :cond_6

    .line 1546
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1547
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1552
    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1543
    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string/jumbo v1, "_"

    .line 1549
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1559
    :cond_8
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static w(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1639
    if-eqz p0, :cond_1

    const v1, -0x17aea

    .line 1643
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1644
    if-nez v1, :cond_2

    .line 1648
    :cond_0
    :goto_0
    return v0

    .line 1640
    :cond_1
    return v0

    .line 1644
    :cond_2
    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1645
    goto :goto_0
.end method

.method private static x(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1590
    if-eqz p0, :cond_0

    .line 1595
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    :goto_0
    return-object v0

    .line 1591
    :cond_0
    return-object v0

    .line 1596
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1597
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method
