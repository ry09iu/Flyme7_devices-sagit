.class public final enum Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/MtjConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedTrackStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

.field public static final enum TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

.field public static final enum TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

.field private static final synthetic a:[Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    const-string/jumbo v1, "TRACK_ALL"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 16
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    const-string/jumbo v1, "TRACK_SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 20
    new-instance v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    const-string/jumbo v1, "TRACK_NONE"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->a:[Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->a:[Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    return-object v0
.end method
