.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 463
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const-string/jumbo v0, "/"

    .line 465
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .locals 3

    .prologue
    .line 510
    if-eqz p1, :cond_0

    .line 511
    invoke-static {p1}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_1

    .line 515
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 516
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 517
    return-object p0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lokhttp3/Cookie;
    .locals 1

    .prologue
    .line 537
    new-instance v0, Lokhttp3/Cookie;

    invoke-direct {v0, p0}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
    .locals 7

    .prologue
    const-wide v0, 0xe677d21fdbffL

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    .line 486
    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    move v2, v5

    :goto_0
    if-nez v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    .line 487
    :goto_1
    cmp-long v6, v2, v0

    if-gtz v6, :cond_0

    move v4, v5

    :cond_0
    if-nez v4, :cond_3

    .line 488
    :goto_2
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 489
    iput-boolean v5, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 490
    return-object p0

    :cond_1
    move v2, v4

    .line 486
    goto :goto_0

    :cond_2
    move-wide v2, p1

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 487
    goto :goto_2
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 533
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 2

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 475
    return-object p0

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 2

    .prologue
    const-string/jumbo v0, "/"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 523
    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must start with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public secure()Lokhttp3/Cookie$Builder;
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 528
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 2

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 482
    return-object p0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
