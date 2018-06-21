.class public Lmiui/mqsas/sdk/event/ScreenOnEvent;
.super Ljava/lang/Object;
.source "ScreenOnEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/ScreenOnEvent$1;
    }
.end annotation


# static fields
.field public static final AVG_SCREEN_ON:Ljava/lang/String; = "avg_screen_on"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/ScreenOnEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final LT_SCREEN_ON:Ljava/lang/String; = "lt_screen_on"


# instance fields
.field private mBlockScreenTime:J

.field private mScreenOnType:Ljava/lang/String;

.field private mSetDisplayTime:J

.field private mTimeOutDetail:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalTime:J

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 60
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 61
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 62
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ScreenOnEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockScreenTime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    return-wide v0
.end method

.method public getScreenOnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    return-object v0
.end method

.method public getSetDisplayTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    return-wide v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    return-wide v0
.end method

.method public getWakeSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getmTimeOutDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockScreenTime(J)V
    .locals 1
    .param p1, "mBlockScreenTime"    # J

    .prologue
    .line 143
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 142
    return-void
.end method

.method public setScreenOnType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mScreenOnType"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSetDisplayTime(J)V
    .locals 1
    .param p1, "mSetDisplayTime"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 134
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTimeoutSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeoutSummary"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTotalTime(J)V
    .locals 1
    .param p1, "mTotalTime"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 126
    return-void
.end method

.method public setWakeSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWakeSource"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setmTimeOutDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeOutDetail"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ScreenOnEvent { mTimeoutSummary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string/jumbo v2, ", mTimeOutDetail = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string/jumbo v2, ", mWakeSource = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string/jumbo v2, ", mTimeStamp = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, ", mTotalTime = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string/jumbo v2, ", mSetDisplayTime = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, ", mBlockScreenTime = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, ", mScreenOnType = "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " }"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeOutDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mWakeSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mSetDisplayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mBlockScreenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ScreenOnEvent;->mScreenOnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    return-void
.end method
