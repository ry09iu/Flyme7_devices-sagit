.class public Lcom/baidu/mobstat/dq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Lcom/baidu/mobstat/dq$a;->a:I

    const/4 v0, 0x1

    .line 19
    sput v0, Lcom/baidu/mobstat/dq$a;->b:I

    const/4 v0, 0x2

    .line 20
    sput v0, Lcom/baidu/mobstat/dq$a;->c:I

    return-void
.end method
