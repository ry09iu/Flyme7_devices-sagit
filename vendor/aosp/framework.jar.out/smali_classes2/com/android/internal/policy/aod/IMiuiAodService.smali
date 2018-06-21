.class public interface abstract Lcom/android/internal/policy/aod/IMiuiAodService;
.super Ljava/lang/Object;
.source "IMiuiAodService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/aod/IMiuiAodService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScreenTurnedDoze()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScreenTurnedOff(Lcom/android/internal/policy/aod/IMiuiAodDrawnCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScreenTurningOn(Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartedWakingUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
