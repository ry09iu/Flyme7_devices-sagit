.class Lcom/baidu/mobstat/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/es;

.field final synthetic b:Lcom/baidu/mobstat/ek$a;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ek$a;Lcom/baidu/mobstat/es;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/baidu/mobstat/em;->b:Lcom/baidu/mobstat/ek$a;

    iput-object p2, p0, Lcom/baidu/mobstat/em;->a:Lcom/baidu/mobstat/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/baidu/mobstat/em;->a:Lcom/baidu/mobstat/es;

    invoke-virtual {v0}, Lcom/baidu/mobstat/es;->a()V

    .line 269
    return-void
.end method
