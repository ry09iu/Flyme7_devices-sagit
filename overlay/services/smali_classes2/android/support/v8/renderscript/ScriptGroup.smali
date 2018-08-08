.class public final Landroid/support/v8/renderscript/ScriptGroup;
.super Landroid/support/v8/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptGroup$Binding;,
        Landroid/support/v8/renderscript/ScriptGroup$Builder2;,
        Landroid/support/v8/renderscript/ScriptGroup$Builder;,
        Landroid/support/v8/renderscript/ScriptGroup$Closure;,
        Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;,
        Landroid/support/v8/renderscript/ScriptGroup$Future;,
        Landroid/support/v8/renderscript/ScriptGroup$IO;,
        Landroid/support/v8/renderscript/ScriptGroup$Input;,
        Landroid/support/v8/renderscript/ScriptGroup$Node;
    }
.end annotation


# static fields
.field private static final MIN_API_VERSION:I = 0x17

.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/support/v8/renderscript/ScriptGroup$Future;

.field private mUseIncSupp:Z


# direct methods
.method static synthetic -set0(Landroid/support/v8/renderscript/ScriptGroup;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Landroid/support/v8/renderscript/ScriptGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    return p1
.end method

.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 400
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    .line 399
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/support/v8/renderscript/ScriptGroup$Future;)V
    .locals 8
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "outputs"    # [Landroid/support/v8/renderscript/ScriptGroup$Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/support/v8/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "closures":Ljava/util/List;, "Ljava/util/List<Landroid/support/v8/renderscript/ScriptGroup$Closure;>;"
    .local p4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v8/renderscript/ScriptGroup$Input;>;"
    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7, p1}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 50
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    .line 407
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v6, "ScriptGroup2 not supported in this API level"

    invoke-direct {v3, v6}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_0
    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Landroid/support/v8/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    .line 412
    iput-object p4, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 413
    iput-object p5, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs2:[Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 415
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 416
    .local v1, "closureIDs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 417
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    invoke-virtual {v3, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "cachePath":Ljava/lang/String;
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v4

    .line 421
    .local v4, "id":J
    invoke-virtual {p0, v4, v5}, Landroid/support/v8/renderscript/ScriptGroup;->setID(J)V

    .line 404
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupExecute(J)V

    .line 530
    :cond_0
    return-void

    .line 535
    :cond_1
    const/4 v7, 0x0

    .local v7, "ct":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_6

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 537
    .local v13, "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    const/4 v8, 0x0

    .local v8, "ct2":I
    :goto_1
    iget-object v0, v13, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    .line 538
    iget-object v0, v13, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 539
    .local v12, "l":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v0, v12, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 537
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 544
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v22, v0

    iget-object v0, v12, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/support/v8/renderscript/Type;

    move-object/from16 v23, v0

    .line 545
    sget-object v24, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .line 546
    const/16 v25, 0x1

    .line 544
    invoke-static/range {v22 .. v25}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    .line 548
    .local v5, "alloc":Landroid/support/v8/renderscript/Allocation;
    iput-object v5, v12, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 549
    add-int/lit8 v9, v8, 0x1

    .local v9, "ct3":I
    :goto_2
    iget-object v0, v13, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 550
    iget-object v0, v13, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v22, v0

    iget-object v0, v12, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 551
    iget-object v0, v13, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    move-object/from16 v0, v22

    iput-object v5, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 549
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 535
    .end local v5    # "alloc":Landroid/support/v8/renderscript/Allocation;
    .end local v9    # "ct3":I
    .end local v12    # "l":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 556
    .end local v8    # "ct2":I
    .end local v13    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "node$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 557
    .local v14, "node":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v0, v14, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "kernel$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v8/renderscript/Script$KernelID;

    .line 558
    .local v10, "kernel":Landroid/support/v8/renderscript/Script$KernelID;
    const/4 v4, 0x0

    .line 559
    .local v4, "ain":Landroid/support/v8/renderscript/Allocation;
    const/4 v6, 0x0

    .line 561
    .local v6, "aout":Landroid/support/v8/renderscript/Allocation;
    iget-object v0, v14, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v4    # "ain":Landroid/support/v8/renderscript/Allocation;
    .local v17, "nodeInput$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 562
    .local v16, "nodeInput":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_8

    .line 563
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .local v4, "ain":Landroid/support/v8/renderscript/Allocation;
    goto :goto_4

    .line 567
    .end local v4    # "ain":Landroid/support/v8/renderscript/Allocation;
    .end local v16    # "nodeInput":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    aget-object v20, v23, v22

    .line 568
    .local v20, "sgInput":Landroid/support/v8/renderscript/ScriptGroup$IO;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    if-ne v0, v10, :cond_a

    .line 569
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 567
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 573
    .end local v20    # "sgInput":Landroid/support/v8/renderscript/ScriptGroup$IO;
    :cond_b
    iget-object v0, v14, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v6    # "aout":Landroid/support/v8/renderscript/Allocation;
    .local v19, "nodeOutput$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 574
    .local v18, "nodeOutput":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_c

    .line 575
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .local v6, "aout":Landroid/support/v8/renderscript/Allocation;
    goto :goto_6

    .line 579
    .end local v6    # "aout":Landroid/support/v8/renderscript/Allocation;
    .end local v18    # "nodeOutput":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    aget-object v21, v23, v22

    .line 580
    .local v21, "sgOutput":Landroid/support/v8/renderscript/ScriptGroup$IO;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    if-ne v0, v10, :cond_e

    .line 581
    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 579
    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 585
    .end local v21    # "sgOutput":Landroid/support/v8/renderscript/ScriptGroup$IO;
    :cond_f
    iget-object v0, v10, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    move-object/from16 v22, v0

    iget v0, v10, Landroid/support/v8/renderscript/Script$KernelID;->mSlot:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/16 :goto_3
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p1, "inputs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 432
    array-length v7, p1

    iget-object v8, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 433
    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " receives "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " inputs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 434
    const-string/jumbo v9, "less than expected "

    .line 433
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 434
    iget-object v9, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 433
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v10

    .line 438
    :cond_0
    array-length v7, p1

    iget-object v8, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 439
    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " receives "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " inputs, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 440
    const-string/jumbo v9, "more than expected "

    .line 439
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 440
    iget-object v9, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 439
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 444
    aget-object v3, p1, v1

    .line 445
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-nez v7, :cond_2

    instance-of v7, v3, Landroid/support/v8/renderscript/ScriptGroup$Input;

    if-eqz v7, :cond_3

    .line 446
    :cond_2
    const-string/jumbo v7, "ScriptGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptGroup;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": input "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 447
    const-string/jumbo v9, " is a future or unbound value"

    .line 446
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-object v10

    .line 450
    :cond_3
    iget-object v7, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v8/renderscript/ScriptGroup$Input;

    .line 451
    .local v6, "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    invoke-virtual {v6, v3}, Landroid/support/v8/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v6    # "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    :cond_4
    iget-object v7, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v8, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v8}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    .line 456
    iget-object v7, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs2:[Landroid/support/v8/renderscript/ScriptGroup$Future;

    array-length v7, v7

    new-array v5, v7, [Ljava/lang/Object;

    .line 457
    .local v5, "outputObjs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 458
    iget-object v8, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs2:[Landroid/support/v8/renderscript/ScriptGroup$Future;

    const/4 v7, 0x0

    array-length v9, v8

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v0, v8, v7

    .line 459
    .local v0, "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 460
    .local v4, "output":Ljava/lang/Object;
    instance-of v10, v4, Landroid/support/v8/renderscript/ScriptGroup$Input;

    if-eqz v10, :cond_5

    .line 461
    check-cast v4, Landroid/support/v8/renderscript/ScriptGroup$Input;

    .end local v4    # "output":Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/support/v8/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v4

    .line 463
    .restart local v4    # "output":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v4, v5, v2

    .line 458
    add-int/lit8 v7, v7, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 465
    .end local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    .end local v4    # "output":Ljava/lang/Object;
    :cond_6
    return-object v5
.end method

.method public setInput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .locals 8
    .param p1, "s"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/support/v8/renderscript/Allocation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 482
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_1

    .line 483
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 484
    iget-boolean v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/support/v8/renderscript/RenderScript;->safeID(Landroid/support/v8/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    .line 487
    :cond_0
    return-void

    .line 481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Allocation;)V
    .locals 8
    .param p1, "s"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/support/v8/renderscript/Allocation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 507
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mKID:Landroid/support/v8/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_1

    .line 508
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/support/v8/renderscript/ScriptGroup$IO;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 509
    iget-boolean v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mUseIncSupp:Z

    if-nez v1, :cond_0

    .line 510
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/support/v8/renderscript/ScriptGroup;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/support/v8/renderscript/RenderScript;->safeID(Landroid/support/v8/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
