.class public Lcom/baidu/mobstat/es$a;
.super Lcom/baidu/mobstat/es;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/es$a$a;
    }
.end annotation


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

.field private b:Lcom/baidu/mobstat/es$b;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/es$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/es$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/baidu/mobstat/es$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/baidu/mobstat/es;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/baidu/mobstat/es$a;->a:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p3, p0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$b;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/es$a;->c:Ljava/util/WeakHashMap;

    .line 37
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getAccessibilityDelegate"

    const/4 v3, 0x0

    .line 101
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/es$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/mobstat/es$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/es$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/mobstat/es$a;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/es$a;)Lcom/baidu/mobstat/es$b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/mobstat/es$a;->c:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/baidu/mobstat/es$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/baidu/mobstat/es$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 131
    return-void

    .line 119
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es$a$a;

    .line 126
    invoke-virtual {v0}, Lcom/baidu/mobstat/es$a$a;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 112
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/baidu/mobstat/es$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/baidu/mobstat/es$a;->a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/es$a;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    .line 89
    instance-of v0, v5, Lcom/baidu/mobstat/es$a$a;

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/es$a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/es$a$a;-><init>(Lcom/baidu/mobstat/es$a;Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;Z)V

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 93
    iget-object v1, p0, Lcom/baidu/mobstat/es$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
