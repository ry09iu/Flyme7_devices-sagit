.class Lcom/baidu/mobstat/dp;
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
        "Ljava/util/Map$Entry",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/baidu/mobstat/dp;->a:Lcom/baidu/mobstat/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 654
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/dp;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method
