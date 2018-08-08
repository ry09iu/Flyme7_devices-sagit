.class public Lcom/baidu/mobstat/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ek$a;
    }
.end annotation


# static fields
.field private static final j:Lcom/baidu/mobstat/ek;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Lorg/json/JSONObject;

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/Handler;

.field private h:Lcom/baidu/mobstat/ek$a;

.field private i:Lcom/baidu/mobstat/ej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/mobstat/ek;

    invoke-direct {v0}, Lcom/baidu/mobstat/ek;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ek;->j:Lcom/baidu/mobstat/ek;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek;->f:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/baidu/mobstat/ej;

    invoke-direct {v0}, Lcom/baidu/mobstat/ej;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ek;->i:Lcom/baidu/mobstat/ej;

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "visitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ek;->g:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ek;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/baidu/mobstat/ek;->j:Lcom/baidu/mobstat/ek;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 290
    if-eqz p1, :cond_1

    .line 294
    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_2

    .line 312
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    .line 319
    :cond_0
    return-void

    .line 291
    :cond_1
    return-void

    .line 295
    :cond_2
    check-cast p1, Landroid/webkit/WebView;

    const v0, -0x17701

    .line 297
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_3

    .line 309
    :goto_0
    return-void

    .line 300
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    :cond_4
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 307
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/baidu/mobstat/StatService;->trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 300
    :cond_5
    if-eqz p2, :cond_4

    .line 301
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webview auto set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webview auto set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 313
    :cond_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 315
    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static synthetic a(Landroid/app/Activity;ZZ)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/ek;->b(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private a(Landroid/app/Activity;I)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/mobstat/ek;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ek;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 113
    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/mobstat/ek;->b:I

    if-ne v0, p2, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 286
    invoke-static {p0, v0, p1}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 287
    return-void
.end method

.method private static b(Landroid/app/Activity;ZZ)V
    .locals 0

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {p0, p2}, Lcom/baidu/mobstat/ek;->b(Landroid/app/Activity;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 96
    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/mobstat/da;->b(Landroid/app/Activity;Z)V

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek;->a:Ljava/lang/ref/WeakReference;

    .line 103
    iput v1, p0, Lcom/baidu/mobstat/ek;->b:I

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/ek;->h:Lcom/baidu/mobstat/ek$a;

    if-nez v0, :cond_2

    .line 108
    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 96
    goto :goto_0

    .line 100
    :cond_1
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ek;->h:Lcom/baidu/mobstat/ek$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ek$a;->a()V

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 61
    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Z)V

    .line 64
    iget-boolean v0, p0, Lcom/baidu/mobstat/ek;->c:Z

    if-eqz v0, :cond_1

    .line 70
    :goto_1
    if-nez p2, :cond_2

    .line 76
    :goto_2
    invoke-direct {p0, p1, v8}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek;->a:Ljava/lang/ref/WeakReference;

    .line 80
    iput v8, p0, Lcom/baidu/mobstat/ek;->b:I

    .line 84
    new-instance v3, Lcom/baidu/mobstat/es$a;

    iget-object v0, p0, Lcom/baidu/mobstat/ek;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/baidu/mobstat/ek;->i:Lcom/baidu/mobstat/ej;

    invoke-direct {v3, v8, v0, v1}, Lcom/baidu/mobstat/es$a;-><init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/es$b;)V

    .line 86
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 89
    new-instance v0, Lcom/baidu/mobstat/ek$a;

    iget-object v4, p0, Lcom/baidu/mobstat/ek;->f:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/mobstat/ek;->g:Landroid/os/Handler;

    iget-object v6, p0, Lcom/baidu/mobstat/ek;->d:Lorg/json/JSONObject;

    iget-boolean v7, p0, Lcom/baidu/mobstat/ek;->c:Z

    iget-boolean v9, p0, Lcom/baidu/mobstat/ek;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/ek$a;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/es;Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONObject;ZZZ)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek;->h:Lcom/baidu/mobstat/ek$a;

    .line 92
    return-void

    :cond_0
    move v0, v8

    .line 61
    goto :goto_0

    .line 65
    :cond_1
    iput-boolean p4, p0, Lcom/baidu/mobstat/ek;->c:Z

    goto :goto_1

    .line 71
    :cond_2
    iput-boolean p2, p0, Lcom/baidu/mobstat/ek;->e:Z

    .line 72
    iput-object p3, p0, Lcom/baidu/mobstat/ek;->d:Lorg/json/JSONObject;

    goto :goto_2

    .line 77
    :cond_3
    return-void
.end method
