.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/ims/ImsEcbmStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onECBMEntered()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onECBMEntered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 1355
    return-void
.end method

.method public onECBMExited()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onECBMExited"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-wrap1(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 1361
    return-void
.end method
