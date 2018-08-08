.class public Lcom/baidu/mobstat/fq;
.super Lcom/baidu/mobstat/fp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/baidu/mobstat/fp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ge;)Lcom/baidu/mobstat/ge;
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/baidu/mobstat/fp;->a(Lcom/baidu/mobstat/ge;)Lcom/baidu/mobstat/ge;

    const-string/jumbo v0, "Sec-WebSocket-Version"

    const-string/jumbo v1, "13"

    .line 19
    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method

.method public c()Lcom/baidu/mobstat/fo;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/mobstat/fq;

    invoke-direct {v0}, Lcom/baidu/mobstat/fq;-><init>()V

    return-object v0
.end method
