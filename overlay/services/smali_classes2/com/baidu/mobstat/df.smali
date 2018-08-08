.class Lcom/baidu/mobstat/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/mobstat/cz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/baidu/mobstat/df;->a:Lcom/baidu/mobstat/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/cz;Lcom/baidu/mobstat/cz;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1336
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 1338
    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 1339
    return v0

    :cond_0
    move v2, v1

    .line 1338
    goto :goto_0

    .line 1340
    :cond_1
    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 1341
    return v0

    :cond_2
    move v0, v1

    .line 1340
    goto :goto_1

    .line 1343
    :cond_3
    return v1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1333
    check-cast p1, Lcom/baidu/mobstat/cz;

    check-cast p2, Lcom/baidu/mobstat/cz;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/df;->a(Lcom/baidu/mobstat/cz;Lcom/baidu/mobstat/cz;)I

    move-result v0

    return v0
.end method
