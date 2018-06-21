.class Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;
.super Lcom/android/internal/policy/aod/IMiuiAodDrawnCallback$Stub;
.source "MiuiAodServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiAodDrawnCallback"
.end annotation


# instance fields
.field private mAodDrawnListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

.field final synthetic this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
    .param p2, "listener"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/aod/IMiuiAodDrawnCallback$Stub;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;->mAodDrawnListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

    .line 66
    return-void
.end method


# virtual methods
.method public onDrawn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v0, "AodServiceDelegate"

    const-string/jumbo v1, "**** Aod drawn complete  ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;->mAodDrawnListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;->mAodDrawnListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

    invoke-interface {v0}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;->onDrawn()V

    .line 71
    :cond_0
    return-void
.end method
