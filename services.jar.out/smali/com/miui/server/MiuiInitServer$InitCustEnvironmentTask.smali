.class Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;
.super Ljava/lang/Thread;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiInitServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCustEnvironmentTask"
.end annotation


# instance fields
.field private mCustVarinat:Ljava/lang/String;

.field private mObs:Lmiui/os/IMiuiInitObserver;

.field final synthetic this$0:Lcom/miui/server/MiuiInitServer;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/MiuiInitServer;
    .param p2, "custVariant"    # Ljava/lang/String;
    .param p3, "obs"    # Lmiui/os/IMiuiInitObserver;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    .line 105
    return-void
.end method

.method private importCustProperties(Ljava/io/File;)V
    .locals 7
    .param p1, "custProp"    # Ljava/io/File;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 192
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "ss":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 203
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 205
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->pokeSystemProperties()V

    .line 206
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 207
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private initCustEnvironment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "custVariant"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v1

    .line 151
    .local v1, "custVariantDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 152
    const/4 v3, 0x0

    return v3

    .line 161
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "cust.prop"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->importCustProperties(Ljava/io/File;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->saveCustVariantToFile(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v3}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 168
    const-string/jumbo v4, "wifi_country_code"

    .line 167
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v3}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v3

    .line 173
    const-string/jumbo v4, "wifi"

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 174
    .local v2, "wM":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    .line 179
    .end local v2    # "wM":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-direct {p0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->installVanwardCustApps()V

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method private installVanwardCustApps()V
    .locals 0

    .prologue
    .line 185
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installVanwardCustApps()V

    .line 184
    return-void
.end method

.method private pokeSystemProperties()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 216
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 220
    .local v5, "services":[Ljava/lang/String;
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v5, v6

    .line 221
    .local v4, "service":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 222
    .local v3, "obj":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    .local v0, "data":Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v3, v8, v0, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    .end local v3    # "obj":Landroid/os/IBinder;
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "services":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    return-void

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "obj":Landroid/os/IBinder;
    .restart local v4    # "service":Ljava/lang/String;
    .restart local v5    # "services":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MiuiInitServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Someone wrote a bad service \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 229
    const-string/jumbo v10, "\' that doesn\'t like to be poked: "

    .line 228
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 213
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "obj":Landroid/os/IBinder;
    .end local v4    # "service":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveCustVariantToFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "custVariant"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v1

    .line 239
    .local v1, "custVariantFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 243
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 244
    .local v3, "fileWriter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 245
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 247
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mCustVarinat:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->initCustEnvironment(Ljava/lang/String;)Z

    move-result v3

    .line 113
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    if-eqz v4, :cond_0

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->mObs:Lmiui/os/IMiuiInitObserver;

    invoke-interface {v4, v3}, Lmiui/os/IMiuiInitObserver;->initDone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/server/MiuiInitServer;->-set0(Lcom/miui/server/MiuiInitServer;Z)Z

    .line 131
    :try_start_1
    invoke-static {}, Lmiui/content/res/GlobalConfiguration;->get()Landroid/content/res/Configuration;

    move-result-object v0

    .line 132
    .local v0, "curConfig":Landroid/content/res/Configuration;
    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 133
    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->update(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    :goto_1
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v4}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.MIUI_INIT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v6, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "region"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-static {v4}, Lcom/miui/server/MiuiInitServer;->-get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 134
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
