.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;
.super Landroid/os/Handler;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;->this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;->this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-static {v0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->-wrap0(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V

    .line 48
    return-void
.end method
