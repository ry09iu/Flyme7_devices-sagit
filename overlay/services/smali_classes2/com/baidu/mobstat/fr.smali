.class public Lcom/baidu/mobstat/fr;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/baidu/mobstat/fr;->a:I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 24
    iput p1, p0, Lcom/baidu/mobstat/fr;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/baidu/mobstat/fr;->a:I

    return v0
.end method
