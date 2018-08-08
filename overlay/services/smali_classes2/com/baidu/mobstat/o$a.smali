.class Lcom/baidu/mobstat/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/baidu/mobstat/o$a;->a:Ljava/lang/String;

    .line 299
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/baidu/mobstat/o$a;->b:Ljava/lang/String;

    .line 300
    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lcom/baidu/mobstat/o$a;->c:Ljava/lang/String;

    .line 301
    return-void

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0

    :cond_1
    const-string/jumbo p2, ""

    goto :goto_1

    :cond_2
    const-string/jumbo p3, ""

    goto :goto_2
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "n"

    .line 306
    iget-object v2, p0, Lcom/baidu/mobstat/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "v"

    .line 307
    iget-object v2, p0, Lcom/baidu/mobstat/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "w"

    .line 308
    iget-object v2, p0, Lcom/baidu/mobstat/o$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-object v0

    :catch_0
    move-exception v0

    .line 312
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 315
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/baidu/mobstat/o$a;->a:Ljava/lang/String;

    return-object v0
.end method
