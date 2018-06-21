.class public Lcom/miui/server/SplashPackageCheckInfo;
.super Ljava/lang/Object;
.source "SplashPackageCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SplashPackageCheckInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE:J = -0x1L


# instance fields
.field private mEndCheckTime:J

.field private mSplashPackageName:Ljava/lang/String;

.field private mStartCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/miui/server/SplashPackageCheckInfo$1;

    invoke-direct {v0}, Lcom/miui/server/SplashPackageCheckInfo$1;-><init>()V

    .line 46
    sput-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "splashPackageName"    # Ljava/lang/String;
    .param p2, "startCheckTime"    # J
    .param p4, "endCheckTime"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    .line 26
    iput-wide p4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    .line 23
    return-void
.end method

.method private static getDateString(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 81
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 82
    const-string/jumbo v2, "IGNORE"

    return-object v2

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 86
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 87
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ERROR"

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getSplashPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public matchTime()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    .line 64
    :cond_0
    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    :cond_1
    :goto_0
    move v3, v2

    .line 63
    :cond_2
    return v3

    :cond_3
    move v2, v3

    .line 64
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SplashPackageCheckInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string/jumbo v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "]"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    return-void
.end method
