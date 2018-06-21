.class public interface abstract Lmiui/telephony/TelephonyStatAdapter$CallBack;
.super Ljava/lang/Object;
.source "TelephonyStatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyStatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract onDataConnectionChanged(II)V
.end method

.method public abstract onDataStatisticChanged(Lmiui/telephony/TelephonyStatAdapter$DataStatType;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/telephony/TelephonyStatAdapter$DataStatType;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onServiceStateChanged(ILandroid/telephony/ServiceState;)V
.end method

.method public abstract onSignalStrengthChanged(ILandroid/telephony/SignalStrength;)V
.end method
