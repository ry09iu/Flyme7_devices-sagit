.class Lcom/android/server/AssetAtlasService$Configuration;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Configuration"
.end annotation


# instance fields
.field final count:I

.field final flags:I

.field final height:I

.field final type:Landroid/graphics/Atlas$Type;

.field final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 6
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I

    .prologue
    .line 588
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V

    .line 587
    return-void
.end method

.method constructor <init>(Landroid/graphics/Atlas$Type;IIII)V
    .locals 0
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I
    .param p5, "flags"    # I

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    .line 593
    iput p2, p0, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    .line 594
    iput p3, p0, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    .line 595
    iput p4, p0, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    .line 596
    iput p5, p0, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    .line 591
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    const-string/jumbo v1, " count="

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
