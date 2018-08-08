.class public Lcom/baidu/mobstat/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/fi;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/fo;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I

.field public static c:Z

.field static final synthetic h:Z


# instance fields
.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/nio/channels/SelectionKey;

.field public g:Ljava/nio/channels/ByteChannel;

.field private final i:Lcom/baidu/mobstat/fl;

.field private volatile j:Z

.field private k:Lcom/baidu/mobstat/fi$a;

.field private l:Lcom/baidu/mobstat/fo;

.field private m:Lcom/baidu/mobstat/fi$b;

.field private n:Lcom/baidu/mobstat/gb;

.field private o:Ljava/nio/ByteBuffer;

.field private p:Lcom/baidu/mobstat/gd;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Boolean;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/baidu/mobstat/fk;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/fk;->a:Ljava/util/List;

    const/16 v0, 0x4000

    .line 38
    sput v0, Lcom/baidu/mobstat/fk;->b:I

    .line 39
    sput-boolean v1, Lcom/baidu/mobstat/fk;->c:Z

    .line 42
    sget-object v0, Lcom/baidu/mobstat/fk;->a:Ljava/util/List;

    new-instance v1, Lcom/baidu/mobstat/fq;

    invoke-direct {v1}, Lcom/baidu/mobstat/fq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/baidu/mobstat/fk;->a:Ljava/util/List;

    new-instance v1, Lcom/baidu/mobstat/fp;

    invoke-direct {v1}, Lcom/baidu/mobstat/fp;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 35
    goto :goto_0
.end method

.method public constructor <init>(Lcom/baidu/mobstat/fl;Lcom/baidu/mobstat/fo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/baidu/mobstat/fk;->j:Z

    .line 67
    sget-object v0, Lcom/baidu/mobstat/fi$a;->a:Lcom/baidu/mobstat/fi$a;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    .line 70
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    .line 74
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    .line 79
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    .line 84
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    .line 86
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->q:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->r:Ljava/lang/Integer;

    .line 88
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->s:Ljava/lang/Boolean;

    .line 90
    iput-object v1, p0, Lcom/baidu/mobstat/fk;->t:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    if-eqz p2, :cond_0

    .line 101
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->d:Ljava/util/concurrent/BlockingQueue;

    .line 102
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->e:Ljava/util/concurrent/BlockingQueue;

    .line 103
    iput-object p1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    .line 104
    sget-object v0, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->m:Lcom/baidu/mobstat/fi$b;

    .line 105
    if-nez p2, :cond_2

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-virtual {p2}, Lcom/baidu/mobstat/fo;->c()Lcom/baidu/mobstat/fo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/gi;)V
    .locals 3

    .prologue
    .line 590
    sget-boolean v0, Lcom/baidu/mobstat/fk;->c:Z

    if-nez v0, :cond_0

    .line 592
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gi;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_1
    return-void

    .line 591
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open using draft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 596
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mobstat/gb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/baidu/mobstat/fk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    return-void

    .line 503
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/fx;

    invoke-direct {v0}, Lcom/baidu/mobstat/fx;-><init>()V

    throw v0

    .line 504
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/gb;

    .line 505
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/gb;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 584
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 585
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->f(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private c(ILjava/lang/String;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x3ee

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_2

    .line 354
    if-eq p1, v3, :cond_8

    const/4 v0, -0x1

    .line 358
    invoke-virtual {p0, v0, p2, v2}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    :goto_0
    const/16 v0, 0x3ea

    .line 360
    if-eq p1, v0, :cond_b

    .line 362
    :goto_1
    sget-object v0, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    .line 364
    return-void

    .line 332
    :cond_2
    if-eq p1, v4, :cond_3

    .line 338
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fo;->b()Lcom/baidu/mobstat/fo$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/fo$a;->a:Lcom/baidu/mobstat/fo$a;

    if-ne v0, v1, :cond_6

    .line 353
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 333
    :cond_3
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_5

    .line 334
    :cond_4
    sget-object v0, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    .line 335
    invoke-virtual {p0, p1, p2, v2}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    .line 336
    return-void

    .line 333
    :cond_5
    if-eqz p3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 340
    :cond_6
    if-eqz p3, :cond_7

    .line 347
    :goto_3
    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/fz;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobstat/fz;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/gb;)V
    :try_end_0
    .catch Lcom/baidu/mobstat/fs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 351
    :catch_0
    move-exception v0

    .line 349
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    const-string/jumbo v0, "generated frame is invalid"

    .line 350
    invoke-virtual {p0, v4, v0, v2}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    goto :goto_2

    .line 342
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0, p1, p2}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/baidu/mobstat/fs; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 345
    :catch_1
    move-exception v0

    .line 344
    :try_start_2
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lcom/baidu/mobstat/fs; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 355
    :cond_8
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_a

    .line 356
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 355
    :cond_a
    if-nez p3, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 361
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    goto :goto_1
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    move-object v1, v0

    .line 155
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;
    :try_end_0
    .catch Lcom/baidu/mobstat/fr; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->m:Lcom/baidu/mobstat/fi$b;

    sget-object v2, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;
    :try_end_1
    .catch Lcom/baidu/mobstat/fu; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v0, v2, :cond_4

    .line 219
    :goto_2
    return v4

    :cond_1
    move-object v1, p1

    .line 142
    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    iput-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 158
    :cond_3
    :try_start_2
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/fk;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/fo$b;

    move-result-object v0

    .line 159
    sget-object v2, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;
    :try_end_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v2, :cond_0

    .line 161
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/gn;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->f(Ljava/nio/ByteBuffer;)V

    const/4 v0, -0x3

    const-string/jumbo v2, ""

    .line 162
    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/baidu/mobstat/fs; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/baidu/mobstat/fr; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    :goto_3
    return v4

    .line 165
    :catch_0
    move-exception v0

    const/16 v0, 0x3ee

    :try_start_4
    const-string/jumbo v2, "remote peer closed connection before flashpolicy could be transmitted"

    .line 164
    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/mobstat/fk;->c(ILjava/lang/String;Z)V
    :try_end_4
    .catch Lcom/baidu/mobstat/fr; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 218
    :catch_1
    move-exception v0

    .line 202
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 173
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    iget-object v2, p0, Lcom/baidu/mobstat/fk;->m:Lcom/baidu/mobstat/fi$b;

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/fi$b;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/fo;->d(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/gi;

    move-result-object v0

    .line 175
    instance-of v2, v0, Lcom/baidu/mobstat/gk;

    if-eqz v2, :cond_5

    .line 179
    check-cast v0, Lcom/baidu/mobstat/gk;

    .line 180
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    iget-object v3, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/gd;Lcom/baidu/mobstat/gk;)Lcom/baidu/mobstat/fo$b;

    move-result-object v2

    .line 181
    sget-object v3, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;

    if-eq v2, v3, :cond_6

    const/16 v0, 0x3ea

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "draft "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/baidu/mobstat/fu; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 200
    :catch_2
    move-exception v0

    .line 199
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/fs;)V
    :try_end_6
    .catch Lcom/baidu/mobstat/fr; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0x3ea

    :try_start_7
    const-string/jumbo v2, "wrong http function"

    .line 176
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V
    :try_end_7
    .catch Lcom/baidu/mobstat/fu; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_7 .. :try_end_7} :catch_1

    .line 177
    return v4

    .line 183
    :cond_6
    :try_start_8
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    iget-object v3, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    invoke-interface {v2, p0, v3, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gd;Lcom/baidu/mobstat/gk;)V
    :try_end_8
    .catch Lcom/baidu/mobstat/fs; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/baidu/mobstat/fu; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_8 .. :try_end_8} :catch_1

    .line 192
    :try_start_9
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/gi;)V

    .line 193
    return v5

    .line 191
    :catch_3
    move-exception v0

    .line 185
    invoke-virtual {v0}, Lcom/baidu/mobstat/fs;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/mobstat/fs;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    .line 186
    return v4

    :catch_4
    move-exception v0

    .line 188
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v2, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    const/4 v2, -0x1

    .line 189
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V
    :try_end_9
    .catch Lcom/baidu/mobstat/fu; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/baidu/mobstat/fr; {:try_start_9 .. :try_end_9} :catch_1

    .line 190
    return v4

    .line 203
    :cond_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v0}, Lcom/baidu/mobstat/fr;->a()I

    move-result v2

    .line 205
    if-eqz v2, :cond_9

    .line 208
    sget-boolean v3, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v3, :cond_a

    :cond_8
    move v0, v2

    .line 210
    :goto_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    .line 212
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 206
    :cond_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    goto :goto_4

    .line 208
    :cond_a
    invoke-virtual {v0}, Lcom/baidu/mobstat/fr;->a()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/fo;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-void

    .line 227
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/gb;

    .line 228
    sget-boolean v1, Lcom/baidu/mobstat/fk;->c:Z

    if-nez v1, :cond_4

    .line 230
    :goto_1
    invoke-interface {v0}, Lcom/baidu/mobstat/gb;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v1

    .line 231
    invoke-interface {v0}, Lcom/baidu/mobstat/gb;->d()Z

    move-result v2

    .line 233
    iget-object v4, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v5, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    if-eq v4, v5, :cond_5

    .line 236
    sget-object v4, Lcom/baidu/mobstat/gb$a;->f:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v4, :cond_6

    .line 255
    sget-object v4, Lcom/baidu/mobstat/gb$a;->d:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v4, :cond_a

    .line 258
    sget-object v4, Lcom/baidu/mobstat/gb$a;->e:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v4, :cond_b

    .line 261
    if-nez v2, :cond_c

    .line 262
    :cond_1
    sget-object v4, Lcom/baidu/mobstat/gb$a;->a:Lcom/baidu/mobstat/gb$a;

    if-ne v1, v4, :cond_d

    .line 266
    if-nez v2, :cond_f

    .line 279
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    if-eqz v2, :cond_13

    .line 283
    :goto_2
    sget-object v2, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v2, :cond_14

    .line 289
    :cond_2
    sget-object v2, Lcom/baidu/mobstat/gb$a;->a:Lcom/baidu/mobstat/gb$a;
    :try_end_0
    .catch Lcom/baidu/mobstat/fs; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v1, v2, :cond_15

    .line 298
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/baidu/mobstat/fs; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 300
    :try_start_2
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lcom/baidu/mobstat/fs; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    .line 322
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fk;->a(Lcom/baidu/mobstat/fs;)V

    .line 324
    return-void

    .line 229
    :cond_4
    :try_start_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matched frame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_5
    return-void

    :cond_6
    const/16 v2, 0x3ed

    const-string/jumbo v1, ""

    .line 239
    instance-of v4, v0, Lcom/baidu/mobstat/fy;

    if-nez v4, :cond_7

    move-object v0, v1

    move v1, v2

    .line 244
    :goto_3
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v4, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    if-eq v2, v4, :cond_8

    .line 249
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v2}, Lcom/baidu/mobstat/fo;->b()Lcom/baidu/mobstat/fo$a;

    move-result-object v2

    sget-object v4, Lcom/baidu/mobstat/fo$a;->c:Lcom/baidu/mobstat/fo$a;

    if-eq v2, v4, :cond_9

    .line 252
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/baidu/mobstat/fk;->b(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 240
    :cond_7
    check-cast v0, Lcom/baidu/mobstat/fy;

    .line 241
    invoke-interface {v0}, Lcom/baidu/mobstat/fy;->a()I

    move-result v1

    .line 242
    invoke-interface {v0}, Lcom/baidu/mobstat/fy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 246
    :cond_8
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 250
    :cond_9
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/baidu/mobstat/fk;->c(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 256
    :cond_a
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->b(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V

    goto/16 :goto_0

    .line 259
    :cond_b
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->c(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gb;)V

    goto/16 :goto_0

    .line 261
    :cond_c
    sget-object v4, Lcom/baidu/mobstat/gb$a;->a:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v4, :cond_1

    .line 303
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    if-nez v2, :cond_16

    .line 305
    sget-object v2, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v2, :cond_17

    .line 311
    sget-object v2, Lcom/baidu/mobstat/gb$a;->c:Lcom/baidu/mobstat/gb$a;

    if-eq v1, v2, :cond_18

    .line 318
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "non control or continious frame expected"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0

    .line 263
    :cond_d
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    if-nez v2, :cond_e

    .line 265
    iput-object v0, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    goto/16 :goto_2

    .line 264
    :cond_e
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0

    .line 267
    :cond_f
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    if-eqz v2, :cond_11

    .line 270
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v2}, Lcom/baidu/mobstat/gb;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v2

    sget-object v4, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-eq v2, v4, :cond_12

    :cond_10
    const/4 v2, 0x0

    .line 278
    iput-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    goto/16 :goto_2

    .line 268
    :cond_11
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0

    .line 272
    :cond_12
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v2}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x40

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 273
    iget-object v4, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v4, v0}, Lcom/baidu/mobstat/gb;->a(Lcom/baidu/mobstat/gb;)V

    .line 274
    iget-object v4, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v4}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/baidu/mobstat/gn;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 275
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fs;-><init>(I)V

    throw v0

    .line 280
    :cond_13
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0

    .line 284
    :cond_14
    invoke-interface {v0}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/gn;->b(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fs;-><init>(I)V

    throw v0

    .line 289
    :cond_15
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v1}, Lcom/baidu/mobstat/gb;->f()Lcom/baidu/mobstat/gb$a;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/gb$a;->b:Lcom/baidu/mobstat/gb$a;

    if-ne v1, v2, :cond_3

    .line 291
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v1}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v2, v0}, Lcom/baidu/mobstat/gb;->a(Lcom/baidu/mobstat/gb;)V

    .line 293
    iget-object v2, p0, Lcom/baidu/mobstat/fk;->n:Lcom/baidu/mobstat/gb;

    invoke-interface {v2}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/baidu/mobstat/gn;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fs;-><init>(I)V

    throw v0

    .line 304
    :cond_16
    new-instance v0, Lcom/baidu/mobstat/fs;

    const/16 v1, 0x3ea

    const-string/jumbo v2, "Continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fs;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/baidu/mobstat/fs; {:try_start_3 .. :try_end_3} :catch_1

    .line 307
    :cond_17
    :try_start_4
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/gn;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/baidu/mobstat/fs; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 310
    :catch_2
    move-exception v0

    .line 309
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    :try_end_5
    .catch Lcom/baidu/mobstat/fs; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 313
    :cond_18
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0}, Lcom/baidu/mobstat/gb;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/baidu/mobstat/fs; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 316
    :catch_3
    move-exception v0

    .line 315
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    :try_end_7
    .catch Lcom/baidu/mobstat/fs; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method private e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/fo$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fr;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 528
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-object v2, Lcom/baidu/mobstat/fo;->c:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 530
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-object v2, Lcom/baidu/mobstat/fo;->c:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 534
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    .line 540
    sget-object v0, Lcom/baidu/mobstat/fo$b;->a:Lcom/baidu/mobstat/fo$b;

    return-object v0

    .line 529
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    return-object v0

    .line 531
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/fr;

    sget-object v1, Lcom/baidu/mobstat/fo;->c:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fr;-><init>(I)V

    throw v0

    .line 535
    :cond_2
    sget-object v1, Lcom/baidu/mobstat/fo;->c:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-ne v1, v2, :cond_3

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 537
    sget-object v0, Lcom/baidu/mobstat/fo$b;->b:Lcom/baidu/mobstat/fo$b;

    return-object v0
.end method

.method private f(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 569
    sget-boolean v0, Lcom/baidu/mobstat/fk;->c:Z

    if-nez v0, :cond_0

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/fl;->b(Lcom/baidu/mobstat/fi;)V

    .line 581
    return-void

    .line 570
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "too big to display"

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/fl;->c(Lcom/baidu/mobstat/fi;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    .line 464
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/fk;->c(ILjava/lang/String;Z)V

    .line 465
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/fk;->c(ILjava/lang/String;Z)V

    .line 371
    return-void
.end method

.method protected declared-synchronized a(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->f:Ljava/nio/channels/SelectionKey;

    if-nez v0, :cond_1

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->g:Ljava/nio/channels/ByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 400
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    if-nez v0, :cond_3

    :goto_3
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    .line 408
    sget-object v0, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    .line 409
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    :cond_0
    monitor-exit p0

    .line 385
    return-void

    .line 390
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->f:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->g:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    .line 396
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    goto :goto_1

    .line 403
    :catch_1
    move-exception v0

    .line 402
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    goto :goto_2

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fo;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method protected a(IZ)V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 413
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;Z)V

    .line 414
    return-void
.end method

.method public a(Lcom/baidu/mobstat/fs;)V
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/baidu/mobstat/fs;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/fs;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/mobstat/fk;->c(ILjava/lang/String;Z)V

    .line 469
    return-void
.end method

.method public a(Lcom/baidu/mobstat/gb;)V
    .locals 3

    .prologue
    .line 516
    sget-boolean v0, Lcom/baidu/mobstat/fk;->c:Z

    if-nez v0, :cond_0

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/gb;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->f(Ljava/nio/ByteBuffer;)V

    .line 519
    return-void

    .line 517
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/ge;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/fu;
        }
    .end annotation

    .prologue
    .line 545
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_2

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/ge;)Lcom/baidu/mobstat/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    .line 550
    invoke-interface {p1}, Lcom/baidu/mobstat/ge;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->t:Ljava/lang/String;

    .line 551
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_3

    .line 555
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    invoke-interface {v0, p0, v1}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Lcom/baidu/mobstat/gd;)V
    :try_end_0
    .catch Lcom/baidu/mobstat/fs; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 565
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;

    iget-object v2, p0, Lcom/baidu/mobstat/fk;->m:Lcom/baidu/mobstat/fi$b;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/fo;->a(Lcom/baidu/mobstat/gi;Lcom/baidu/mobstat/fi$b;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->a(Ljava/util/List;)V

    .line 566
    return-void

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->b:Lcom/baidu/mobstat/fi$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "shall only be called once"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 562
    :catch_0
    move-exception v0

    .line 558
    new-instance v0, Lcom/baidu/mobstat/fu;

    const-string/jumbo v1, "Handshake data rejected by client."

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/fu;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V

    .line 561
    new-instance v1, Lcom/baidu/mobstat/fu;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rejected because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/fu;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 114
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_3

    .line 116
    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/fk;->c:Z

    if-nez v0, :cond_4

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->a:Lcom/baidu/mobstat/fi$a;

    if-ne v0, v1, :cond_6

    .line 122
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/fk;->c(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 132
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_b

    .line 133
    :cond_2
    return-void

    .line 114
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "too big to display"

    goto :goto_2

    .line 120
    :cond_6
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/fk;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 123
    :cond_7
    sget-boolean v0, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v0, :cond_9

    .line 125
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/fk;->d(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 132
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/mobstat/fk;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mobstat/fk;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/fx;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/fk;->b(Ljava/nio/ByteBuffer;)V

    .line 499
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/baidu/mobstat/fk;->g()Lcom/baidu/mobstat/fi$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/fi$a;->a:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_0

    .line 451
    iget-boolean v0, p0, Lcom/baidu/mobstat/fk;->j:Z

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fo;->b()Lcom/baidu/mobstat/fo$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/fo$a;->a:Lcom/baidu/mobstat/fo$a;

    if-eq v0, v1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fo;->b()Lcom/baidu/mobstat/fo$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/fo$a;->b:Lcom/baidu/mobstat/fo$a;

    if-eq v0, v1, :cond_3

    const/16 v0, 0x3ee

    .line 458
    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/fk;->a(IZ)V

    .line 460
    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    .line 450
    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/fk;->a(IZ)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mobstat/fk;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/fk;->s:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/fk;->a(IZ)V

    goto :goto_0

    .line 456
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/fk;->a(IZ)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/fk;->a(ILjava/lang/String;Z)V

    .line 425
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/fk;->j:Z

    if-nez v0, :cond_0

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->r:Ljava/lang/Integer;

    .line 432
    iput-object p2, p0, Lcom/baidu/mobstat/fk;->q:Ljava/lang/String;

    .line 433
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/fk;->s:Ljava/lang/Boolean;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/fk;->j:Z

    .line 437
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/fl;->b(Lcom/baidu/mobstat/fi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/fl;->b(Lcom/baidu/mobstat/fi;ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/baidu/mobstat/fk;->p:Lcom/baidu/mobstat/gd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 446
    return-void

    :cond_0
    monitor-exit p0

    .line 429
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 441
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->i:Lcom/baidu/mobstat/fl;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/fl;->a(Lcom/baidu/mobstat/fi;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fo;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/fx;
        }
    .end annotation

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->l:Lcom/baidu/mobstat/fo;

    iget-object v0, p0, Lcom/baidu/mobstat/fk;->m:Lcom/baidu/mobstat/fi$b;

    sget-object v2, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/fo;->a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/fk;->a(Ljava/util/Collection;)V

    .line 494
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 493
    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 608
    sget-boolean v1, Lcom/baidu/mobstat/fk;->h:Z

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v2, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    if-eq v1, v2, :cond_2

    :goto_0
    return v0

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v2, Lcom/baidu/mobstat/fi$a;->c:Lcom/baidu/mobstat/fi$a;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/baidu/mobstat/fk;->j:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 609
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->d:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/baidu/mobstat/fk;->j:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    sget-object v1, Lcom/baidu/mobstat/fi$a;->e:Lcom/baidu/mobstat/fi$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Lcom/baidu/mobstat/fi$a;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/baidu/mobstat/fk;->k:Lcom/baidu/mobstat/fi$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
