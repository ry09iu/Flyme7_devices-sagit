.class Lcom/baidu/mobstat/bz;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/mobstat/bz;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/bz;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    .line 135
    return-void
.end method
