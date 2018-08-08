.class public abstract enum Lcom/baidu/mobstat/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/aj;

.field public static final enum b:Lcom/baidu/mobstat/aj;

.field public static final enum c:Lcom/baidu/mobstat/aj;

.field public static final enum d:Lcom/baidu/mobstat/aj;

.field private static final synthetic f:[Lcom/baidu/mobstat/aj;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lcom/baidu/mobstat/ak;

    const-string/jumbo v1, "SERVICE"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/mobstat/ak;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/aj;->a:Lcom/baidu/mobstat/aj;

    .line 36
    new-instance v0, Lcom/baidu/mobstat/al;

    const-string/jumbo v1, "NO_SERVICE"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mobstat/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/aj;->b:Lcom/baidu/mobstat/aj;

    .line 52
    new-instance v0, Lcom/baidu/mobstat/am;

    const-string/jumbo v1, "RECEIVER"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/mobstat/am;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/aj;->c:Lcom/baidu/mobstat/aj;

    .line 68
    new-instance v0, Lcom/baidu/mobstat/an;

    const-string/jumbo v1, "ERISED"

    invoke-direct {v0, v1, v4, v6}, Lcom/baidu/mobstat/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/aj;->d:Lcom/baidu/mobstat/aj;

    .line 14
    new-array v0, v6, [Lcom/baidu/mobstat/aj;

    sget-object v1, Lcom/baidu/mobstat/aj;->a:Lcom/baidu/mobstat/aj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/aj;->b:Lcom/baidu/mobstat/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/aj;->c:Lcom/baidu/mobstat/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/aj;->d:Lcom/baidu/mobstat/aj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/aj;->f:[Lcom/baidu/mobstat/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/baidu/mobstat/aj;->e:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/ak;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/aj;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/baidu/mobstat/aj;
    .locals 5

    .prologue
    .line 102
    invoke-static {}, Lcom/baidu/mobstat/aj;->values()[Lcom/baidu/mobstat/aj;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 108
    sget-object v0, Lcom/baidu/mobstat/aj;->b:Lcom/baidu/mobstat/aj;

    return-object v0

    .line 102
    :cond_0
    aget-object v3, v1, v0

    .line 103
    iget v4, v3, Lcom/baidu/mobstat/aj;->e:I

    if-eq v4, p0, :cond_1

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-object v3
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "activity"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    :cond_1
    const v1, 0x7fffffff

    .line 116
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 117
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 118
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 119
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.baidu.bottom.service.BottomService"

    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 121
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/aj;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/aj;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/aj;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/aj;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/baidu/mobstat/aj;->f:[Lcom/baidu/mobstat/aj;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/aj;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/baidu/mobstat/aj;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
