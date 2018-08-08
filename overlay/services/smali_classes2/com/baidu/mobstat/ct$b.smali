.class Lcom/baidu/mobstat/ct$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/co$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ct;


# direct methods
.method private constructor <init>(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/ct;Lcom/baidu/mobstat/cu;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ct$b;-><init>(Lcom/baidu/mobstat/ct;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->e(Lcom/baidu/mobstat/ct;)V

    .line 183
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->g(Lcom/baidu/mobstat/ct;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 198
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "autoconfig.key"

    .line 199
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    iget-object v1, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v1}, Lcom/baidu/mobstat/ct;->g(Lcom/baidu/mobstat/ct;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0, p1}, Lcom/baidu/mobstat/ct;->a(Lcom/baidu/mobstat/ct;Z)V

    .line 193
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/baidu/mobstat/ct$b;->a:Lcom/baidu/mobstat/ct;

    invoke-static {v0}, Lcom/baidu/mobstat/ct;->f(Lcom/baidu/mobstat/ct;)V

    .line 188
    return-void
.end method
