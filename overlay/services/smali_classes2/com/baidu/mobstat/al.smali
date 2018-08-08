.class enum Lcom/baidu/mobstat/al;
.super Lcom/baidu/mobstat/aj;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/aj;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/ak;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/baidu/mobstat/ap;->a(Landroid/content/Context;)Lcom/baidu/mobstat/i;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/baidu/mobstat/ax;

    invoke-direct {v2}, Lcom/baidu/mobstat/ax;-><init>()V

    .line 43
    iput-boolean v4, v2, Lcom/baidu/mobstat/ax;->a:Z

    const-string/jumbo v3, "M"

    .line 44
    iput-object v3, v2, Lcom/baidu/mobstat/ax;->b:Ljava/lang/String;

    .line 45
    iput-boolean v4, v2, Lcom/baidu/mobstat/ax;->c:Z

    .line 48
    invoke-virtual {v2}, Lcom/baidu/mobstat/ax;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/baidu/mobstat/i;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 49
    return-void
.end method
