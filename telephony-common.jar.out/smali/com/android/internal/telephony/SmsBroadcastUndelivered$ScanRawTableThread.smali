.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
.super Ljava/lang/Thread;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanRawTableThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SmsBroadcastUndelivered;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-wrap1(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-wrap0(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->cancelNewMessageNotification(Landroid/content/Context;)V

    .line 106
    return-void
.end method
