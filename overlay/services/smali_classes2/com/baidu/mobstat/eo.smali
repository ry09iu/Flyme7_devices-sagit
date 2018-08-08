.class public Lcom/baidu/mobstat/eo;
.super Lcom/baidu/mobstat/ef;
.source "SourceFile"


# static fields
.field private static b:Lcom/baidu/mobstat/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/baidu/mobstat/eo;

    invoke-direct {v0}, Lcom/baidu/mobstat/eo;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/eo;->b:Lcom/baidu/mobstat/eo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/mobstat/ef;-><init>()V

    .line 15
    return-void
.end method

.method public static c()Lcom/baidu/mobstat/eo;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/baidu/mobstat/eo;->b:Lcom/baidu/mobstat/eo;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "mtj.fulltrace"

    .line 23
    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
