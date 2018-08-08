.class Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .prologue
    .line 498
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    .line 499
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-nez v0, :cond_0

    .line 518
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-eqz v0, :cond_1

    .line 521
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    .line 522
    return-void

    .line 517
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(ZLjava/io/IOException;)V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 503
    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-nez v0, :cond_2

    .line 505
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_3

    .line 507
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 508
    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 509
    iput-boolean v1, p0, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(ZLjava/io/IOException;)V

    .line 511
    return-wide v4

    .line 504
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_3
    return-wide v4

    .line 513
    :cond_4
    return-wide v2
.end method
