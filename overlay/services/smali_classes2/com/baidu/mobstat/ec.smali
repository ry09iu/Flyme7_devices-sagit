.class public Lcom/baidu/mobstat/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Lcom/baidu/mobstat/ec;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/PointF;

.field private j:Lcom/baidu/mobstat/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/mobstat/ec;

    invoke-direct {v0}, Lcom/baidu/mobstat/ec;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ec;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/ek;->a()Lcom/baidu/mobstat/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->j:Lcom/baidu/mobstat/ek;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ec;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ec;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/mobstat/ec;->i:Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 2

    .prologue
    move-object v0, p1

    .line 160
    :goto_0
    if-nez v0, :cond_1

    .line 165
    :cond_0
    return-object v0

    .line 160
    :cond_1
    instance-of v1, v0, Lcom/baidu/mobstat/cs;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Lcom/baidu/mobstat/cs;

    .line 162
    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->a()Landroid/view/Window$Callback;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/baidu/mobstat/ec;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ec;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/ec;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/baidu/mobstat/ec;->c:Z

    return p1
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 254
    if-eqz p3, :cond_0

    .line 258
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->b:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/et;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 259
    return-void

    .line 255
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/ec;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/mobstat/ec;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 78
    new-instance v2, Lcom/baidu/mobstat/cs;

    new-instance v3, Lcom/baidu/mobstat/ed;

    invoke-direct {v3, p0}, Lcom/baidu/mobstat/ed;-><init>(Lcom/baidu/mobstat/ec;)V

    invoke-direct {v2, v1, v3}, Lcom/baidu/mobstat/cs;-><init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cs$a;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 109
    return-void

    .line 62
    :cond_0
    return-void

    .line 68
    :cond_1
    return-void

    .line 75
    :cond_2
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/baidu/mobstat/ec;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->h:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mobstat/ff;->s(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    iget-boolean v2, p0, Lcom/baidu/mobstat/ec;->c:Z

    if-nez v2, :cond_4

    .line 213
    iget-boolean v2, p0, Lcom/baidu/mobstat/ec;->d:Z

    if-eqz v2, :cond_5

    .line 219
    :goto_0
    iget-wide v2, p0, Lcom/baidu/mobstat/ec;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 220
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getAutoTraceTrackJsFetchTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ec;->f:J

    .line 221
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getAutoTraceTrackJsFetchInterval(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ec;->g:J

    .line 224
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/mobstat/ec;->d:Z

    if-nez v2, :cond_6

    .line 225
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ec;->f:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/baidu/mobstat/ec;->g:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    :goto_1
    if-nez v0, :cond_2

    .line 226
    :goto_2
    invoke-direct {p0}, Lcom/baidu/mobstat/ec;->e()V

    .line 228
    :cond_2
    return-void

    .line 205
    :cond_3
    return-void

    .line 209
    :cond_4
    return-void

    .line 214
    :cond_5
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    const-string/jumbo v3, "mtj_autoTracker.js"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    .line 215
    iput-boolean v0, p0, Lcom/baidu/mobstat/ec;->d:Z

    goto :goto_0

    .line 224
    :cond_6
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 225
    goto :goto_1
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ec;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 150
    return-void

    .line 140
    :cond_0
    return-void

    .line 145
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mobstat/ee;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ee;-><init>(Lcom/baidu/mobstat/ec;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "downloadThread"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lcom/baidu/mobstat/ec;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    .line 121
    iput-object p1, p0, Lcom/baidu/mobstat/ec;->b:Landroid/app/Activity;

    .line 124
    invoke-direct {p0}, Lcom/baidu/mobstat/ec;->d()V

    .line 127
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->c(Landroid/app/Activity;)V

    .line 130
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->j:Lcom/baidu/mobstat/ek;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V

    .line 131
    return-void

    .line 117
    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/ec;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    .line 192
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_autoTracker.js"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/mobstat/ec;->h:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Lcom/baidu/mobstat/ec;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->d(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/baidu/mobstat/ec;->b:Landroid/app/Activity;

    .line 183
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->j:Lcom/baidu/mobstat/ek;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;Z)V

    .line 184
    return-void

    .line 174
    :cond_0
    return-void
.end method
