.class public final enum Landroid/support/v8/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/RenderScript$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum DEBUG:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum PROFILE:Landroid/support/v8/renderscript/RenderScript$ContextType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    .line 262
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    .line 264
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v3, v3}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    .line 269
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->DEBUG:Landroid/support/v8/renderscript/RenderScript$ContextType;

    .line 271
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    const-string/jumbo v1, "PROFILE"

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    .line 276
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->PROFILE:Landroid/support/v8/renderscript/RenderScript$ContextType;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v8/renderscript/RenderScript$ContextType;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/RenderScript$ContextType;->DEBUG:Landroid/support/v8/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v8/renderscript/RenderScript$ContextType;->PROFILE:Landroid/support/v8/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput p3, p0, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    .line 279
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/RenderScript$ContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    const-class v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/RenderScript$ContextType;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

    return-object v0
.end method
