.class public Lcom/bumptech/glide/load/resource/NullDecoder;
.super Ljava/lang/Object;
.source "NullDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullDecoder",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/NullDecoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/NullDecoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/NullDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/NullDecoder;->NULL_DECODER:Lcom/bumptech/glide/load/resource/NullDecoder;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 33
    return-object v0
.end method
