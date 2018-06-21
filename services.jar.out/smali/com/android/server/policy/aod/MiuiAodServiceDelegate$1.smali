.class Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;
.super Ljava/lang/Object;
.source "MiuiAodServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 128
    const-string/jumbo v0, "AodServiceDelegate"

    const-string/jumbo v1, "*** AodService connected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    invoke-static {p2}, Lcom/android/internal/policy/aod/IMiuiAodService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/aod/IMiuiAodService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->-set0(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;I)I

    .line 127
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 135
    const-string/jumbo v0, "AodServiceDelegate"

    const-string/jumbo v1, "*** AodService disconnected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;->this$0:Lcom/android/server/policy/aod/MiuiAodServiceDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->-set0(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;I)I

    .line 134
    return-void
.end method
