.class Lcom/android/server/fingerprint/FingerprintService$5$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onFidoAuthenticated(JIII[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$uvt:[B


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;JII[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$5;
    .param p2, "val$deviceId"    # J
    .param p4, "val$fingerId"    # I
    .param p5, "val$groupId"    # I
    .param p6, "val$uvt"    # [B

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$groupId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$uvt:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$deviceId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$fingerId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$5$7;->val$uvt:[B

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->handleFidoAuthenticated(JII[B)V

    .line 796
    return-void
.end method
