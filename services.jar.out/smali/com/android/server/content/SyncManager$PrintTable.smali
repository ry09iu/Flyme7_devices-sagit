.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "cols"    # I

    .prologue
    .line 3525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3522
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 3526
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 3525
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 3572
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3573
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3574
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3576
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3571
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .locals 1

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 3530
    array-length v3, p3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-le v3, v4, :cond_0

    .line 3531
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Table only has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3532
    const-string/jumbo v5, " columns. can\'t set "

    .line 3531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3532
    array-length v5, p3

    .line 3531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3532
    const-string/jumbo v5, " at column "

    .line 3531
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3534
    :cond_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 3535
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 3536
    .local v2, "list":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3537
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v1, v3, :cond_1

    .line 3538
    const-string/jumbo v3, ""

    aput-object v3, v2, v1

    .line 3537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3534
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3541
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v3, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3529
    return-void
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v12, 0x0

    .line 3545
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v1, v9, [Ljava/lang/String;

    .line 3546
    .local v1, "formats":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3547
    .local v8, "totalLength":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v0, v9, :cond_2

    .line 3548
    const/4 v5, 0x0

    .line 3549
    .local v5, "maxLength":I
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 3550
    .local v6, "row":[Ljava/lang/Object;
    aget-object v9, v6, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 3551
    .local v3, "length":I
    if-le v3, v5, :cond_0

    .line 3552
    move v5, v3

    goto :goto_1

    .line 3555
    .end local v3    # "length":I
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_1
    add-int/2addr v8, v5

    .line 3556
    const-string/jumbo v9, "%%-%ds"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    .line 3547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3558
    .end local v5    # "maxLength":I
    .end local v7    # "row$iterator":Ljava/util/Iterator;
    :cond_2
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    const-string/jumbo v10, "%s"

    aput-object v10, v1, v9

    .line 3559
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v9}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3560
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 3561
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_3

    .line 3562
    const-string/jumbo v9, "-"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3561
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3564
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3565
    const/4 v2, 0x1

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mTableSize":I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 3566
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 3567
    .restart local v6    # "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3565
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3544
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_4
    return-void
.end method
