.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
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
    .line 698
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-wrap7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 700
    :cond_0
    return-void
.end method
