.class public Lcom/baidu/mobstat/ft;
.super Lcom/baidu/mobstat/fs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x3ea

    .line 21
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fs;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0x3ea

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/16 v0, 0x3ea

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/Throwable;)V

    .line 44
    return-void
.end method
