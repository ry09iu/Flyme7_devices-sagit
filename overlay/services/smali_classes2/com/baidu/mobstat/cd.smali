.class Lcom/baidu/mobstat/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/baidu/mobstat/cd;->c:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/cd;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/cd;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/mobstat/cd;->c:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/cd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/cd;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->b(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    return-void
.end method
