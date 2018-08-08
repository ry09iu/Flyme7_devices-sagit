.class public Lcom/baidu/mobstat/co$c;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/co;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/co;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 265
    iput-object p1, p0, Lcom/baidu/mobstat/co$c;->a:Lcom/baidu/mobstat/co;

    .line 266
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 267
    return-void
.end method
