.class public final Lcom/android/server/wifi/WifiNative$RxFateReport;
.super Lcom/android/server/wifi/WifiNative$FateReport;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RxFateReport"
.end annotation


# direct methods
.method constructor <init>(BJB[B)V
    .locals 0
    .param p1, "fate"    # B
    .param p2, "driverTimestampUSec"    # J
    .param p4, "frameType"    # B
    .param p5, "frameBytes"    # [B

    .prologue
    .line 2853
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiNative$FateReport;-><init>(BJB[B)V

    .line 2852
    return-void
.end method


# virtual methods
.method protected directionToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2858
    const-string/jumbo v0, "RX"

    return-object v0
.end method

.method protected fateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2863
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$RxFateReport;->mFate:B

    packed-switch v0, :pswitch_data_0

    .line 2887
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$RxFateReport;->mFate:B

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2865
    :pswitch_0
    const-string/jumbo v0, "success"

    return-object v0

    .line 2867
    :pswitch_1
    const-string/jumbo v0, "firmware queued"

    return-object v0

    .line 2869
    :pswitch_2
    const-string/jumbo v0, "firmware dropped (filter)"

    return-object v0

    .line 2871
    :pswitch_3
    const-string/jumbo v0, "firmware dropped (invalid frame)"

    return-object v0

    .line 2873
    :pswitch_4
    const-string/jumbo v0, "firmware dropped (no bufs)"

    return-object v0

    .line 2875
    :pswitch_5
    const-string/jumbo v0, "firmware dropped (other)"

    return-object v0

    .line 2877
    :pswitch_6
    const-string/jumbo v0, "driver queued"

    return-object v0

    .line 2879
    :pswitch_7
    const-string/jumbo v0, "driver dropped (filter)"

    return-object v0

    .line 2881
    :pswitch_8
    const-string/jumbo v0, "driver dropped (invalid frame)"

    return-object v0

    .line 2883
    :pswitch_9
    const-string/jumbo v0, "driver dropped (no bufs)"

    return-object v0

    .line 2885
    :pswitch_a
    const-string/jumbo v0, "driver dropped (other)"

    return-object v0

    .line 2863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic toTableRowString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
