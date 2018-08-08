.class public abstract Lcom/baidu/mobstat/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/fl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/fi;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/baidu/mobstat/fi;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/fu;

    const-string/jumbo v1, "socket not bound"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fu;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gd;Lcom/baidu/mobstat/gk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public b(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/baidu/mobstat/gc;

    invoke-direct {v0, p2}, Lcom/baidu/mobstat/gc;-><init>(Lcom/baidu/mobstat/gb;)V

    .line 62
    sget-object v1, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/gc;->a(Lcom/baidu/mobstat/gb$a;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/fi;->a(Lcom/baidu/mobstat/gb;)V

    .line 64
    return-void
.end method

.method public c(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
