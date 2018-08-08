.class Lcom/baidu/mobstat/h;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/mobstat/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/g;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/h;->a:Lcom/baidu/mobstat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/g$a;Lcom/baidu/mobstat/g$a;)I
    .locals 3

    const/4 v2, 0x0

    iget v0, p2, Lcom/baidu/mobstat/g$a;->b:I

    iget v1, p1, Lcom/baidu/mobstat/g$a;->b:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/baidu/mobstat/g$a;->d:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p1, Lcom/baidu/mobstat/g$a;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, p2, Lcom/baidu/mobstat/g$a;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-boolean v1, p2, Lcom/baidu/mobstat/g$a;->d:Z

    if-eqz v1, :cond_2

    return v2

    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/baidu/mobstat/g$a;

    check-cast p2, Lcom/baidu/mobstat/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/h;->a(Lcom/baidu/mobstat/g$a;Lcom/baidu/mobstat/g$a;)I

    move-result v0

    return v0
.end method
