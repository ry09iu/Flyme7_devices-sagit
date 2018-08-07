.class Lcom/android/stk/StkDialogActivity$3;
.super Ljava/lang/Object;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkDialogActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkDialogActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$3;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 441
    const-string/jumbo v0, "onClick OK"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$3;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v0}, Lcom/android/stk/StkDialogActivity;->-wrap0(Lcom/android/stk/StkDialogActivity;)V

    .line 443
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$3;->this$0:Lcom/android/stk/StkDialogActivity;

    iget-object v0, v0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$3;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/stk/StkDialogActivity;->-wrap1(Lcom/android/stk/StkDialogActivity;IZ)V

    .line 440
    :cond_0
    return-void
.end method
