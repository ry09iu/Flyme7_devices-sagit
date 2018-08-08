.class Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;
.super Ljava/lang/Object;
.source "UTF8Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/UTF8Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Surrogate"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final UCS4_MAX:I = 0x10ffff

.field public static final UCS4_MIN:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/alibaba/fastjson/util/UTF8Decoder;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static high(I)C
    .locals 2

    .prologue
    .line 209
    sget-boolean v0, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->$assertionsDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x10000

    .line 210
    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xd800

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->neededFor(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static low(I)C
    .locals 2

    .prologue
    .line 214
    sget-boolean v0, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->$assertionsDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x10000

    .line 215
    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 214
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder$Surrogate;->neededFor(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static neededFor(I)Z
    .locals 1

    .prologue
    const/high16 v0, 0x10000

    .line 205
    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
