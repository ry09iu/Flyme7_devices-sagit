.class public interface abstract Lcom/miui/whetstone/IPowerKeeperClient;
.super Ljava/lang/Object;
.source "IPowerKeeperClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
