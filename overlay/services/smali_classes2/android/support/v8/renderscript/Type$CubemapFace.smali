.class public final enum Landroid/support/v8/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "POSITIVE_X"

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 66
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "NEGATIVE_X"

    invoke-direct {v0, v1, v5, v5}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 67
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "POSITIVE_Y"

    invoke-direct {v0, v1, v6, v6}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 68
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "NEGATIVE_Y"

    invoke-direct {v0, v1, v7, v7}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 69
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "POSITIVE_Z"

    invoke-direct {v0, v1, v8, v8}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 70
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string/jumbo v1, "NEGATIVE_Z"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/v8/renderscript/Type$CubemapFace;

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v8

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->$VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Type$CubemapFace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Type$CubemapFace;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->$VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

    return-object v0
.end method
