.class Lcom/android/server/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSyncStats"
.end annotation


# instance fields
.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2353
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 2352
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
