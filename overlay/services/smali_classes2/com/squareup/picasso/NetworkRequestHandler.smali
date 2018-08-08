.class Lcom/squareup/picasso/NetworkRequestHandler;
.super Lcom/squareup/picasso/RequestHandler;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;
    }
.end annotation


# static fields
.field static final RETRY_COUNT:I = 0x2

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final downloader:Lcom/squareup/picasso/Downloader;

.field private final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Stats;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    .line 38
    iput-object p2, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    .line 39
    return-void
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method getRetryCount()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 76
    return v0
.end method

.method public load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 47
    iget-object v0, p0, Lcom/squareup/picasso/NetworkRequestHandler;->downloader:Lcom/squareup/picasso/Downloader;

    iget-object v2, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iget v3, p1, Lcom/squareup/picasso/Request;->networkPolicy:I

    invoke-interface {v0, v2, v3}, Lcom/squareup/picasso/Downloader;->load(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 52
    iget-boolean v0, v2, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 54
    :goto_0
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 55
    if-nez v3, :cond_4

    .line 59
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_5

    .line 65
    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-eq v0, v4, :cond_6

    .line 69
    :cond_0
    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-eq v0, v4, :cond_7

    .line 72
    :cond_1
    :goto_1
    new-instance v1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {v1, v3, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1

    .line 49
    :cond_2
    return-object v4

    .line 52
    :cond_3
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_0

    .line 56
    :cond_4
    new-instance v1, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-direct {v1, v3, v0}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object v1

    .line 61
    :cond_5
    return-object v4

    .line 65
    :cond_6
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 66
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    .line 67
    new-instance v0, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    const-string/jumbo v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_7
    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/squareup/picasso/NetworkRequestHandler;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Downloader$Response;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/squareup/picasso/Stats;->dispatchDownloadFinished(J)V

    goto :goto_1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
