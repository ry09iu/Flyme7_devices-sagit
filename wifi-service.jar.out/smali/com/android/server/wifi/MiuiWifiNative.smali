.class public Lcom/android/server/wifi/MiuiWifiNative;
.super Ljava/lang/Object;
.source "MiuiWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SOFTAP_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.conf"

.field private static final SOFTAP_DENY_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/miui_hostapd.deny"

.field private static final mLock:Ljava/lang/Object;

.field private static mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative; = null

.field private static final mTAG:Ljava/lang/String; = "MiuiWifiNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->registerNatives()I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native closeSapConnectionNative()V
.end method

.method private native connectToSapNative()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v1, "MiuiWifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doBoolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v2, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->doSapBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    .line 170
    .local v0, "result":Z
    const-string/jumbo v1, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 171
    return v0

    .line 168
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private native doDriverBooleanCommandNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native doSapBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private native doSapIntCommandNative(Ljava/lang/String;)I
.end method

.method private native doSapStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private ensureConfigFileExists()V
    .locals 5

    .prologue
    .line 203
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 208
    .local v2, "networkService":Landroid/os/INetworkManagementService;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "networkService":Landroid/os/INetworkManagementService;
    :cond_0
    :goto_0
    return-void

    .line 209
    .restart local v2    # "networkService":Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/wifi/MiuiWifiNative;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/wifi/MiuiWifiNative;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative;

    invoke-direct {v0}, Lcom/android/server/wifi/MiuiWifiNative;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string/jumbo v0, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parsAndUpdateDenyMacFile(Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 274
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 275
    .local v10, "tmpfile":Ljava/io/File;
    const/4 v12, 0x0

    .line 276
    .local v12, "writer":Ljava/io/BufferedWriter;
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v9, "tMacSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v14, "/data/misc/wifi/miui_hostapd.deny"

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 282
    :cond_0
    new-instance v11, Ljava/io/File;

    const-string/jumbo v14, "/data/misc/wifi/miui_hostapd.deny.tmp"

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    .local v11, "tmpfile":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    .end local v10    # "tmpfile":Ljava/io/File;
    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v13, Ljava/io/BufferedWriter;

    .end local v7    # "reader":Ljava/io/BufferedReader;
    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 285
    .local v13, "writer":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_a

    .line 286
    const-string/jumbo v14, "#"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 287
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 280
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "tmpfile":Ljava/io/File;
    .end local v13    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    return-void

    .line 288
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    const-string/jumbo v14, "-"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/MiuiWifiNative;->isMacAddress(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 291
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 292
    invoke-interface {v9, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 304
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "writer":Ljava/io/BufferedWriter;
    .local v12, "writer":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .local v10, "tmpfile":Ljava/io/File;
    move-object v7, v8

    .line 305
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_4
    const-string/jumbo v14, "MiuiWifiNative"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 310
    if-eqz v7, :cond_4

    .line 311
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 313
    :cond_4
    if-eqz v12, :cond_5

    .line 314
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 316
    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 317
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 272
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_3
    return-void

    .line 295
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 306
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "writer":Ljava/io/BufferedWriter;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .line 307
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :goto_4
    :try_start_7
    const-string/jumbo v14, "MiuiWifiNative"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 310
    if-eqz v7, :cond_8

    .line 311
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 313
    :cond_8
    if-eqz v12, :cond_9

    .line 314
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 316
    :cond_9
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 317
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 319
    :catch_2
    move-exception v2

    goto :goto_3

    .line 299
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/BufferedWriter;
    :cond_a
    :try_start_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "mac$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 300
    .local v5, "mac":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 308
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "mac$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    move-object v12, v13

    .end local v13    # "writer":Ljava/io/BufferedWriter;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .line 310
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :goto_6
    if-eqz v7, :cond_b

    .line 311
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 313
    :cond_b
    if-eqz v12, :cond_c

    .line 314
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 316
    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 317
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 308
    :cond_d
    :goto_7
    throw v14

    .line 302
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "mac$iterator":Ljava/util/Iterator;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/BufferedWriter;
    :cond_e
    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->flush()V

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 310
    if-eqz v8, :cond_f

    .line 311
    :try_start_c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 313
    :cond_f
    if-eqz v13, :cond_10

    .line 314
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 316
    :cond_10
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 317
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :cond_11
    :goto_8
    move-object v12, v13

    .end local v13    # "writer":Ljava/io/BufferedWriter;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 319
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "mac$iterator":Ljava/util/Iterator;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    goto :goto_6

    .restart local v3    # "file":Ljava/io/File;
    .local v7, "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .local v12, "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v14

    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    goto :goto_6

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    :catchall_3
    move-exception v14

    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 319
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 304
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    .local v7, "reader":Ljava/io/BufferedReader;
    .local v10, "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v11    # "tmpfile":Ljava/io/File;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .local v10, "tmpfile":Ljava/io/File;
    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 306
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "file":Ljava/io/File;
    .local v7, "reader":Ljava/io/BufferedReader;
    .local v10, "tmpfile":Ljava/io/File;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v11    # "tmpfile":Ljava/io/File;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .local v10, "tmpfile":Ljava/io/File;
    goto/16 :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "tmpfile":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 319
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "tmpfile":Ljava/io/File;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "mac$iterator":Ljava/util/Iterator;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "tmpfile":Ljava/io/File;
    .restart local v13    # "writer":Ljava/io/BufferedWriter;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8
.end method

.method private parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p1, "filed"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isRemove"    # Z

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->ensureConfigFileExists()V

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, "filedFind":Z
    const/4 v6, 0x0

    .line 220
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 221
    .local v8, "tmpfile":Ljava/io/File;
    const/4 v10, 0x0

    .line 223
    .local v10, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v12, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v3, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "/data/misc/wifi/hostapd.conf.tmp"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v9, "tmpfile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .end local v8    # "tmpfile":Ljava/io/File;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v11, Ljava/io/BufferedWriter;

    .end local v6    # "reader":Ljava/io/BufferedReader;
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 227
    .local v11, "writer":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v10    # "writer":Ljava/io/BufferedWriter;
    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_5

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 229
    const/4 v4, 0x1

    .line 230
    if-nez p3, :cond_0

    .line 231
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 234
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 242
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .local v10, "writer":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .local v8, "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 243
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_4
    const-string/jumbo v12, "MiuiWifiNative"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    if-eqz v6, :cond_2

    .line 249
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 251
    :cond_2
    if-eqz v10, :cond_3

    .line 252
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 254
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 255
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 214
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    return-void

    .line 237
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    :cond_5
    if-nez v4, :cond_6

    if-eqz p3, :cond_a

    .line 240
    :cond_6
    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->flush()V

    .line 241
    invoke-direct {p0, v9, v3}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 248
    if-eqz v7, :cond_7

    .line 249
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 251
    :cond_7
    if-eqz v11, :cond_8

    .line 252
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 254
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 255
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_9
    :goto_5
    move-object v10, v11

    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v10    # "writer":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 238
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    :cond_a
    :try_start_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 244
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v10    # "writer":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 245
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    :goto_6
    :try_start_9
    const-string/jumbo v12, "MiuiWifiNative"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 248
    if-eqz v6, :cond_b

    .line 249
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 251
    :cond_b
    if-eqz v10, :cond_c

    .line 252
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 254
    :cond_c
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 255
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 257
    :catch_2
    move-exception v2

    goto :goto_3

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 248
    :goto_7
    if-eqz v6, :cond_d

    .line 249
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 251
    :cond_d
    if-eqz v10, :cond_e

    .line 252
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 254
    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 255
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 246
    :cond_f
    :goto_8
    throw v12

    .line 257
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .local v6, "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    .local v10, "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    goto :goto_7

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v12

    move-object v10, v11

    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .local v10, "writer":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 257
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 242
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    .local v6, "reader":Ljava/io/BufferedReader;
    .local v8, "tmpfile":Ljava/io/File;
    .local v10, "writer":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "tmpfile":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .local v8, "tmpfile":Ljava/io/File;
    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 244
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "file":Ljava/io/File;
    .local v6, "reader":Ljava/io/BufferedReader;
    .local v8, "tmpfile":Ljava/io/File;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "tmpfile":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .local v8, "tmpfile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v8    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "tmpfile":Ljava/io/File;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "tmpfile":Ljava/io/File;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_5
.end method

.method private static native registerNatives()I
.end method

.method private rename(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "sFile"    # Ljava/io/File;
    .param p2, "dFile"    # Ljava/io/File;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "dPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "dPath":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 194
    const/16 v2, 0x3e8

    const/16 v3, 0x3f2

    invoke-static {v0, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 195
    const/16 v2, 0x1b0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "dPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeSapConnection()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->closeSapConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 160
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public connectToSap()Z
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->connectToSapNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public deauthenticate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deauthenticate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disassociate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "disassociate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doDriverBooleanCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/MiuiWifiNative;->doDriverBooleanCommandNative(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getWlanStatistics(Ljava/lang/String;)Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;-><init>(Lcom/android/server/wifi/MiuiWifiNative;)V

    .line 80
    .local v0, "statics":Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    invoke-static {p1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z

    .line 81
    return-object v0
.end method

.method public reloadDenyList()Z
    .locals 1

    .prologue
    .line 180
    const-string/jumbo v0, "SET deny_mac_file /data/misc/wifi/miui_hostapd.deny"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCompatibleMode(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string/jumbo v0, "SETCOMPATIBLEMODE 1"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/MiuiWifiNative;->doDriverBooleanCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 156
    :cond_0
    const-string/jumbo v0, "SETCOMPATIBLEMODE 0"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/MiuiWifiNative;->doDriverBooleanCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHotSpotDenyMac(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->parsAndUpdateDenyMacFile(Ljava/util/Set;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wifi/MiuiWifiNative;->reloadDenyList()Z

    .line 325
    return-void
.end method

.method public setHotSpotMaxNum(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 265
    const-string/jumbo v0, "max_num_sta"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/MiuiWifiNative;->parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public setHotSpotVendorSpecific(Ljava/lang/String;)V
    .locals 2
    .param p1, "vendorSpecificStr"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 332
    .local v0, "isRemove":Z
    :goto_0
    const-string/jumbo v1, "vendor_elements"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    return-void

    .line 331
    .end local v0    # "isRemove":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isRemove":Z
    goto :goto_0
.end method
