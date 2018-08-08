.class Lcom/baidu/mobstat/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/mobstat/es;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lcom/baidu/mobstat/ek$a;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ek$a;Ljava/lang/ref/WeakReference;ZLcom/baidu/mobstat/es;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/baidu/mobstat/el;->e:Lcom/baidu/mobstat/ek$a;

    iput-object p2, p0, Lcom/baidu/mobstat/el;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/el;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/el;->c:Lcom/baidu/mobstat/es;

    iput-object p5, p0, Lcom/baidu/mobstat/el;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/baidu/mobstat/el;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 239
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/mobstat/el;->b:Z

    invoke-static {v0, v1}, Lcom/baidu/mobstat/da;->c(Landroid/app/Activity;Z)V

    .line 241
    iget-object v1, p0, Lcom/baidu/mobstat/el;->c:Lcom/baidu/mobstat/es;

    iget-object v2, p0, Lcom/baidu/mobstat/el;->d:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/baidu/mobstat/el;->b:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/es;->a(Landroid/app/Activity;Lorg/json/JSONObject;Z)V

    goto :goto_0
.end method
