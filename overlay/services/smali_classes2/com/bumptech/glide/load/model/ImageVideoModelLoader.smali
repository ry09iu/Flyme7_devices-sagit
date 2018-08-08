.class public Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<TA;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IVML"


# instance fields
.field private final fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_1

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 32
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 33
    return-void

    .line 28
    :cond_1
    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-nez v2, :cond_2

    move-object v2, v1

    .line 46
    :goto_1
    if-eqz v0, :cond_3

    .line 47
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;-><init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object v1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->streamLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;->fileDescriptorLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v2

    goto :goto_1

    .line 46
    :cond_3
    if-nez v2, :cond_0

    .line 49
    return-object v1
.end method
