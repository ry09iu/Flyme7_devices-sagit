.class public Lcom/baidu/mobstat/eg;
.super Lcom/baidu/mobstat/ef;
.source "SourceFile"


# static fields
.field private static c:Lcom/baidu/mobstat/eg;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/baidu/mobstat/eg;

    invoke-direct {v0}, Lcom/baidu/mobstat/eg;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/eg;->c:Lcom/baidu/mobstat/eg;

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

.method public static c()Lcom/baidu/mobstat/eg;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/baidu/mobstat/eg;->c:Lcom/baidu/mobstat/eg;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Bottom"

    .line 26
    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/baidu/mobstat/eg;->b:Z

    return v0
.end method
