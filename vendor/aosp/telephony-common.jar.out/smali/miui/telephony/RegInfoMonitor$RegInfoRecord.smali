.class Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
.super Ljava/lang/Object;
.source "RegInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/RegInfoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegInfoRecord"
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0xaL

.field private static final INVALID_VAL:I = -0xa


# instance fields
.field private mCid:I

.field private mEndTime:J

.field private mIsGsm:Z

.field private mLac:I

.field private mRejCode:I

.field private mRejTimestamp:J

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1

    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    return v0
.end method

.method static synthetic -get1(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J
    .locals 2

    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1

    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    return v0
.end method

.method static synthetic -get3(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1

    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    return v0
.end method

.method static synthetic -get4(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J
    .locals 2

    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I
    .locals 0

    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    return p1
.end method

.method static synthetic -set1(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I
    .locals 0

    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    return p1
.end method

.method static synthetic -set3(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;J)J
    .locals 1

    iput-wide p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->reset()V

    .line 150
    return-void
.end method


# virtual methods
.method public from(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)V
    .locals 2
    .param p1, "r"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    .line 174
    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    .line 175
    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    .line 176
    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    .line 177
    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    .line 178
    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    .line 179
    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    .line 180
    iget-boolean v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    .line 173
    return-void
.end method

.method public getLacDuration()J
    .locals 4

    .prologue
    const-wide/16 v2, -0xa

    .line 166
    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 167
    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 169
    :cond_0
    return-wide v2
.end method

.method public logLacEnd()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    .line 161
    return-void
.end method

.method public logLacStart(IIZ)V
    .locals 2
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "isGsm"    # Z

    .prologue
    .line 155
    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    .line 156
    iput p2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    .line 157
    iput-boolean p3, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    .line 154
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xa

    const/16 v0, -0xa

    .line 184
    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    .line 185
    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    .line 186
    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    .line 187
    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    .line 188
    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    .line 189
    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    const-string/jumbo v0, "lac = %s, cid = %s, startTime = %s, endTime = %s, regCode = %s,rejTimestamp = %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    iget v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 195
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
