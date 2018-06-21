.class final Lmiui/provider/ExtraTelephony$1;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/ExtraTelephony;->getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isForwardCall:Z

.field final synthetic val$isRepeated:Z

.field final synthetic val$isRepeatedBlocked:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$slotId"    # I
    .param p4, "val$isForwardCall"    # Z
    .param p5, "val$isRepeated"    # Z
    .param p6, "val$isRepeatedBlocked"    # Z

    .prologue
    .line 1708
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    iput p3, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    iput-boolean p4, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    iput-boolean p5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    iput-boolean p6, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v1, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1713
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->CALL_CONTENT_URI:Landroid/net/Uri;

    .line 1714
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1715
    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    .line 1716
    iget-object v1, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget v1, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 1717
    iget-boolean v1, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "is_forward_call"

    :goto_0
    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 1718
    iget-boolean v1, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "is_repeated_normal_call"

    :goto_1
    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 1719
    iget-boolean v1, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "is_repeated_blocked_call"

    :goto_2
    const/4 v6, 0x4

    aput-object v1, v5, v6

    .line 1714
    const/4 v1, 0x0

    .line 1712
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1721
    .local v0, "callBlockType":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1717
    .end local v0    # "callBlockType":I
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1718
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 1719
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1711
    invoke-virtual {p0}, Lmiui/provider/ExtraTelephony$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
