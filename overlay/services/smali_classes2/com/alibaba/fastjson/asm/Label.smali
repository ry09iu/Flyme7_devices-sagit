.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field inputStackTop:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private addReference(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v0, v1

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p2, v0, v1

    .line 172
    return-void

    :cond_0
    const/4 v0, 0x6

    .line 163
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    .line 167
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    goto :goto_1
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget v0, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(II)V

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
    .locals 5

    .prologue
    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 191
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    const/4 v0, 0x0

    .line 193
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-lt v0, v1, :cond_0

    .line 201
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v0

    .line 195
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v0, v2, 0x1

    aget v2, v3, v2

    .line 196
    sub-int v1, p2, v1

    .line 197
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 198
    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    goto :goto_0
.end method
