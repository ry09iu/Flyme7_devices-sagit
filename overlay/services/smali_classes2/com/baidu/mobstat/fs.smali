.class public Lcom/baidu/mobstat/fs;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lcom/baidu/mobstat/fs;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lcom/baidu/mobstat/fs;->a:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    iput p1, p0, Lcom/baidu/mobstat/fs;->a:I

    .line 47
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/baidu/mobstat/fs;->a:I

    return v0
.end method
