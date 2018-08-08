.class Lcom/android/server/am/PKTopWindowSync$4;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"

# interfaces
.implements Lcom/android/server/am/PKTopWindow$DissmissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowSync;->getPKTopWindow(Lcom/android/server/am/PKTopWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowSync;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowSync;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowSync;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$4;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDissmissListener(I)V
    .locals 3
    .param p1, "windowIndex"    # I

    .prologue
    .line 348
    const-string/jumbo v0, "PKTopWindowSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDissmissListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method
