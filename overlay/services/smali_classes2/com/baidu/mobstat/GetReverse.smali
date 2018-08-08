.class public Lcom/baidu/mobstat/GetReverse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/ICooperService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getCooperService(Landroid/content/Context;)Lcom/baidu/mobstat/ICooperService;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    if-eqz v0, :cond_0

    .line 17
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    goto :goto_0
.end method
