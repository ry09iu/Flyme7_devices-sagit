.class public Lcom/bumptech/glide/load/model/stream/StreamStringLoader;
.super Lcom/bumptech/glide/load/model/StringLoader;
.source "StreamStringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/StringLoader",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const-class v0, Landroid/net/Uri;

    .line 36
    invoke-static {v0, p1}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/StreamStringLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/StringLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method
