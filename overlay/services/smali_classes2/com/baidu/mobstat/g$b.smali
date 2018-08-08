.class Lcom/baidu/mobstat/g$b;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mobstat/g$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/g$b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "deviceid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ver"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    return-object v4

    :cond_2
    if-eqz v2, :cond_0

    new-instance v3, Lcom/baidu/mobstat/g$b;

    invoke-direct {v3}, Lcom/baidu/mobstat/g$b;-><init>()V

    iput-object v1, v3, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    iput-object v2, v3, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    iput v0, v3, Lcom/baidu/mobstat/g$b;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "deviceid"

    iget-object v2, p0, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ver"

    iget v2, p0, Lcom/baidu/mobstat/g$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
