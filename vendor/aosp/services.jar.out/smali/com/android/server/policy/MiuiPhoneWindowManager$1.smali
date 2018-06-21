.class Lcom/android/server/policy/MiuiPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->-wrap0(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    .line 337
    return-void
.end method
