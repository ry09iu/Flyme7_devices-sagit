.class Lcom/android/server/am/PKTopWindow$1;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$1;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$1;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap5(Lcom/android/server/am/PKTopWindow;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
