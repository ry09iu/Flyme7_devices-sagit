.class public Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "PKTopWindowCommonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mImageView:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 331
    sput-object p1, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->mImageView:Landroid/widget/ImageView;

    .line 332
    sput-object p2, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->mHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 336
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 337
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 340
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 341
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "urls"    # [Ljava/lang/Object;

    .prologue
    .line 335
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "urls":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    sget-object v0, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;-><init>(Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
