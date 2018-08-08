.class public Lcom/baidu/mobstat/eh;
.super Lcom/baidu/mobstat/ef;
.source "SourceFile"


# static fields
.field private static c:Lcom/baidu/mobstat/eh;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/baidu/mobstat/eh;

    invoke-direct {v0}, Lcom/baidu/mobstat/eh;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/eh;->c:Lcom/baidu/mobstat/eh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/mobstat/ef;-><init>()V

    .line 14
    return-void
.end method

.method public static c()Lcom/baidu/mobstat/eh;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/baidu/mobstat/eh;->c:Lcom/baidu/mobstat/eh;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "BaiduMobStat"

    .line 26
    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/baidu/mobstat/eh;->b:Z

    .line 22
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/baidu/mobstat/eh;->b:Z

    return v0
.end method
