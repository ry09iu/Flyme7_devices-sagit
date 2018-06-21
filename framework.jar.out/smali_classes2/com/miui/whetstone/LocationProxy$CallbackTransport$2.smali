.class Lcom/miui/whetstone/LocationProxy$CallbackTransport$2;
.super Landroid/os/Handler;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/LocationProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/LocationCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/LocationProxy$CallbackTransport;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/LocationProxy$CallbackTransport;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/whetstone/LocationProxy$CallbackTransport;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$2;->this$1:Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/whetstone/LocationProxy$CallbackTransport$2;->this$1:Lcom/miui/whetstone/LocationProxy$CallbackTransport;

    invoke-static {v0, p1}, Lcom/miui/whetstone/LocationProxy$CallbackTransport;->-wrap0(Lcom/miui/whetstone/LocationProxy$CallbackTransport;Landroid/os/Message;)V

    .line 53
    return-void
.end method
