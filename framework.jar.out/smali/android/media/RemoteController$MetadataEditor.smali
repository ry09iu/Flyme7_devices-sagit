.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    .prologue
    .line 494
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .locals 3
    .param p1, "this$0"    # Landroid/media/RemoteController;
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 499
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 500
    iput-object p2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 501
    iput-wide p3, p0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 504
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 505
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0, v2}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    .line 509
    :cond_0
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 510
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    .line 499
    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 515
    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 530
    return-void

    .line 532
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/media/RemoteController;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 535
    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    const v1, 0x10000001

    const/4 v3, 0x0

    .line 536
    invoke-virtual {p0, v1, v3}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 538
    .local v0, "rating":Landroid/media/Rating;
    if-eqz v0, :cond_1

    .line 539
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "rating":Landroid/media/Rating;
    :cond_1
    :try_start_3
    monitor-exit v2

    .line 547
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 525
    return-void

    .line 532
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
