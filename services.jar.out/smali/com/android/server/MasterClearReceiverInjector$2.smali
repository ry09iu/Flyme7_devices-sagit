.class final Lcom/android/server/MasterClearReceiverInjector$2;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiverInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiverInjector;->rebootFactoryReset(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "val$condition"    # Landroid/os/ConditionVariable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/MasterClearReceiverInjector$2;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/MasterClearReceiverInjector$2;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 68
    return-void
.end method
