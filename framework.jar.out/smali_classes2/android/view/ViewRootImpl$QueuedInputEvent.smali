.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10

.field public static final FLAG_UNHANDLED:I = 0x20


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method

.method private flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "hasPrevious"    # Z
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 6208
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 6209
    if-eqz p3, :cond_0

    .line 6210
    const-string/jumbo v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6212
    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6213
    const/4 v0, 0x1

    return v0

    .line 6215
    :cond_1
    return p3
.end method


# virtual methods
.method public shouldSendToSynthesizer()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6180
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 6181
    const/4 v0, 0x1

    return v0

    .line 6184
    :cond_0
    return v1
.end method

.method public shouldSkipIme()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6172
    iget v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6173
    const/4 v0, 0x1

    return v0

    .line 6175
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 6176
    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    .line 6175
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QueuedInputEvent{flags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6190
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 6191
    .local v0, "hasPrevious":Z
    const-string/jumbo v2, "DELIVER_POST_IME"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6192
    .local v0, "hasPrevious":Z
    const-string/jumbo v2, "DEFERRED"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6193
    const-string/jumbo v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6194
    const-string/jumbo v2, "FINISHED_HANDLED"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6195
    const-string/jumbo v2, "RESYNTHESIZED"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6196
    const-string/jumbo v2, "UNHANDLED"

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v0

    .line 6197
    if-nez v0, :cond_0

    .line 6198
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6200
    :cond_0
    const-string/jumbo v2, ", hasNextQueuedEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6201
    const-string/jumbo v2, ", hasInputEventReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "true"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6202
    const-string/jumbo v2, ", mEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6200
    :cond_1
    const-string/jumbo v2, "false"

    goto :goto_0

    .line 6201
    :cond_2
    const-string/jumbo v2, "false"

    goto :goto_1
.end method
