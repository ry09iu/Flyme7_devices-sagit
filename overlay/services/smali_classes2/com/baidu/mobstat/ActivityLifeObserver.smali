.class public Lcom/baidu/mobstat/ActivityLifeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    }
.end annotation


# static fields
.field private static final b:Lcom/baidu/mobstat/ActivityLifeObserver;


# instance fields
.field private a:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static instance()Lcom/baidu/mobstat/ActivityLifeObserver;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearObservers()V
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doRegister(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 65
    new-instance v1, Lcom/baidu/mobstat/ay;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ay;-><init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "registerActivityLifecycleCallbacks encounter exception"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerActivityLifeCallback(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    if-nez v0, :cond_0

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver;->doRegister(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    .line 60
    return-void

    .line 50
    :cond_0
    return-void

    .line 54
    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
