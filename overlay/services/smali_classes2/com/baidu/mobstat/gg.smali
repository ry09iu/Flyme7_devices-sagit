.class public Lcom/baidu/mobstat/gg;
.super Lcom/baidu/mobstat/gj;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ge;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/baidu/mobstat/gj;-><init>()V

    const-string/jumbo v0, "*"

    .line 4
    iput-object v0, p0, Lcom/baidu/mobstat/gg;->a:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/mobstat/gg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 10
    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/baidu/mobstat/gg;->a:Ljava/lang/String;

    .line 13
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "http resource descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
