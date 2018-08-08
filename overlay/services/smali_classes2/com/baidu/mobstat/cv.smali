.class Lcom/baidu/mobstat/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/cp$a;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ct;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/baidu/mobstat/cv;->a:Lcom/baidu/mobstat/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/cv;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->d(Lcom/baidu/mobstat/ct;)V

    .line 174
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onGesture"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
