.class Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitThreadInfo"
.end annotation


# instance fields
.field public caller:Landroid/app/IApplicationThread;

.field public conn:Lcom/android/server/am/ContentProviderConnection;

.field public threadId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;-><init>()V

    return-void
.end method
