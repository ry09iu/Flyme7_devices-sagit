.class Lcom/baidu/mobstat/cw$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/View;

.field public c:Lcom/baidu/mobstat/cw$a;

.field public d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/baidu/mobstat/cw$c;->a:Ljava/lang/String;

    .line 431
    iput-object p2, p0, Lcom/baidu/mobstat/cw$c;->b:Landroid/view/View;

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/baidu/mobstat/cw$c;->c:Lcom/baidu/mobstat/cw$a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 433
    iput v0, p0, Lcom/baidu/mobstat/cw$c;->d:F

    .line 434
    return-void
.end method
