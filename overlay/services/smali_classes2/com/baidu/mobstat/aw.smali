.class public Lcom/baidu/mobstat/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    sput-boolean v2, Lcom/baidu/mobstat/aw;->a:Z

    .line 12
    sput-boolean v1, Lcom/baidu/mobstat/aw;->b:Z

    const-string/jumbo v0, "M"

    .line 15
    sput-object v0, Lcom/baidu/mobstat/aw;->c:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/baidu/mobstat/aw;->d:Z

    .line 19
    sput-boolean v2, Lcom/baidu/mobstat/aw;->e:Z

    return-void
.end method
