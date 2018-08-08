.class public Lcom/baidu/mobstat/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ga;


# static fields
.field protected static b:[B


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field protected c:Z

.field protected d:Lcom/baidu/mobstat/gb$a;

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/mobstat/gc;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/gb$a;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/mobstat/gc;->d:Lcom/baidu/mobstat/gb$a;

    .line 22
    sget-object v0, Lcom/baidu/mobstat/gc;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/gb;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/gc;->c:Z

    .line 32
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/gc;->d:Lcom/baidu/mobstat/gb$a;

    .line 33
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    .line 34
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/gc;->e:Z

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/gb$a;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/mobstat/gc;->d:Lcom/baidu/mobstat/gb$a;

    .line 65
    return-void
.end method

.method public a(Lcom/baidu/mobstat/gb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ft;
        }
    .end annotation

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 87
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 103
    :goto_1
    invoke-interface {p1}, Lcom/baidu/mobstat/gb;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/gc;->c:Z

    .line 104
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 83
    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    iput-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fs;
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    .line 70
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/baidu/mobstat/gc;->c:Z

    .line 60
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/baidu/mobstat/gc;->e:Z

    .line 75
    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/baidu/mobstat/gc;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/baidu/mobstat/gc;->e:Z

    return v0
.end method

.method public f()Lcom/baidu/mobstat/gb$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/mobstat/gc;->d:Lcom/baidu/mobstat/gb$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Framedata{ optcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/gc;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/gc;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payloadlength:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/gc;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/mobstat/gn;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
