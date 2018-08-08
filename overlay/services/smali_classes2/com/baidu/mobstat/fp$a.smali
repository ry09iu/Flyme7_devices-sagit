.class Lcom/baidu/mobstat/fp$a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/fp;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/fp;I)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/mobstat/fp$a;->a:Lcom/baidu/mobstat/fp;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 33
    iput p2, p0, Lcom/baidu/mobstat/fp$a;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/mobstat/fp$a;->b:I

    return v0
.end method
