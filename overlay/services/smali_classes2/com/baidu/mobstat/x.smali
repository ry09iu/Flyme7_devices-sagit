.class enum Lcom/baidu/mobstat/x;
.super Lcom/baidu/mobstat/t;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/t;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/u;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/mobstat/s;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/baidu/mobstat/ad;

    invoke-direct {v0}, Lcom/baidu/mobstat/ad;-><init>()V

    return-object v0
.end method
