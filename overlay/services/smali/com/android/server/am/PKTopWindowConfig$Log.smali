.class public Lcom/android/server/am/PKTopWindowConfig$Log;
.super Ljava/lang/Object;
.source "PKTopWindowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log"
.end annotation


# static fields
.field public static final LOG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "ro.pk.log"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig$Log;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_0
    const-string/jumbo v0, "PKTopWindowConfig"

    const-string/jumbo v1, "empty"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
