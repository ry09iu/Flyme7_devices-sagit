.class Lcom/android/server/am/PKTopWindow$14;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindow$14;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1084
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get23(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get23(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$14;->val$view:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1102
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1, v3}, Lcom/android/server/am/PKTopWindow;->-set3(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$Preview;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    .line 1083
    :cond_0
    :goto_1
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1, v3}, Lcom/android/server/am/PKTopWindow;->-set2(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    goto :goto_1

    .line 1106
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$14;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1, v3}, Lcom/android/server/am/PKTopWindow;->-set4(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    goto :goto_1
.end method
