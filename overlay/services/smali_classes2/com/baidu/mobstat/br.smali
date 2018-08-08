.class Lcom/baidu/mobstat/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/baidu/mobstat/br;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/br;->b:Landroid/content/Context;

    iput p4, p0, Lcom/baidu/mobstat/br;->c:I

    iput-wide p5, p0, Lcom/baidu/mobstat/br;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 238
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start page view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/baidu/mobstat/br;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/br;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/mobstat/br;->c:I

    iget-wide v4, p0, Lcom/baidu/mobstat/br;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStart(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 240
    return-void
.end method
