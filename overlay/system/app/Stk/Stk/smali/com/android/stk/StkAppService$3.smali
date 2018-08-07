.class Lcom/android/stk/StkAppService$3;
.super Ljava/lang/Object;
.source "StkAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkAppService;
    .param p2, "val$slotId"    # I

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    iput p2, p0, Lcom/android/stk/StkAppService$3;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1913
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1914
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "response id"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1915
    const-string/jumbo v2, "choice"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1916
    iget-object v2, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get3(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1917
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1918
    iget v2, p0, Lcom/android/stk/StkAppService$3;->val$slotId:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1919
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1920
    iget-object v2, p0, Lcom/android/stk/StkAppService$3;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-get3(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1912
    return-void
.end method
