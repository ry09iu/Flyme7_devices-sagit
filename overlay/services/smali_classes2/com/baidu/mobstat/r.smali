.class public Lcom/baidu/mobstat/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/baidu/mobstat/r;->a:J

    .line 12
    if-eqz p4, :cond_0

    .line 16
    :goto_0
    iput-wide p1, p0, Lcom/baidu/mobstat/r;->a:J

    .line 17
    iput-object p3, p0, Lcom/baidu/mobstat/r;->b:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/baidu/mobstat/r;->c:Ljava/lang/String;

    .line 19
    return-void

    :cond_0
    const-string/jumbo p4, ""

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/baidu/mobstat/r;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/mobstat/r;->c:Ljava/lang/String;

    return-object v0
.end method
