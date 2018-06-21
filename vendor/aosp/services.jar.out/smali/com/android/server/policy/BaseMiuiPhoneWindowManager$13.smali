.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hideBootMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1963
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1965
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1966
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1967
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1968
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1962
    :cond_0
    return-void
.end method
