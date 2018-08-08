.class Lcom/android/server/am/PKTopWindow$7;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->showFirstWindow()V
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
    .line 671
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$7;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$7;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow$7;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 673
    return-void
.end method
