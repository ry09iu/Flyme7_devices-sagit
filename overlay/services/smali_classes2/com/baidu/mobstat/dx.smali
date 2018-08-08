.class Lcom/baidu/mobstat/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/baidu/mobstat/dx;->b:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/dx;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/baidu/mobstat/dx;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dx;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/baidu/mobstat/dx;->b:Lcom/baidu/mobstat/dt;

    iget-object v1, p0, Lcom/baidu/mobstat/dx;->b:Lcom/baidu/mobstat/dt;

    iget-object v2, p0, Lcom/baidu/mobstat/dx;->b:Lcom/baidu/mobstat/dt;

    invoke-static {v2}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/dx;->a:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 293
    return-void
.end method
