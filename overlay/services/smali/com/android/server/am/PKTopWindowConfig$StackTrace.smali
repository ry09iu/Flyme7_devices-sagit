.class public Lcom/android/server/am/PKTopWindowConfig$StackTrace;
.super Ljava/lang/Object;
.source "PKTopWindowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackTrace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->SECRET_LOG:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :cond_0
    return-void
.end method
