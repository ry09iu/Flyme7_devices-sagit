.class Lcom/baidu/mobstat/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/mobstat/bp;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bp;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/bp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/mobstat/bp;->c:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bp;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/bp;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackSessionEndTime(Landroid/content/Context;J)V

    .line 184
    return-void
.end method
