.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    .line 830
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 830
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private enforceNodeTreeConsistent(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 886
    .local v15, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 887
    .local v14, "nodeCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 888
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 889
    .local v13, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 887
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 894
    .end local v13    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 895
    .local v17, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v16, v17

    .line 896
    .local v16, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v16, :cond_1

    .line 897
    move-object/from16 v17, v16

    .line 898
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    check-cast v16, Landroid/view/accessibility/AccessibilityNodeInfo;

    .restart local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 902
    :cond_1
    const/4 v2, 0x0

    .line 903
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 904
    .local v11, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 905
    .local v18, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 906
    .local v8, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 908
    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    .line 909
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 912
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 913
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Duplicate node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 914
    const-string/jumbo v21, " in window:"

    .line 913
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    .line 913
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 919
    :cond_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 920
    if-eqz v2, :cond_4

    .line 921
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Duplicate accessibility focus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 923
    const-string/jumbo v21, " in window:"

    .line 921
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    .line 921
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 925
    :cond_4
    move-object v2, v5

    .line 930
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 931
    if-eqz v11, :cond_6

    .line 932
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Duplicate input focus: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 933
    const-string/jumbo v21, " in window:"

    .line 932
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    move/from16 v21, v0

    .line 932
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 936
    :cond_6
    move-object v11, v5

    .line 940
    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 941
    .local v4, "childCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v4, :cond_2

    .line 942
    invoke-virtual {v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 943
    .local v6, "childId":J
    invoke-virtual {v15, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 944
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_8

    .line 945
    invoke-interface {v8, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 951
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_9
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .restart local v12    # "j":I
    :goto_3
    if-ltz v12, :cond_b

    .line 952
    invoke-virtual {v15, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 953
    .local v10, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 954
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Disconnected node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 951
    :cond_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 883
    .end local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 13
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v12, 0x32

    .line 1012
    instance-of v11, p1, Landroid/view/ViewGroup;

    if-nez v11, :cond_0

    .line 1013
    return-void

    .line 1016
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1017
    .local v1, "addedChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1018
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1020
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1021
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1022
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_4

    .line 1023
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-lt v11, v12, :cond_1

    .line 1046
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1024
    return-void

    .line 1026
    :cond_1
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1027
    .local v2, "child":Landroid/view/View;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v11, v2}, Landroid/view/AccessibilityInteractionController;->-wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1028
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 1029
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v9, :cond_3

    .line 1030
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1031
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_2

    .line 1032
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1037
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    const/4 v11, -0x1

    .line 1036
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1038
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_2

    .line 1039
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1045
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v7    # "i":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :catchall_0
    move-exception v11

    .line 1046
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1045
    throw v11

    .line 1046
    .restart local v3    # "childCount":I
    .restart local v7    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1048
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v12, :cond_6

    .line 1049
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1050
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1051
    .local v0, "addedChild":Landroid/view/View;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1052
    .local v10, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_5

    .line 1053
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2

    .line 1056
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 1057
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v10, v9, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_2

    .line 1011
    .end local v0    # "addedChild":Landroid/view/View;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    return-void
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 9
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v8, 0x32

    .line 1147
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 1148
    .local v6, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 1149
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1150
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v8, :cond_0

    .line 1151
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    .line 1155
    .local v4, "childNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    .line 1154
    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1156
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_1

    .line 1157
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childNodeId":J
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_3

    .line 1161
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int v0, v7, v6

    .line 1162
    .local v0, "addedChildCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 1163
    add-int v7, v6, v3

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1164
    .restart local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1146
    .end local v0    # "addedChildCount":I
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    return-void
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 962
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 963
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    move-object v2, v1

    .line 964
    check-cast v2, Landroid/view/View;

    .line 965
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 966
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 967
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 960
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "parentView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 11
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const v10, 0x7fffffff

    .line 1066
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    .line 1067
    .local v3, "initialResultSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v6

    .line 1068
    .local v6, "parentNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 1069
    .local v0, "accessibilityViewId":I
    :goto_0
    if-eq v0, v10, :cond_6

    .line 1070
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_0

    .line 1071
    return-void

    .line 1074
    :cond_0
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 1075
    .local v5, "virtualDescendantId":I
    if-ne v5, v10, :cond_1

    .line 1076
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    if-ne v0, v8, :cond_5

    .line 1078
    :cond_1
    if-eq v5, v10, :cond_2

    .line 1079
    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1084
    .local v4, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-nez v4, :cond_4

    .line 1087
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    .line 1088
    .local v1, "currentResultSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_3

    .line 1089
    invoke-interface {p4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1088
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1082
    .end local v1    # "currentResultSize":I
    .end local v2    # "i":I
    .end local v4    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    const/4 v8, -0x1

    .line 1081
    invoke-virtual {p3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .restart local v4    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 1093
    .restart local v1    # "currentResultSize":I
    .restart local v2    # "i":I
    :cond_3
    return-void

    .line 1095
    .end local v1    # "currentResultSize":I
    .end local v2    # "i":I
    :cond_4
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v6

    .line 1097
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    goto :goto_0

    .line 1100
    .end local v4    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1101
    return-void

    .line 1065
    .end local v5    # "virtualDescendantId":I
    :cond_6
    return-void
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .param p1, "current"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 975
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    .line 976
    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    move-object v6, v5

    .line 977
    check-cast v6, Landroid/view/ViewGroup;

    .line 978
    .local v6, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 979
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 981
    :try_start_0
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 982
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 983
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 984
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_0

    .line 1005
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 985
    return-void

    .line 987
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 988
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 989
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v8, v0}, Landroid/view/AccessibilityInteractionController;->-wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v8

    .line 988
    if-eqz v8, :cond_1

    .line 990
    const/4 v4, 0x0

    .line 992
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 993
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_2

    .line 994
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 999
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v4, :cond_1

    .line 1000
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 997
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    const/4 v8, -0x1

    .line 996
    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 1005
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 974
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "i":I
    .end local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_4
    return-void

    .line 1004
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "parentGroup":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v8

    .line 1005
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1004
    throw v8
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 18
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v12

    .line 1110
    .local v12, "parentNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v11

    .line 1112
    .local v11, "parentAccessibilityViewId":I
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 1113
    .local v14, "parentVirtualDescendantId":I
    const v15, 0x7fffffff

    if-ne v14, v15, :cond_0

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v15

    if-ne v11, v15, :cond_4

    .line 1116
    :cond_0
    const v15, 0x7fffffff

    if-eq v14, v15, :cond_1

    .line 1117
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1122
    .local v10, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    if-eqz v10, :cond_5

    .line 1123
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    .line 1124
    .local v5, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_5

    .line 1125
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 1126
    return-void

    .line 1120
    .end local v5    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    const/4 v15, -0x1

    .line 1119
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .restart local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 1128
    .restart local v5    # "childCount":I
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {v10, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 1129
    .local v6, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    cmp-long v15, v6, v16

    if-eqz v15, :cond_3

    .line 1131
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v8

    .line 1132
    .local v8, "childVirtualDescendantId":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1134
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_3

    .line 1135
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childVirtualDescendantId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1141
    .end local v5    # "childCount":I
    .end local v6    # "childNodeId":J
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1107
    :cond_5
    return-void
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I
    .param p3, "fetchFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 839
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_3

    .line 840
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 841
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 842
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-boolean v2, v2, Landroid/view/WindowManagerGlobal;->mNeedServiceBoost:Z

    if-nez v2, :cond_2

    .line 845
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 846
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 848
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 849
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 851
    :cond_1
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 852
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 837
    :cond_2
    :goto_0
    return-void

    .line 859
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const v2, 0x7fffffff

    if-eq p2, v2, :cond_6

    .line 860
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 865
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 866
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    .line 868
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 870
    :cond_4
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_5

    .line 871
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 873
    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 874
    invoke-direct {p0, v1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_0

    .line 863
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    const/4 v2, -0x1

    .line 862
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1
.end method
