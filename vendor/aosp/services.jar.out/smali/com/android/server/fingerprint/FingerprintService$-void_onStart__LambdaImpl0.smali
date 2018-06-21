.class final synthetic Lcom/android/server/fingerprint/FingerprintService$-void_onStart__LambdaImpl0;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onStart__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->-com_android_server_fingerprint_FingerprintService_lambda$1()V

    return-void
.end method
