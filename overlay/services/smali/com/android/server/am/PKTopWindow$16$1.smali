.class Lcom/android/server/am/PKTopWindow$16$1;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$16;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$16;

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$16$1;->this$1:Lcom/android/server/am/PKTopWindow$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataASyncListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1198
    const-string/jumbo v0, "PKTopWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataASync result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return-void
.end method
