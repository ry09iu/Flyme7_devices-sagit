.class Lcom/baidu/mobstat/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Lcom/baidu/mobstat/bw;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/baidu/mobstat/bw;

    invoke-direct {v0}, Lcom/baidu/mobstat/bw;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bw;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/baidu/mobstat/bw;->a:Lcom/baidu/mobstat/bw;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bw;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V

    .line 33
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bw;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
