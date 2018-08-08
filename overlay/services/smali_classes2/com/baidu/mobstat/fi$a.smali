.class public final enum Lcom/baidu/mobstat/fi$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/fi$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/fi$a;

.field public static final enum b:Lcom/baidu/mobstat/fi$a;

.field public static final enum c:Lcom/baidu/mobstat/fi$a;

.field public static final enum d:Lcom/baidu/mobstat/fi$a;

.field public static final enum e:Lcom/baidu/mobstat/fi$a;

.field private static final synthetic f:[Lcom/baidu/mobstat/fi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/baidu/mobstat/fi$a;

    const-string/jumbo v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$a;->a:Lcom/baidu/mobstat/fi$a;

    new-instance v0, Lcom/baidu/mobstat/fi$a;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/fi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$a;->b:Lcom/baidu/mobstat/fi$a;

    new-instance v0, Lcom/baidu/mobstat/fi$a;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/fi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    new-instance v0, Lcom/baidu/mobstat/fi$a;

    const-string/jumbo v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/fi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    new-instance v0, Lcom/baidu/mobstat/fi$a;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/fi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->a:Lcom/baidu/mobstat/fi$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/fi$a;->b:Lcom/baidu/mobstat/fi$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobstat/fi$a;->f:[Lcom/baidu/mobstat/fi$a;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/fi$a;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/fi$a;

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/fi$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/fi$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/baidu/mobstat/fi$a;->f:[Lcom/baidu/mobstat/fi$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/fi$a;

    return-object v0
.end method
