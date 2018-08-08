.class Lcom/baidu/mobstat/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic f:Z

.field final synthetic g:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/baidu/mobstat/bs;->g:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bs;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/mobstat/bs;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/mobstat/bs;->d:J

    iput-object p7, p0, Lcom/baidu/mobstat/bs;->e:Lcom/baidu/mobstat/ExtraInfo;

    iput-boolean p8, p0, Lcom/baidu/mobstat/bs;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 266
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End page view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/baidu/mobstat/bs;->g:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bs;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/bs;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/bs;->c:Ljava/lang/String;

    iget-wide v6, p0, Lcom/baidu/mobstat/bs;->d:J

    iget-object v8, p0, Lcom/baidu/mobstat/bs;->e:Lcom/baidu/mobstat/ExtraInfo;

    iget-boolean v9, p0, Lcom/baidu/mobstat/bs;->f:Z

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 268
    return-void
.end method
