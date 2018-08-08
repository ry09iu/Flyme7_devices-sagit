.class Lcom/baidu/mobstat/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bx;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bx;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/mobstat/by;->a:Lcom/baidu/mobstat/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/mobstat/by;->a:Lcom/baidu/mobstat/bx;

    iget-object v0, v0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/by;->a:Lcom/baidu/mobstat/bx;

    iget-object v1, v1, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    .line 116
    return-void
.end method
