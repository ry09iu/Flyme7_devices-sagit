.class Lcom/baidu/mobstat/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/i;


# instance fields
.field private a:Lcom/baidu/mobstat/au;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/au;

    iput-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;J)V

    .line 41
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/aq;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/au;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
