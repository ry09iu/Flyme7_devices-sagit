.class public abstract Lcom/baidu/mobstat/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ep$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/es$a;,
        Lcom/baidu/mobstat/es$b;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mobstat/ep;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/app/Activity;Lorg/json/JSONObject;Z)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/es;->a:Lcom/baidu/mobstat/ep;

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/es;->a:Lcom/baidu/mobstat/ep;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ep;->a(Landroid/app/Activity;)V

    .line 149
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/ep;

    invoke-direct {v0, p1, p0, p3}, Lcom/baidu/mobstat/ep;-><init>(Landroid/app/Activity;Lcom/baidu/mobstat/es;Z)V

    iput-object v0, p0, Lcom/baidu/mobstat/es;->a:Lcom/baidu/mobstat/ep;

    .line 145
    iget-object v0, p0, Lcom/baidu/mobstat/es;->a:Lcom/baidu/mobstat/ep;

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/ep;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
