.class Lcom/baidu/mobstat/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/baidu/mobstat/dw;->b:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/dw;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/baidu/mobstat/dw;->b:Lcom/baidu/mobstat/dt;

    iget-object v1, p0, Lcom/baidu/mobstat/dw;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Z)V

    .line 277
    return-void
.end method
