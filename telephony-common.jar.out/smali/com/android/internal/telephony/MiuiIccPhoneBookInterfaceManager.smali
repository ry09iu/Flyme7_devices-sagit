.class public Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "MiuiIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;
    }
.end annotation


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_BPR_LOADED:I = 0x4

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiIccPhoneBookInterfaceManager"

.field private static final mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field protected mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

.field protected mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

.field private mError:I

.field private mHasPbr:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiIccPhoneBookInterfaceManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 137
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    sget-object v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;-><init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMiuiAdnCache()Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x4f30

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 134
    :cond_0
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string/jumbo v0, "cleanUp"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->reset()V

    .line 148
    iput-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 150
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    :cond_1
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 371
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    const-string/jumbo v0, "Translate EF_ADN to EF_PBR"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 373
    const/16 v0, 0x4f30

    return v0

    .line 375
    :cond_0
    return p1
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 353
    const-string/jumbo v1, "You cannot call query on this provder from the main UI thread."

    .line 352
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->cleanUp()V

    .line 156
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 444
    const-string/jumbo v0, "MiuiIccPhoneBookInterfaceManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mHasPbr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AdnCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " FreeAdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string/jumbo v0, " mAdnCache=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAdnCapacity()I
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->getAdnCapacity(I)I

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/MiuiAdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 324
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    .line 323
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/SecurityException;

    .line 327
    const-string/jumbo v3, "Requires android.permission.READ_CONTACTS permission"

    .line 326
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 335
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 336
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 341
    :cond_1
    :try_start_1
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I

    .prologue
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 295
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 298
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 299
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 303
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 305
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    return-object v3

    .line 293
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getFreeAdn()I
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/16 v1, 0x6f3a

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->getFreeAdn(I)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I

    return v0
.end method

.method public isPhoneBookLoaded()Z
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->isAllAdnRecordsLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneBookReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v1

    .line 379
    if-eqz v1, :cond_0

    .line 381
    iget v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 379
    :cond_0
    return v0
.end method

.method public isUsimPhoneBookRecords()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 390
    iget v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mHasPbr:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v0, "MiuiIccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "MiuiIccPhoneBookInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/SecurityException;

    .line 260
    const-string/jumbo v1, "Requires android.permission.WRITE_CONTACTS permission"

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, " Index="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, " ==> "

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "("

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, ","

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, ")"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, " pin2="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-static {p5}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 269
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 270
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 271
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v2, "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 274
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    .line 279
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 276
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    .end local v2    # "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/SecurityException;

    .line 208
    const-string/jumbo v1, "Requires android.permission.WRITE_CONTACTS permission"

    .line 207
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, " ("

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, ","

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, ")"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "==>"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, " ("

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ","

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-static {p5}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ")"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, " pin2="

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-static {p6}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 221
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 222
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 223
    .local v5, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 227
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    .line 232
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 229
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 3
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string/jumbo v0, "updateIccRecords"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getMiuiAdnCache()Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 160
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->cleanUp()V

    goto :goto_0
.end method

.method public updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "index"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 413
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 416
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 417
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 418
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 419
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 413
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 432
    iget-object v7, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->checkThread()V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 435
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 436
    .local v6, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 437
    .local v5, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 438
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 440
    iget-boolean v0, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 432
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "status"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 359
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
