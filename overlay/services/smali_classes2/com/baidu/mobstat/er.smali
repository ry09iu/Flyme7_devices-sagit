.class Lcom/baidu/mobstat/er;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 392
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/er;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
