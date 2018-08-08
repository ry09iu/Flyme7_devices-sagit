.class Lcom/squareup/picasso/FileRequestHandler;
.super Lcom/squareup/picasso/ContentStreamRequestHandler;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/picasso/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static getFileExifRotation(Landroid/net/Uri;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    .line 56
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    .line 50
    return v0

    :pswitch_2
    const/16 v0, 0xb4

    .line 52
    return v0

    :pswitch_3
    const/16 v0, 0x10e

    .line 54
    return v0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "file"

    .line 38
    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/FileRequestHandler;->getInputStream(Lcom/squareup/picasso/Request;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object v3, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/squareup/picasso/FileRequestHandler;->getFileExifRotation(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-object v0
.end method
