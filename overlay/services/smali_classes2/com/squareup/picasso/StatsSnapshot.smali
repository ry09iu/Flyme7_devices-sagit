.class public Lcom/squareup/picasso/StatsSnapshot;
.super Ljava/lang/Object;
.source "StatsSnapshot.java"


# instance fields
.field public final averageDownloadSize:J

.field public final averageOriginalBitmapSize:J

.field public final averageTransformedBitmapSize:J

.field public final cacheHits:J

.field public final cacheMisses:J

.field public final downloadCount:I

.field public final maxSize:I

.field public final originalBitmapCount:I

.field public final size:I

.field public final timeStamp:J

.field public final totalDownloadSize:J

.field public final totalOriginalBitmapSize:J

.field public final totalTransformedBitmapSize:J

.field public final transformedBitmapCount:I


# direct methods
.method public constructor <init>(IIJJJJJJJJIIIJ)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    .line 47
    iput p2, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    .line 48
    iput-wide p3, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    .line 49
    iput-wide p5, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    .line 50
    iput-wide p7, p0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    .line 51
    iput-wide p9, p0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    .line 52
    iput-wide p11, p0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    .line 53
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    .line 54
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    .line 55
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    .line 56
    move/from16 v0, p19

    iput v0, p0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    .line 57
    move/from16 v0, p20

    iput v0, p0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    .line 58
    move/from16 v0, p21

    iput v0, p0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    .line 59
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->timeStamp:J

    .line 60
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 65
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v1, "Picasso"

    .line 66
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "===============BEGIN PICASSO STATS ==============="

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Memory Cache Stats"

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Max Cache Size: "

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Cache Size: "

    .line 75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Cache % Full: "

    .line 77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    int-to-float v0, v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Cache Hits: "

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  Cache Misses: "

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Network Stats"

    .line 83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Download Count: "

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Total Download Size: "

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  Average Download Size: "

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Bitmap Stats"

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Total Bitmaps Decoded: "

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Total Bitmap Size: "

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  Total Transformed Bitmaps: "

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  Total Transformed Bitmap Size: "

    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  Average Bitmap Size: "

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "  Average Transformed Bitmap Size: "

    .line 101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "===============END PICASSO STATS ==============="

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StatsSnapshot{maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheHits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheMisses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalDownloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageDownloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalOriginalBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", totalTransformedBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageOriginalBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageTransformedBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originalBitmapCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transformedBitmapCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/picasso/StatsSnapshot;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
