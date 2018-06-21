.class Lcom/android/server/LocationPolicyManagerService$9;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1012
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1045
    return v8

    .line 1014
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1015
    .local v5, "uid":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 1016
    .local v6, "uidRules":I
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1017
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1018
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/location/ILocationPolicyListener;

    .line 1019
    .local v3, "listener":Landroid/location/ILocationPolicyListener;
    if-eqz v3, :cond_0

    .line 1021
    :try_start_0
    invoke-interface {v3, v5, v6}, Landroid/location/ILocationPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/location/ILocationPolicyListener;
    :cond_1
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1027
    return v9

    .line 1030
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v5    # "uid":I
    .end local v6    # "uidRules":I
    :pswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 1031
    .local v4, "restrictBackground":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1032
    .restart local v2    # "length":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_4

    .line 1033
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/location/ILocationPolicyListener;

    .line 1034
    .restart local v3    # "listener":Landroid/location/ILocationPolicyListener;
    if-eqz v3, :cond_2

    .line 1036
    :try_start_1
    invoke-interface {v3, v4}, Landroid/location/ILocationPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1032
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1030
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "listener":Landroid/location/ILocationPolicyListener;
    .end local v4    # "restrictBackground":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "restrictBackground":Z
    goto :goto_2

    .line 1037
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "listener":Landroid/location/ILocationPolicyListener;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 1041
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/location/ILocationPolicyListener;
    :cond_4
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->-get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1042
    return v9

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
