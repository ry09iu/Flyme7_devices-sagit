.class Lcom/android/server/am/PKTopWindow$3;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 120
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$3;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$3;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap5(Lcom/android/server/am/PKTopWindow;)V

    .line 122
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$3;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    goto :goto_0
.end method
