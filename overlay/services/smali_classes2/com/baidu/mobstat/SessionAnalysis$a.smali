.class Lcom/baidu/mobstat/SessionAnalysis$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/SessionAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 406
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 409
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 410
    return-void
.end method
