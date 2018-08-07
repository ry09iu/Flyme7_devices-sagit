.class Lcom/android/stk/StkDialogActivity$5;
.super Ljava/lang/Object;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 460
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 463
    const-string/jumbo v0, "onDismiss"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v0}, Lcom/android/stk/StkDialogActivity;->-get1(Lcom/android/stk/StkDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 462
    :cond_0
    return-void
.end method
