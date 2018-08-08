.class public final Lcom/squareup/picasso/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Request$Builder;
    }
.end annotation


# static fields
.field private static final TOO_LONG_LOG:J


# instance fields
.field public final centerCrop:Z

.field public final centerInside:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field public final hasRotationPivot:Z

.field id:I

.field networkPolicy:I

.field public final onlyScaleDown:Z

.field public final priority:Lcom/squareup/picasso/Picasso$Priority;

.field public final resourceId:I

.field public final rotationDegrees:F

.field public final rotationPivotX:F

.field public final rotationPivotY:F

.field public final stableKey:Ljava/lang/String;

.field started:J

.field public final targetHeight:I

.field public final targetWidth:I

.field public final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;IIZZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/squareup/picasso/Picasso$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    .line 92
    iput p2, p0, Lcom/squareup/picasso/Request;->resourceId:I

    .line 93
    iput-object p3, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    .line 94
    if-eqz p4, :cond_0

    .line 97
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    .line 99
    :goto_0
    iput p5, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 100
    iput p6, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 101
    iput-boolean p7, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    .line 102
    iput-boolean p8, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    .line 103
    iput-boolean p9, p0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 104
    iput p10, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 105
    iput p11, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    .line 106
    iput p12, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    .line 107
    iput-boolean p13, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    .line 108
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    .line 109
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/squareup/picasso/Request;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 110
    return-void

    :cond_0
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p15}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasCustomTransformations()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget v1, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method logId()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2b

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/Request;->started:J

    sub-long v2, v0, v2

    .line 153
    sget-wide v0, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsMatrixTransform()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method needsTransformation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method plainId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/Request;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v4, 0x29

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Request{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    if-gtz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-nez v0, :cond_3

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 127
    :goto_1
    iget v0, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-gtz v0, :cond_5

    .line 130
    :goto_2
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-nez v0, :cond_6

    .line 133
    :goto_3
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-nez v0, :cond_7

    .line 136
    :goto_4
    iget v0, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const-string/jumbo v0, " rotation("

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v0, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-nez v0, :cond_8

    .line 141
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_9

    .line 146
    :goto_6
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_2
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 121
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_4
    const-string/jumbo v0, " stableKey("

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, " resize("

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, " centerCrop"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v0, " centerInside"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v0, " @ "

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 144
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method
