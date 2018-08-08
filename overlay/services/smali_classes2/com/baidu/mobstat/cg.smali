.class public Lcom/baidu/mobstat/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cg$a;,
        Lcom/baidu/mobstat/cg$b;
    }
.end annotation


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/cg;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/cg;->a:Z

    .line 28
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ct;->a(Z)V

    .line 37
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/baidu/mobstat/cg;->a:Z

    return v0
.end method

.method public static b()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->e()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
