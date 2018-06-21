.class public Lcom/android/internal/telephony/CallTrackerInjector;
.super Ljava/lang/Object;
.source "CallTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallTrackerInjector$1;
    }
.end annotation


# static fields
.field protected static final EVENT_CLEAR_HANGUP_PENDING_CONNECTION_INDEX:I = 0x64

.field public static final HANGUP_FROEGROUND_RESUME_BACKGROUND_CONN_INDEX:I = 0x65

.field private static final HANGUP_TIMEOUT:I = 0xea60

.field public static final HANGUP_WAITING_OR_BACKGROUND_CONN_INDEX:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "CallTrackerInjector"

.field private static sHangupHandler:Landroid/os/Handler;

.field private static sHangupPendingConnectionIndex:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsHD:Z


# direct methods
.method static synthetic -wrap0(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CallTrackerInjector;->removeHangupPendingConnectionIndex(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/CallTrackerInjector$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallTrackerInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/CallTrackerInjector;->sIsHD:Z

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHangupPendingConnectionIndex(I)Z
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add hangup connection index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, ", pending hangup index: "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    .line 71
    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 125
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "10010"

    aput-object v4, v3, v5

    const-string/jumbo v4, "114"

    aput-object v4, v3, v8

    .line 126
    .local v3, "specialNumArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 127
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 137
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 138
    return v8

    .line 129
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 131
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 134
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    :cond_2
    return v5

    .line 141
    .local v0, "currentCall":Lcom/android/internal/telephony/Call;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "currentNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    return v8

    .line 147
    :cond_4
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v2, v3, v4

    .line 148
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2, v1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 149
    return v8

    .line 147
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "currentNumber":Ljava/lang/String;
    .end local v2    # "num":Ljava/lang/String;
    :cond_6
    return v5
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string/jumbo v0, "CallTrackerInjector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public static removeAllHangupPendingConnectionIndex()V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "remove all hangup connection index."

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 55
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    return-void
.end method

.method private static removeHangupPendingConnectionIndex(I)V
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove hangup connection index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string/jumbo v1, ", pending hangup index: "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CallTrackerInjector;->log(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupPendingConnectionIndex:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/internal/telephony/CallTrackerInjector;->sHangupHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static sendSpeechCodecIsHDBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 81
    sget-boolean v6, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_1

    .line 82
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 85
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x1109001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 86
    .local v0, "configed":Z
    if-nez v0, :cond_2

    .line 87
    return-void

    .line 89
    :cond_2
    move v3, p1

    .line 90
    .local v3, "localHD":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "numeric":Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v2

    .line 92
    .local v2, "isChinaUnicom":Z
    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/internal/telephony/CallTrackerInjector;->isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 95
    .end local v3    # "localHD":Z
    :cond_4
    sget-boolean v6, Lcom/android/internal/telephony/CallTrackerInjector;->sIsHD:Z

    if-eq v6, v3, :cond_5

    .line 96
    sput-boolean v3, Lcom/android/internal/telephony/CallTrackerInjector;->sIsHD:Z

    .line 97
    invoke-static {p0, v3}, Lcom/android/internal/telephony/CallTrackerInjector;->setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V

    .line 98
    if-eqz v2, :cond_5

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string/jumbo v6, "is_hd"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v1, v6}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 104
    const-string/jumbo v6, "CallTrackerInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendSpeechCodecIsHDBroadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private static setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .param p1, "isHD"    # Z

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 117
    .local v2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 119
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    .line 109
    return-void
.end method
