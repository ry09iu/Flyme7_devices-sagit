.class Lcom/baidu/mobstat/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JZ)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/baidu/mobstat/bk;->d:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bk;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/bk;->b:J

    iput-boolean p5, p0, Lcom/baidu/mobstat/bk;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/mobstat/bk;->d:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bk;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/bk;->b:J

    iget-boolean v4, p0, Lcom/baidu/mobstat/bk;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 148
    return-void
.end method
