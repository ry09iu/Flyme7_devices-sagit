.class public Lcom/android/server/am/PKTopWindowRequest;
.super Ljava/lang/Object;
.source "PKTopWindowRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowRequest$MD;,
        Lcom/android/server/am/PKTopWindowRequest$UserStat;
    }
.end annotation


# instance fields
.field private adslotId:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private md:Ljava/lang/String;

.field private nonce:J

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdslotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowRequest;->adslotId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowRequest;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowRequest;->md:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/server/am/PKTopWindowRequest;->nonce:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowRequest;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/server/am/PKTopWindowRequest;->timestamp:J

    return-wide v0
.end method

.method public setAdslotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adslotId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowRequest;->adslotId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowRequest;->appkey:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowRequest;->deviceId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMd(Ljava/lang/String;)V
    .locals 0
    .param p1, "md"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowRequest;->md:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNonce(J)V
    .locals 1
    .param p1, "nonce"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/server/am/PKTopWindowRequest;->nonce:J

    .line 64
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowRequest;->signature:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/server/am/PKTopWindowRequest;->timestamp:J

    .line 80
    return-void
.end method
