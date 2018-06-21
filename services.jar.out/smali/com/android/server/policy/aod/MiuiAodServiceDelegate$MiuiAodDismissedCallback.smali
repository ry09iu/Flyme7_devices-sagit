.class Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;
.super Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback$Stub;
.source "MiuiAodServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiAodDismissedCallback"
.end annotation


# instance fields
.field private mAodDismissedListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

.field final synthetic this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
    .param p2, "listener"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback$Stub;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;->mAodDismissedListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

    .line 50
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    const-string/jumbo v0, "AodServiceDelegate"

    const-string/jumbo v1, "**** Aod dismiss complete  ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;->mAodDismissedListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;->mAodDismissedListener:Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

    invoke-interface {v0}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;->onDismiss()V

    .line 55
    :cond_0
    return-void
.end method
