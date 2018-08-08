.class Lcom/baidu/mobstat/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    :goto_0
    if-eqz p2, :cond_1

    .line 146
    :goto_1
    if-eqz p3, :cond_2

    .line 147
    :goto_2
    if-eqz p4, :cond_3

    .line 149
    :goto_3
    iput-object p1, p0, Lcom/baidu/mobstat/l$a;->a:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/baidu/mobstat/l$a;->b:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/baidu/mobstat/l$a;->c:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/baidu/mobstat/l$a;->d:Ljava/lang/String;

    .line 153
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

    :cond_3
    const-string/jumbo p4, ""

    goto :goto_3
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "n"

    .line 158
    iget-object v2, p0, Lcom/baidu/mobstat/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "v"

    .line 159
    iget-object v2, p0, Lcom/baidu/mobstat/l$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "c"

    .line 160
    iget-object v2, p0, Lcom/baidu/mobstat/l$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "a"

    .line 161
    iget-object v2, p0, Lcom/baidu/mobstat/l$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 164
    goto :goto_0
.end method
