.class public Lmiui/telephony/RegInfoMonitor;
.super Ljava/lang/Object;
.source "RegInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REPORT_CONTROL:Ljava/lang/String; = "sys.reginfo.control"

.field private static final REPORT_LAC:I = 0x1

.field private static final REPORT_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RegInfo"

.field private static final sInstances:[Lmiui/telephony/RegInfoMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLacChangedAfterDeny:Z

.field private mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

.field private mReportControl:I

.field private mSlotId:I

.field private mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "persist.fakecell.settings.test"

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/telephony/RegInfoMonitor;->DEBUG:Z

    .line 23
    sget v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    new-array v0, v0, [Lmiui/telephony/RegInfoMonitor;

    .line 22
    sput-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    .line 11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-direct {v0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;-><init>()V

    iput-object v0, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .line 31
    new-instance v0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-direct {v0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;-><init>()V

    iput-object v0, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .line 32
    iput-object p1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lmiui/telephony/RegInfoMonitor;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const-class v1, Lmiui/telephony/RegInfoMonitor;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    new-instance v2, Lmiui/telephony/RegInfoMonitor;

    invoke-direct {v2, p0}, Lmiui/telephony/RegInfoMonitor;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, p1

    .line 43
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1

    iput p1, v0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    .line 44
    const-string/jumbo v0, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RegInfoMonitor instance created for slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lmiui/telephony/RegInfoMonitor;->sInstances:[Lmiui/telephony/RegInfoMonitor;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyRegInfoUpdate(Lcom/android/internal/telephony/Phone;III[Ljava/lang/String;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "regState"    # I
    .param p4, "states"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/RegInfoMonitor;->getInstance(Landroid/content/Context;I)Lmiui/telephony/RegInfoMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/telephony/RegInfoMonitor;->onRegInfoUpdate(III[Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onRegDenied(II)V
    .locals 5
    .param p1, "rejCode"    # I
    .param p2, "lac"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-boolean v1, Lmiui/telephony/RegInfoMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRegDenied: rejCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", last lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v1, p1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-set2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I

    .line 100
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-set3(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;J)J

    .line 103
    if-nez p1, :cond_1

    .line 104
    return-void

    .line 107
    :cond_1
    iget-boolean v1, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    if-eqz v1, :cond_3

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.metok.FALSE_STATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "slot"

    iget v2, p0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "lac"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "cid"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get0(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "startTime"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get4(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "endTime"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get1(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "rejCode"

    iget-object v2, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get3(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "com.miui.sysbase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    sget-boolean v1, Lmiui/telephony/RegInfoMonitor;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 118
    const-string/jumbo v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network reject on:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v3}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iput-boolean v4, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public onRegInfoUpdate(III[Ljava/lang/String;)V
    .locals 10
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "regState"    # I
    .param p4, "states"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0xd

    const/4 v8, -0x1

    const/4 v7, 0x3

    .line 50
    const-string/jumbo v4, "sys.reginfo.control"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    if-nez v4, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    const/4 v3, 0x0

    .line 55
    .local v3, "type":I
    const/4 v1, 0x0

    .line 57
    .local v1, "isGsm":Z
    :try_start_0
    array-length v4, p4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    const/4 v4, 0x3

    aget-object v4, p4, v4

    if-eqz v4, :cond_1

    .line 58
    const/4 v4, 0x3

    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 59
    const/16 v4, 0x10

    if-eq v3, v4, :cond_5

    .line 60
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    .line 66
    :cond_1
    :goto_0
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v4}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v4

    if-ne p1, v4, :cond_7

    if-eq p2, v8, :cond_7

    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v4}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get0(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v4

    if-eq p2, v4, :cond_7

    .line 67
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v4, p2}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-set0(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I

    .line 68
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v4, v1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-set1(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;Z)Z

    .line 82
    :cond_2
    :goto_1
    iget v4, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 83
    if-eq p3, v7, :cond_3

    .line 84
    if-ne p3, v9, :cond_4

    .line 85
    :cond_3
    array-length v4, p4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_4

    .line 87
    const/16 v4, 0xd

    :try_start_1
    aget-object v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, "rejCode":I
    invoke-virtual {p0, v2, p1}, Lmiui/telephony/RegInfoMonitor;->onRegDenied(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .end local v2    # "rejCode":I
    :cond_4
    :goto_2
    return-void

    .line 59
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "RegInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error parsing type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-static {v4}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->-get2(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 70
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v4}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->logLacEnd()V

    .line 72
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    iget-object v5, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v4, v5}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->from(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)V

    .line 73
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v4}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->reset()V

    .line 74
    iget-object v4, p0, Lmiui/telephony/RegInfoMonitor;->mTempRegInfo:Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    invoke-virtual {v4, p1, p2, v1}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->logLacStart(IIZ)V

    .line 75
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmiui/telephony/RegInfoMonitor;->mLacChangedAfterDeny:Z

    .line 77
    if-eq p1, v8, :cond_2

    iget v4, p0, Lmiui/telephony/RegInfoMonitor;->mReportControl:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {p0, p1, p2, v1}, Lmiui/telephony/RegInfoMonitor;->onValidLacChanged(IIZ)V

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "RegInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error parsing rejCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onValidLacChanged(IIZ)V
    .locals 4
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "isGsm"    # Z

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.metok.LAC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "slot"

    iget v2, p0, Lmiui/telephony/RegInfoMonitor;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string/jumbo v1, "lac"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "isGsm"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "com.miui.sysbase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lmiui/telephony/RegInfoMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    sget-boolean v1, Lmiui/telephony/RegInfoMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "RegInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcast LAC changed, lac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, ", cid = "

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, ", isGsm = "

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method
