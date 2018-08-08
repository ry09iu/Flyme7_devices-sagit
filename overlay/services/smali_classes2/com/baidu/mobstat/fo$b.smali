.class public final enum Lcom/baidu/mobstat/fo$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/fo$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/fo$b;

.field public static final enum b:Lcom/baidu/mobstat/fo$b;

.field private static final synthetic c:[Lcom/baidu/mobstat/fo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/baidu/mobstat/fo$b;

    const-string/jumbo v1, "MATCHED"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fo$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;

    .line 41
    new-instance v0, Lcom/baidu/mobstat/fo$b;

    const-string/jumbo v1, "NOT_MATCHED"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/fo$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lcom/baidu/mobstat/fo$b;

    sget-object v1, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobstat/fo$b;->c:[Lcom/baidu/mobstat/fo$b;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/fo$b;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/fo$b;

    .line 37
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/fo$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/fo$b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/mobstat/fo$b;->c:[Lcom/baidu/mobstat/fo$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/fo$b;

    return-object v0
.end method
