.class public Lcom/android/server/am/PKTopWindowSync;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowSync$1;,
        Lcom/android/server/am/PKTopWindowSync$2;,
        Lcom/android/server/am/PKTopWindowSync$3;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PKTopWindowSync"

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static volatile sInstance:Lcom/android/server/am/PKTopWindowSync;


# instance fields
.field private final ACTION:[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

.field private mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

.field private mPKTopWindow:Lcom/android/server/am/PKTopWindow;

.field private final mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

.field private serverPKIconMD5:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lcom/android/server/am/PKTopWindowSync;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindowLocalData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/PKTopWindowSync;)Lcom/android/server/am/PKTopWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mPKTopWindow:Lcom/android/server/am/PKTopWindow;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/PKTopWindowSync;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->serverPKIconMD5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/PKTopWindowSync;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync;->serverPKIconMD5:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/PKTopWindowSync;->sInstance:Lcom/android/server/am/PKTopWindowSync;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->ACTION:[Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->serverPKIconMD5:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/server/am/PKTopWindowSync$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PKTopWindowSync$1;-><init>(Lcom/android/server/am/PKTopWindowSync;)V

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    .line 165
    new-instance v0, Lcom/android/server/am/PKTopWindowSync$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/PKTopWindowSync$2;-><init>(Lcom/android/server/am/PKTopWindowSync;)V

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    .line 242
    new-instance v0, Lcom/android/server/am/PKTopWindowSync$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/PKTopWindowSync$3;-><init>(Lcom/android/server/am/PKTopWindowSync;)V

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync;->mContext:Landroid/content/Context;

    .line 288
    invoke-direct {p0}, Lcom/android/server/am/PKTopWindowSync;->registerReceiver()V

    .line 289
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowLocalData;->getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowLocalData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

    .line 290
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowSync;->mGetDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowLocalData;->setOnGetDataASync(Lcom/android/server/am/PKTopWindowLocalData$GetDataASyncListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowSync;->mPostDataASyncListener:Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowLocalData;->setOnPostDataASync(Lcom/android/server/am/PKTopWindowLocalData$PostDataASyncListener;)V

    .line 286
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowSync;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    sget-object v2, Lcom/android/server/am/PKTopWindowSync;->sInstance:Lcom/android/server/am/PKTopWindowSync;

    .line 296
    .local v2, "sync":Lcom/android/server/am/PKTopWindowSync;
    if-nez v2, :cond_2

    .line 297
    const-class v6, Lcom/android/server/am/PKTopWindowSync;

    monitor-enter v6

    .line 298
    :try_start_0
    sget-object v2, Lcom/android/server/am/PKTopWindowSync;->sInstance:Lcom/android/server/am/PKTopWindowSync;

    .line 299
    if-nez v2, :cond_1

    .line 300
    new-instance v3, Lcom/android/server/am/PKTopWindowSync;

    invoke-direct {v3, p0}, Lcom/android/server/am/PKTopWindowSync;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .local v3, "sync":Lcom/android/server/am/PKTopWindowSync;
    :try_start_1
    sput-object v3, Lcom/android/server/am/PKTopWindowSync;->sInstance:Lcom/android/server/am/PKTopWindowSync;

    .line 304
    const-string/jumbo v5, "pk_prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sput-object v5, Lcom/android/server/am/PKTopWindowSync;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 305
    sget-object v5, Lcom/android/server/am/PKTopWindowSync;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "key_lastsuccess_time"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    sget-object v5, Lcom/android/server/am/PKTopWindowSync;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "key_successtimes"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    const-string/jumbo v5, "PKTopWindowSync"

    const-string/jumbo v7, "very important, only once."

    invoke-static {v5, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v5, "pk_fulljson.dat"

    invoke-static {p0, v5}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "localFullJson":Ljava/lang/String;
    const-string/jumbo v5, "pk_backupurl_enabled.dat"

    invoke-static {p0, v5}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "localBackupUrlEnabled":Ljava/lang/String;
    const-string/jumbo v5, "PKTopWindowSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "localFullJson: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", localBackupUrlEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move-object v2, v3

    .end local v0    # "localBackupUrlEnabled":Ljava/lang/String;
    .end local v1    # "localFullJson":Ljava/lang/String;
    .end local v3    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .restart local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    :cond_1
    :goto_0
    monitor-exit v6

    .line 323
    :cond_2
    return-object v2

    .line 314
    .end local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .restart local v0    # "localBackupUrlEnabled":Ljava/lang/String;
    .restart local v1    # "localFullJson":Ljava/lang/String;
    .restart local v3    # "sync":Lcom/android/server/am/PKTopWindowSync;
    :cond_3
    :try_start_2
    sget-object v4, Lcom/android/server/am/PKTopWindowConfig;->RELEASE_URL:Ljava/lang/String;

    .line 315
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    const-string/jumbo v4, "http://www.fiui.org/"

    .line 318
    :cond_4
    iget-object v5, v3, Lcom/android/server/am/PKTopWindowSync;->mLocalData:Lcom/android/server/am/PKTopWindowLocalData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "v1/whitepacks"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sync_white_packs"

    invoke-virtual {v5, v7, v1, v8}, Lcom/android/server/am/PKTopWindowLocalData;->postDataASync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .end local v3    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .restart local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    goto :goto_0

    .line 297
    .end local v0    # "localBackupUrlEnabled":Ljava/lang/String;
    .end local v1    # "localFullJson":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v6

    throw v5

    .end local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .restart local v3    # "sync":Lcom/android/server/am/PKTopWindowSync;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "sync":Lcom/android/server/am/PKTopWindowSync;
    .restart local v2    # "sync":Lcom/android/server/am/PKTopWindowSync;
    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync;->ACTION:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 329
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowSync;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowSync;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 3

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowSync;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindowSync;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getPKTopWindow(Lcom/android/server/am/PKTopWindow;)V
    .locals 2
    .param p1, "topWindow"    # Lcom/android/server/am/PKTopWindow;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync;->mPKTopWindow:Lcom/android/server/am/PKTopWindow;

    .line 344
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mPKTopWindow:Lcom/android/server/am/PKTopWindow;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync;->mPKTopWindow:Lcom/android/server/am/PKTopWindow;

    new-instance v1, Lcom/android/server/am/PKTopWindowSync$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindowSync$4;-><init>(Lcom/android/server/am/PKTopWindowSync;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->setOnDissmissListener(Lcom/android/server/am/PKTopWindow$DissmissListener;)V

    .line 342
    :cond_0
    return-void
.end method
