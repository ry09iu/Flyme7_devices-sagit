.class public final enum Landroid/support/v8/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum NONE:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;


# instance fields
.field mID:I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 131
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v9, v9, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    .line 132
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "FLOAT_32"

    invoke-direct {v0, v1, v8, v5, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    .line 133
    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    .line 134
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "FLOAT_64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    .line 135
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "SIGNED_8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v6, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    .line 136
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "SIGNED_16"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    .line 137
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "SIGNED_32"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    .line 138
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "SIGNED_64"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    .line 139
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_8"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v7, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    .line 140
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_16"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    .line 141
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_32"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    .line 142
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_64"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    .line 144
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "BOOLEAN"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    .line 146
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_5_6_5"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    .line 147
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_5_5_5_1"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    .line 148
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "UNSIGNED_4_4_4_4"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    .line 150
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "MATRIX_4X4"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    .line 151
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "MATRIX_3X3"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/16 v4, 0x24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    .line 152
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "MATRIX_2X2"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    .line 154
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "RS_ELEMENT"

    const/16 v2, 0x12

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    .line 155
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "RS_TYPE"

    const/16 v2, 0x13

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    .line 156
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "RS_ALLOCATION"

    const/16 v2, 0x14

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    .line 157
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "RS_SAMPLER"

    const/16 v2, 0x15

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    .line 158
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string/jumbo v1, "RS_SCRIPT"

    const/16 v2, 0x16

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    .line 130
    const/16 v0, 0x17

    new-array v0, v0, [Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v9

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->$VALUES:[Landroid/support/v8/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "id"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p3, p0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    .line 169
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    .line 170
    sget v0, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 171
    const/16 v0, 0x20

    iput v0, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    .line 167
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "size"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    .line 164
    iput p4, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    .line 162
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->$VALUES:[Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method
