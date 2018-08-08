.class final Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    .line 333
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    .line 334
    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    .line 335
    return-void
.end method

.method static get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .locals 7

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "dalvik.system.CloseGuard"

    .line 367
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v1, "get"

    const/4 v2, 0x0

    .line 368
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string/jumbo v1, "open"

    const/4 v4, 0x1

    .line 369
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string/jumbo v4, "warnIfOpen"

    const/4 v5, 0x0

    .line 370
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :goto_0
    new-instance v3, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-direct {v3, v2, v1, v0}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v3

    .line 375
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 374
    goto :goto_0
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-object v4

    .line 340
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return v0

    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    goto :goto_0
.end method
