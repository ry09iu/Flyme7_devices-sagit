.class Lcom/baidu/mobstat/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/baidu/mobstat/ea;->c:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/ea;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/ea;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/baidu/mobstat/ea;->c:Lcom/baidu/mobstat/dt;

    iget-object v1, p0, Lcom/baidu/mobstat/ea;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ea;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/dt;->b(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 572
    return-void
.end method
