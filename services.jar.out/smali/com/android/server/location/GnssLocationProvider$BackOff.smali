.class final Lcom/android/server/location/GnssLocationProvider$BackOff;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackOff"
.end annotation


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "initIntervalMillis"    # J
    .param p3, "maxIntervalMillis"    # J

    .prologue
    .line 2520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2521
    iput-wide p1, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mInitIntervalMillis:J

    .line 2522
    iput-wide p3, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mMaxIntervalMillis:J

    .line 2524
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2520
    return-void
.end method


# virtual methods
.method public nextBackoffMillis()J
    .locals 4

    .prologue
    .line 2528
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mMaxIntervalMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2529
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mMaxIntervalMillis:J

    return-wide v0

    .line 2532
    :cond_0
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2533
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    return-wide v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 2537
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider$BackOff;->mCurrentIntervalMillis:J

    .line 2536
    return-void
.end method
