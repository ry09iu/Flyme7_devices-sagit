.class Lcom/baidu/mobstat/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/baidu/mobstat/bl;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bl;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 886
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V

    .line 887
    return-void
.end method
