.class Lcom/baidu/mobstat/g$c;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Ljava/lang/String;I)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
