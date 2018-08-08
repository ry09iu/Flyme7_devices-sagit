.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x2

.field public static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$1;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 141
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 135
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    .line 136
    return v2

    .line 138
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 139
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_0
.end method
