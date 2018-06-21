.class Landroid/os/BaseLooper$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BaseLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseLooper$MessageMonitorInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BaseLooper$MessageMonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dispatchTime:J

.field finishTime:J

.field monitorDigest:Ljava/lang/String;

.field monitorMessage:Ljava/lang/String;

.field planTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo$1;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo$1;-><init>()V

    .line 322
    sput-object v0, Landroid/os/BaseLooper$MessageMonitorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method createMonitorDigest()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getPlanTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getDispatchTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method getDispatchTime()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    return-wide v0
.end method

.method getFinishTime()J
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    return-wide v0
.end method

.method getMonitorDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method getMonitorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-object v0
.end method

.method getPlanTime()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    return-wide v0
.end method

.method getTookTime()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 245
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 246
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 248
    :cond_0
    return-wide v2
.end method

.method getTookTimeAfterDispatch()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 252
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 253
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 255
    :cond_0
    return-wide v2
.end method

.method getTookTimeBeforeDispatch()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 259
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 260
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 262
    :cond_0
    return-wide v2
.end method

.method initMessageTime(J)V
    .locals 7
    .param p1, "uptimeMillis"    # J

    .prologue
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p1, v2

    .line 267
    .local v0, "delayMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 265
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 237
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    .line 238
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    .line 239
    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    .line 240
    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    .line 236
    return-void
.end method

.method setMonitorMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    invoke-static {p1}, Landroid/os/BaseLooper;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v0, "b":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " planTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " dispatchTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " finishTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateMessageTimeByState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 303
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    goto :goto_0

    .line 306
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 229
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return-void
.end method
