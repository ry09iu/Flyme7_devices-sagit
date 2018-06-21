.class final Lmiui/provider/ExtraTelephony$2;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
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

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I

.field final synthetic val$smsBody:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$number"    # Ljava/lang/String;
    .param p3, "val$smsBody"    # Ljava/lang/String;
    .param p4, "val$slotId"    # I

    .prologue
    .line 1762
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/provider/ExtraTelephony$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lmiui/provider/ExtraTelephony$2;->val$smsBody:Ljava/lang/String;

    iput p4, p0, Lmiui/provider/ExtraTelephony$2;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1766
    iget-object v2, p0, Lmiui/provider/ExtraTelephony$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1767
    sget-object v3, Lmiui/provider/ExtraTelephony$Judge;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 1768
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1769
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 1770
    iget-object v6, p0, Lmiui/provider/ExtraTelephony$2;->val$number:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v6, p0, Lmiui/provider/ExtraTelephony$2;->val$smsBody:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, p0, Lmiui/provider/ExtraTelephony$2;->val$slotId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1768
    const/4 v6, 0x0

    .line 1766
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1773
    .local v0, "smsBlockType":I
    if-gez v0, :cond_0

    move v0, v1

    .end local v0    # "smsBlockType":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-virtual {p0}, Lmiui/provider/ExtraTelephony$2;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
