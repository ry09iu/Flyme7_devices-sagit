.class Lmiui/view/VolumeDialog$4;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private final sliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$row:Lmiui/view/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;
    .param p2, "val$row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 181
    iput-object p1, p0, Lmiui/view/VolumeDialog$4;->this$0:Lmiui/view/VolumeDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    .line 181
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 188
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 190
    iput-boolean v3, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    .line 192
    :cond_0
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$4;->sliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 194
    iget-object v0, p0, Lmiui/view/VolumeDialog$4;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 197
    :cond_1
    iput-boolean v2, p0, Lmiui/view/VolumeDialog$4;->dragging:Z

    .line 199
    :cond_2
    return v3

    .line 201
    :cond_3
    return v2
.end method
