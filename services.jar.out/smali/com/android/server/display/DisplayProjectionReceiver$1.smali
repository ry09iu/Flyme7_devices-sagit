.class Lcom/android/server/display/DisplayProjectionReceiver$1;
.super Ljava/lang/Thread;
.source "DisplayProjectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayProjectionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayProjectionReceiver;

.field final synthetic val$iface:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayProjectionReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayProjectionReceiver;
    .param p2, "val$iface"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/display/DisplayProjectionReceiver$1;->this$0:Lcom/android/server/display/DisplayProjectionReceiver;

    iput-object p2, p0, Lcom/android/server/display/DisplayProjectionReceiver$1;->val$iface:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver$1;->this$0:Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-static {v0}, Lcom/android/server/display/DisplayProjectionReceiver;->-get0(Lcom/android/server/display/DisplayProjectionReceiver;)Lcom/android/server/display/MiuiProjectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayProjectionReceiver$1;->val$iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MiuiProjectionManager;->startProjection(Ljava/lang/String;)V

    .line 33
    return-void
.end method
