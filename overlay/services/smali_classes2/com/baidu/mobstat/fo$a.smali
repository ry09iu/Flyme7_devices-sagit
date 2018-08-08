.class public final enum Lcom/baidu/mobstat/fo$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/fo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/fo$a;

.field public static final enum b:Lcom/baidu/mobstat/fo$a;

.field public static final enum c:Lcom/baidu/mobstat/fo$a;

.field private static final synthetic d:[Lcom/baidu/mobstat/fo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/baidu/mobstat/fo$a;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fo$a;->a:Lcom/baidu/mobstat/fo$a;

    new-instance v0, Lcom/baidu/mobstat/fo$a;

    const-string/jumbo v1, "ONEWAY"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/fo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fo$a;->b:Lcom/baidu/mobstat/fo$a;

    new-instance v0, Lcom/baidu/mobstat/fo$a;

    const-string/jumbo v1, "TWOWAY"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/fo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fo$a;->c:Lcom/baidu/mobstat/fo$a;

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [Lcom/baidu/mobstat/fo$a;

    sget-object v1, Lcom/baidu/mobstat/fo$a;->a:Lcom/baidu/mobstat/fo$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/fo$a;->b:Lcom/baidu/mobstat/fo$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/fo$a;->c:Lcom/baidu/mobstat/fo$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/fo$a;->d:[Lcom/baidu/mobstat/fo$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/fo$a;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/fo$a;

    .line 46
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/fo$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/fo$a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/baidu/mobstat/fo$a;->d:[Lcom/baidu/mobstat/fo$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/fo$a;

    return-object v0
.end method
