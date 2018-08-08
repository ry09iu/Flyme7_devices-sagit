.class Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;->onGetDataASyncListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;
    .param p2, "val$result"    # Ljava/lang/String;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;->this$2:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;->this$2:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;->this$1:Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2$1;->val$result:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ROM \u6570\u636e\u4e0a\u62a5\u6210\u529f\uff01"

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1302
    return-void

    .line 1303
    :cond_0
    const-string/jumbo v0, "ROM \u6570\u636e\u4e0a\u62a5\u5931\u8d25\uff01"

    goto :goto_0
.end method
