.class Lcom/android/server/am/PKTopWindow$15;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->dismissWindowsAfter(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;

.field final synthetic val$windowIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "val$windowIndex"    # I

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$15;->this$0:Lcom/android/server/am/PKTopWindow;

    iput p2, p0, Lcom/android/server/am/PKTopWindow$15;->val$windowIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1155
    iget v0, p0, Lcom/android/server/am/PKTopWindow$15;->val$windowIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/PKTopWindow$15;->val$windowIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$15;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1156
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$15;->this$0:Lcom/android/server/am/PKTopWindow;

    iget v1, p0, Lcom/android/server/am/PKTopWindow$15;->val$windowIndex:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 1152
    return-void
.end method
