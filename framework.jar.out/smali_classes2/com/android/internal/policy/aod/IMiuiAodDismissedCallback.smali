.class public interface abstract Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback;
.super Ljava/lang/Object;
.source "IMiuiAodDismissedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDismiss()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
