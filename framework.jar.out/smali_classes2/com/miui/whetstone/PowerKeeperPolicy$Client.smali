.class Lcom/miui/whetstone/PowerKeeperPolicy$Client;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field private mAllowed:Z

.field private mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIBinder:Landroid/os/IBinder;

.field private mScanning:Z

.field private mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I
    .locals 1

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    return v0
.end method

.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p2, "bleScanWrapper"    # Landroid/bluetooth/BleScanWrapper;
    .param p3, "b"    # Landroid/os/IBinder;
    .param p4, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1027
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1029
    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    .line 1030
    iput p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1032
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1033
    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    .line 1027
    return-void
.end method


# virtual methods
.method public clearResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1037
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1038
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    .line 1039
    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1036
    return-void
.end method

.method public getAllowed()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return v0
.end method

.method public getScanning()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 4
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1067
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to link deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 1054
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    const-string/jumbo v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setAllowed, allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    .line 1053
    return-void
.end method

.method public setScanning(Z)V
    .locals 3
    .param p1, "scanning"    # Z

    .prologue
    .line 1043
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    const-string/jumbo v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setScanning, scanning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1042
    return-void
.end method

.method public startLeScan()V
    .locals 8

    .prologue
    .line 1085
    iget-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-eqz v5, :cond_1

    .line 1086
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1087
    const-string/jumbo v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLeScan, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is scanning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    return-void

    .line 1092
    :cond_1
    :try_start_0
    const-string/jumbo v5, "bluetooth_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1093
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1094
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 1095
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1097
    .local v3, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BleScanWrapper;->startScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1101
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1102
    const-string/jumbo v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ForceStartLeScan, client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1108
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1084
    return-void

    .line 1098
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "PowerKeeperPolicy"

    const-string/jumbo v6, "startLeScan"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1105
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    .line 1106
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerKeeperPolicy"

    const-string/jumbo v6, "startLeScan"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stopLeScan()V
    .locals 8

    .prologue
    .line 1112
    iget-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-nez v5, :cond_1

    .line 1113
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1114
    const-string/jumbo v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopLeScan, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not scanning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    return-void

    .line 1119
    :cond_1
    :try_start_0
    const-string/jumbo v5, "bluetooth_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1120
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 1121
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 1122
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1124
    .local v3, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BleScanWrapper;->stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1128
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1129
    const-string/jumbo v5, "PowerKeeperPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ForceStopLeScan, client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1135
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    .line 1111
    return-void

    .line 1125
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_0
    move-exception v1

    .line 1126
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "PowerKeeperPolicy"

    const-string/jumbo v6, "stopLeScan"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1132
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    .line 1133
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerKeeperPolicy"

    const-string/jumbo v6, "stopLeScan"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1077
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to unlink deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
