.class Lcom/android/stk/StkDialogActivity$6;
.super Ljava/lang/Object;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 470
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 473
    const-string/jumbo v0, "onCancel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v0}, Lcom/android/stk/StkDialogActivity;->-wrap0(Lcom/android/stk/StkDialogActivity;)V

    .line 475
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    iget-object v0, v0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/stk/StkDialogActivity;->-wrap1(Lcom/android/stk/StkDialogActivity;IZ)V

    .line 472
    :cond_0
    return-void
.end method
