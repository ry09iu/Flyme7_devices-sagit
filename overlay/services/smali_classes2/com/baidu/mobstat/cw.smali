.class public Lcom/baidu/mobstat/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cw$a;,
        Lcom/baidu/mobstat/cw$b;,
        Lcom/baidu/mobstat/cw$c;
    }
.end annotation


# static fields
.field private static volatile d:I


# instance fields
.field private final a:Lcom/baidu/mobstat/cw$b;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/baidu/mobstat/cw;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cw;->b:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/baidu/mobstat/cw$b;

    invoke-direct {v0}, Lcom/baidu/mobstat/cw$b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cw;->a:Lcom/baidu/mobstat/cw$b;

    .line 54
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput v0, Lcom/baidu/mobstat/cw;->d:I

    .line 58
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    if-eqz p2, :cond_2

    .line 131
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_3

    .line 137
    invoke-static {p2}, Lcom/baidu/mobstat/cj;->a(Landroid/view/View;)Z

    move-result v0

    .line 139
    if-nez v0, :cond_4

    .line 143
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 149
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 152
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "p"

    .line 153
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_0
    :goto_0
    const-string/jumbo v7, "i"

    .line 164
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "t"

    .line 167
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "path"

    .line 169
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    .line 171
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "value"

    .line 172
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "x"

    .line 176
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 177
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "w"

    .line 178
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "h"

    .line 179
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "frame"

    .line 180
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "alpha"

    .line 182
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->j(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "page"

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "z"

    .line 184
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->k(Landroid/view/View;)F

    move-result v3

    float-to-double v8, v3

    invoke-virtual {v5, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 186
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_7

    .line 214
    :goto_1
    invoke-static {p2, p4}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "edit"

    .line 215
    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    invoke-virtual {p3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 220
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_c

    .line 224
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    const-string/jumbo v0, "child"

    .line 234
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_1
    return-void

    .line 128
    :cond_2
    return-void

    .line 134
    :cond_3
    return-void

    .line 140
    :cond_4
    return-void

    .line 146
    :cond_5
    return-void

    .line 158
    :cond_6
    invoke-static {p2, p4}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 160
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, ""

    move-object v0, p2

    .line 190
    check-cast v0, Landroid/webkit/WebView;

    .line 191
    invoke-static {p1, v0, v4}, Lcom/baidu/mobstat/et;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v2

    move-object v2, v3

    .line 200
    :goto_3
    if-eqz v0, :cond_9

    :goto_4
    const-string/jumbo v3, "child"

    .line 203
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "url"

    .line 210
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 193
    :cond_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    .line 195
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "objects"

    .line 196
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_3

    .line 201
    :cond_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "url"

    const-string/jumbo v2, "/"

    .line 208
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x1

    .line 215
    goto :goto_2

    .line 221
    :cond_c
    return-void

    .line 225
    :cond_d
    check-cast p2, Landroid/view/ViewGroup;

    .line 227
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v2, "child"

    .line 228
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :goto_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 231
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v7}, Lcom/baidu/mobstat/cw;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private c(Landroid/app/Activity;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 122
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/baidu/mobstat/cw;->a(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 123
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/cp;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    sget v1, Lcom/baidu/mobstat/cw;->d:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/baidu/mobstat/cw;->d:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 78
    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cw;->b(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_4

    .line 85
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cw;->c(Landroid/app/Activity;)Lorg/json/JSONArray;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/fb$a;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v4, p0, Lcom/baidu/mobstat/cw;->c:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 91
    :cond_0
    iput-object v1, p0, Lcom/baidu/mobstat/cw;->c:Ljava/lang/String;

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    invoke-static {v2}, Lcom/baidu/mobstat/eq;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "screenshot"

    .line 96
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-static {v2}, Lcom/baidu/mobstat/eq;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "hash"

    .line 99
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "w"

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "h"

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "screen"

    .line 108
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "page"

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "objects"

    .line 111
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    return-object v1

    .line 64
    :cond_1
    return-object v0

    .line 70
    :cond_2
    return-object v0

    .line 74
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/cp;->a(Z)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    :goto_2
    move-object v1, v0

    goto :goto_1

    .line 81
    :cond_4
    return-object v0

    .line 87
    :cond_5
    iget-object v4, p0, Lcom/baidu/mobstat/cw;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    return-object v0

    .line 114
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public b(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 239
    iget-object v0, p0, Lcom/baidu/mobstat/cw;->a:Lcom/baidu/mobstat/cw$b;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cw$b;->a(Landroid/app/Activity;)V

    .line 240
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/baidu/mobstat/cw;->a:Lcom/baidu/mobstat/cw$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 241
    iget-object v1, p0, Lcom/baidu/mobstat/cw;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 245
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 258
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 259
    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cw$c;

    .line 264
    iget-object v0, v0, Lcom/baidu/mobstat/cw$c;->c:Lcom/baidu/mobstat/cw$a;

    invoke-static {v0}, Lcom/baidu/mobstat/cw$a;->a(Lcom/baidu/mobstat/cw$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x2

    .line 246
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v3, "autotrace: Screenshot interrupted, no screenshot will be sent."

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    .line 251
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v3, "autotrace: Screenshot took more than 2 second to be scheduled and executed. No screenshot will be sent."

    .line 252
    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 256
    :catch_2
    move-exception v0

    .line 255
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v3, "autotrace: Exception thrown during screenshot attempt"

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/eh;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 260
    :cond_1
    return-object v6
.end method
