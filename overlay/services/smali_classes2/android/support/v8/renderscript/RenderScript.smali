.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/RenderScript$ContextType;,
        Landroid/support/v8/renderscript/RenderScript$MessageThread;,
        Landroid/support/v8/renderscript/RenderScript$Priority;,
        Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;,
        Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field public static final CREATE_FLAG_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final SUPPORT_LIB_API:I = 0x17

.field static final SUPPORT_LIB_VERSION:I = 0x8fd

.field static lock:Ljava/lang/Object;

.field private static mBlackList:Ljava/lang/String;

.field static mCachePath:Ljava/lang/String;

.field private static mProcessContextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v8/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field private static sNative:I

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;

.field private static sSdkVersion:I

.field static sUseGCHooks:Z

.field private static useIOlib:Z

.field private static useNative:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field private mDispatchAPILevel:I

.field mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

.field mElement_A_8:Landroid/support/v8/renderscript/Element;

.field mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

.field mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

.field mElement_F32:Landroid/support/v8/renderscript/Element;

.field mElement_F64:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

.field mElement_I16:Landroid/support/v8/renderscript/Element;

.field mElement_I32:Landroid/support/v8/renderscript/Element;

.field mElement_I64:Landroid/support/v8/renderscript/Element;

.field mElement_I8:Landroid/support/v8/renderscript/Element;

.field mElement_INT_2:Landroid/support/v8/renderscript/Element;

.field mElement_INT_3:Landroid/support/v8/renderscript/Element;

.field mElement_INT_4:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_565:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_888:Landroid/support/v8/renderscript/Element;

.field mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

.field mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

.field mElement_TYPE:Landroid/support/v8/renderscript/Element;

.field mElement_U16:Landroid/support/v8/renderscript/Element;

.field mElement_U32:Landroid/support/v8/renderscript/Element;

.field mElement_U64:Landroid/support/v8/renderscript/Element;

.field mElement_U8:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_2:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_3:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_4:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

.field private mEnableMultiInput:Z

.field mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

.field mIncCon:J

.field mIncLoaded:Z

.field private mIsProcessContext:Z

.field mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

.field private mNativeLibDir:Ljava/lang/String;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 66
    const-string/jumbo v0, ""

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 115
    sput v1, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 116
    sput v1, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    .line 57
    iput-boolean v2, p0, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    .line 58
    iput v2, p0, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    .line 60
    iput v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    .line 61
    iput v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1034
    iput-boolean v2, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z

    .line 1151
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 1191
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 1328
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    .line 1329
    if-eqz p1, :cond_0

    .line 1330
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 1332
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    .line 1334
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    .line 1335
    iput-boolean v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z

    .line 1336
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1327
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1487
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    .line 1538
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    .line 1551
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .prologue
    .line 1564
    sget-object v3, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1565
    :try_start_0
    sget-object v2, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "prs$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/RenderScript;

    .line 1566
    .local v0, "prs":Landroid/support/v8/renderscript/RenderScript;
    iget-object v2, v0, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    if-ne v2, p2, :cond_0

    .line 1567
    iget v2, v0, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    if-ne v2, p3, :cond_0

    .line 1568
    iget v2, v0, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .line 1570
    return-object v0

    .line 1574
    .end local v0    # "prs":Landroid/support/v8/renderscript/RenderScript;
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 1575
    .restart local v0    # "prs":Landroid/support/v8/renderscript/RenderScript;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1576
    sget-object v2, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1577
    return-object v0

    .line 1564
    .end local v0    # "prs":Landroid/support/v8/renderscript/RenderScript;
    .end local v1    # "prs$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    .line 1500
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I

    .prologue
    .line 1523
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1524
    .local v0, "v":I
    invoke-static {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static createMultiContext(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;II)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;
    .param p2, "flags"    # I
    .param p3, "API_number"    # I

    .prologue
    .line 1623
    invoke-static {p0, p3, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static forceCompat()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput v0, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 87
    return-void
.end method

.method private helpDestroy()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1646
    const/4 v3, 0x0

    .line 1647
    .local v3, "shouldDestroy":Z
    monitor-enter p0

    .line 1648
    :try_start_0
    iget-boolean v4, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z

    if-nez v4, :cond_0

    .line 1649
    const/4 v3, 0x1

    .line 1650
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v8/renderscript/RenderScript;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1654
    if-eqz v3, :cond_4

    .line 1655
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    .line 1656
    iget-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1657
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncContextFinish()V

    .line 1658
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncContextDestroy()V

    .line 1659
    iput-wide v6, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    .line 1661
    :cond_1
    iget-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 1662
    iget-object v4, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1665
    iget-object v4, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->interrupt()V

    .line 1669
    const/4 v1, 0x0

    .local v1, "hasJoined":Z
    const/4 v2, 0x0

    .line 1670
    .local v2, "interrupted":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1672
    :try_start_1
    iget-object v4, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1673
    const/4 v1, 0x1

    goto :goto_0

    .line 1647
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1674
    .restart local v1    # "hasJoined":Z
    .restart local v2    # "interrupted":Z
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    goto :goto_0

    .line 1678
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-eqz v2, :cond_3

    .line 1679
    const-string/jumbo v4, "RenderScript_jni"

    const-string/jumbo v5, "Interrupted during wait for MessageThread to join"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1683
    :cond_3
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextDestroy()V

    .line 1645
    .end local v1    # "hasJoined":Z
    .end local v2    # "interrupted":Z
    :cond_4
    return-void
.end method

.method private static internalCreate(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;
    .param p3, "flags"    # I

    .prologue
    .line 1355
    new-instance v3, Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 1357
    .local v3, "rs":Landroid/support/v8/renderscript/RenderScript;
    sget v6, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 1358
    sput p1, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    .line 1362
    :cond_0
    sget v6, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Landroid/support/v8/renderscript/RenderScript;->setupNative(ILandroid/content/Context;)Z

    move-result v6

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    .line 1363
    sget-object v7, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1364
    :try_start_0
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 1366
    :try_start_1
    const-string/jumbo v6, "dalvik.system.VMRuntime"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 1367
    .local v14, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getRuntime"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v14, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1368
    .local v12, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 1369
    const-string/jumbo v6, "registerNativeAllocation"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    invoke-virtual {v14, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 1370
    const-string/jumbo v6, "registerNativeFree"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v9, v8, v15

    invoke-virtual {v14, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 1371
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    .end local v12    # "get_runtime":Ljava/lang/reflect/Method;
    .end local v14    # "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v6, v8, :cond_7

    .line 1380
    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 1381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/librsjni.so"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1385
    :goto_1
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z

    .line 1386
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v6

    sput v6, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v7

    .line 1394
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    if-eqz v6, :cond_8

    .line 1395
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v7, "RS native mode"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_2

    .line 1401
    const/4 v6, 0x1

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    .line 1405
    :cond_2
    move/from16 v2, p1

    .line 1406
    .local v2, "dispatchAPI":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, p1

    if-ge v0, v6, :cond_3

    .line 1408
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1411
    :cond_3
    const/4 v13, 0x0

    .line 1414
    .local v13, "rssupportPath":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_4

    .line 1415
    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 1416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/libRSSupport.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1418
    .end local v13    # "rssupportPath":Ljava/lang/String;
    :cond_4
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    invoke-virtual {v3, v6, v2, v13}, Landroid/support/v8/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1419
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    if-eqz v6, :cond_5

    .line 1420
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v7, "Unable to load libRS.so, falling back to compat mode"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v6, 0x0

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    .line 1424
    :cond_5
    :try_start_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_9

    .line 1425
    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 1426
    invoke-static {v13}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1434
    :goto_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2, v13}, Landroid/support/v8/renderscript/RenderScript;->nLoadSO(ZILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1435
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v7, "Error loading RS Compat library: nLoadSO() failed; Support lib version: 2301"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v7, "Error loading libRSSupport library, Support lib version: 2301"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1359
    .end local v2    # "dispatchAPI":I
    :cond_6
    sget v6, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    move/from16 v0, p1

    if-eq v6, v0, :cond_0

    .line 1360
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v7, "Can\'t have two contexts with different SDK versions in support lib"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1372
    :catch_0
    move-exception v10

    .line 1373
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v8, "No GC methods"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const/4 v6, 0x0

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1363
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1383
    :cond_7
    :try_start_5
    const-string/jumbo v6, "rsjni"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1387
    :catch_1
    move-exception v11

    .line 1388
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_6
    const-string/jumbo v6, "RenderScript_jni"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error loading RS jni library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error loading RS jni library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Support lib API: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8fd

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1397
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_8
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v7, "RS compat mode"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1428
    .restart local v2    # "dispatchAPI":I
    :cond_9
    :try_start_7
    const-string/jumbo v6, "RSSupport"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 1430
    :catch_2
    move-exception v11

    .line 1431
    .restart local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v6, "RenderScript_jni"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error loading RS Compat library: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Support lib version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8fd

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error loading RS Compat library: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Support lib version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8fd

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1440
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_a
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    if-eqz v6, :cond_b

    .line 1442
    :try_start_8
    const-string/jumbo v6, "RSSupportIO"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_3

    .line 1446
    :goto_4
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    if-eqz v6, :cond_d

    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->nLoadIOSO()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1454
    :cond_b
    :goto_5
    const/16 v6, 0x17

    if-lt v2, v6, :cond_c

    .line 1456
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    .line 1458
    :try_start_9
    const-string/jumbo v6, "blasV8"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_4

    .line 1464
    :cond_c
    :goto_6
    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v4

    .line 1465
    .local v4, "device":J
    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    iget-object v9, v3, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    const/4 v6, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v3 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nContextCreate(JIIILjava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 1466
    move-object/from16 v0, p2

    iput-object v0, v3, Landroid/support/v8/renderscript/RenderScript;->mContextType:Landroid/support/v8/renderscript/RenderScript$ContextType;

    .line 1467
    move/from16 v0, p3

    iput v0, v3, Landroid/support/v8/renderscript/RenderScript;->mContextFlags:I

    .line 1468
    move/from16 v0, p1

    iput v0, v3, Landroid/support/v8/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1469
    iput v2, v3, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    .line 1470
    iget-wide v6, v3, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    .line 1471
    new-instance v6, Landroid/support/v8/renderscript/RSDriverException;

    const-string/jumbo v7, "Failed to create RS context."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1443
    .end local v4    # "device":J
    :catch_3
    move-exception v11

    .line 1444
    .restart local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v6, 0x0

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    goto :goto_4

    .line 1447
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_d
    const-string/jumbo v6, "RenderScript_jni"

    const-string/jumbo v7, "Unable to load libRSSupportIO.so, USAGE_IO not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v6, 0x0

    sput-boolean v6, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    goto :goto_5

    .line 1459
    :catch_4
    move-exception v11

    .line 1460
    .restart local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v6, "RenderScript_jni"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to load BLAS lib, ONLY BNNM will be supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1473
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v4    # "device":J
    :cond_e
    new-instance v6, Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-direct {v6, v3}, Landroid/support/v8/renderscript/RenderScript$MessageThread;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v6, v3, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    .line 1474
    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->start()V

    .line 1475
    return-object v3
.end method

.method public static releaseAllContexts()V
    .locals 5

    .prologue
    .line 1596
    sget-object v4, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1597
    :try_start_0
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 1598
    .local v0, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v8/renderscript/RenderScript;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Landroid/support/v8/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1601
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "prs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/RenderScript;

    .line 1602
    .local v1, "prs":Landroid/support/v8/renderscript/RenderScript;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1603
    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    goto :goto_0

    .line 1596
    .end local v1    # "prs":Landroid/support/v8/renderscript/RenderScript;
    .end local v2    # "prs$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1605
    .restart local v2    # "prs$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1594
    return-void
.end method

.method static native rsnSystemGetPointerSize()I
.end method

.method public static setBlackList(Ljava/lang/String;)V
    .locals 0
    .param p0, "blackList"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    sput-object p0, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "com.android.renderscript.cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/support/v8/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 247
    return-void
.end method

.method private static setupNative(ILandroid/content/Context;)Z
    .locals 18
    .param p0, "sdkVersion"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 146
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, p0

    if-ge v15, v0, :cond_0

    .line 147
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 148
    const/4 v15, 0x0

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 151
    :cond_0
    sget v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 154
    const/4 v6, 0x0

    .line 156
    .local v6, "forcecompat":I
    :try_start_0
    const-string/jumbo v15, "android.os.SystemProperties"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 157
    .local v14, "sysprop":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v11, v16

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v11, v16

    .line 158
    .local v11, "signature":[Ljava/lang/Class;
    const-string/jumbo v15, "getInt"

    invoke-virtual {v14, v15, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 159
    .local v8, "getint":Ljava/lang/reflect/Method;
    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const-string/jumbo v15, "debug.rs.forcecompat"

    const/16 v16, 0x0

    aput-object v15, v2, v16

    new-instance v15, Ljava/lang/Integer;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    const/16 v16, 0x1

    aput-object v15, v2, v16

    .line 160
    .local v2, "args":[Ljava/lang/Object;
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 165
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v8    # "getint":Ljava/lang/reflect/Method;
    .end local v11    # "signature":[Ljava/lang/Class;
    .end local v14    # "sysprop":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 166
    if-nez v6, :cond_3

    .line 167
    const/4 v15, 0x1

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 173
    :goto_1
    sget v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 177
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 178
    const/16 v17, 0x80

    .line 177
    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 183
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    const-wide/16 v12, 0x0

    .line 187
    .local v12, "minorVersion":J
    :try_start_2
    const-string/jumbo v15, "android.renderscript.RenderScript"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 188
    .local v10, "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v15, "getMinorID"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 189
    .local v7, "getMinorID":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v12

    .line 194
    .end local v7    # "getMinorID":Ljava/lang/reflect/Method;
    .end local v10    # "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_2

    .line 196
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v16, "com.android.support.v8.renderscript.EnableAsyncTeardown"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 197
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-nez v15, :cond_1

    .line 198
    const/4 v15, 0x0

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 203
    :cond_1
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v16, "com.android.support.v8.renderscript.EnableBlurWorkaround"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 204
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 206
    const/4 v15, 0x0

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 214
    .end local v6    # "forcecompat":I
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "minorVersion":J
    :cond_2
    sget v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 216
    sget-object v15, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 217
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x28

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 218
    sget-object v16, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 219
    const/16 v16, 0x3a

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 220
    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 221
    const/16 v16, 0x3a

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 222
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 223
    const/16 v16, 0x29

    .line 217
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "deviceInfo":Ljava/lang/String;
    sget-object v15, Landroid/support/v8/renderscript/RenderScript;->mBlackList:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 225
    const/4 v15, 0x0

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    .line 226
    const/4 v15, 0x0

    return v15

    .line 169
    .end local v3    # "deviceInfo":Ljava/lang/String;
    .restart local v6    # "forcecompat":I
    :cond_3
    const/4 v15, 0x0

    sput v15, Landroid/support/v8/renderscript/RenderScript;->sNative:I

    goto/16 :goto_1

    .line 179
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x1

    return v15

    .line 229
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "forcecompat":I
    :cond_4
    const/4 v15, 0x1

    return v15

    .line 231
    :cond_5
    const/4 v15, 0x0

    return v15

    .line 190
    .restart local v6    # "forcecompat":I
    .restart local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "minorVersion":J
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 161
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "minorVersion":J
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .prologue
    .line 1632
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDump(I)V

    .line 1631
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1703
    iget-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIsProcessContext:Z

    if-eqz v0, :cond_0

    .line 1705
    return-void

    .line 1707
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1708
    invoke-direct {p0}, Landroid/support/v8/renderscript/RenderScript;->helpDestroy()V

    .line 1702
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1689
    invoke-direct {p0}, Landroid/support/v8/renderscript/RenderScript;->helpDestroy()V

    .line 1690
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1688
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1642
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    .line 1641
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method getDispatchAPILevel()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDispatchAPILevel:I

    return v0
.end method

.method public getErrorHandler()Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 4

    .prologue
    .line 1712
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUseNative()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useNative:Z

    return v0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 457
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 455
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 412
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    monitor-enter p0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 389
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 7
    .param p1, "type"    # J
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 401
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 7
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    .prologue
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 406
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    monitor-enter p0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 383
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 11
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "usage"    # I
    .param p5, "pointer"    # J

    .prologue
    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 378
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "mip"    # I
    .param p4, "bmp"    # Landroid/graphics/Bitmap;
    .param p5, "usage"    # I

    .prologue
    monitor-enter p0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 396
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 17
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 466
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v13, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 464
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 21
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstMip"    # I
    .param p6, "dstFace"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "srcAlloc"    # J
    .param p11, "srcXoff"    # I
    .param p12, "srcYoff"    # I
    .param p13, "srcMip"    # I
    .param p14, "srcFace"    # I

    .prologue
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 494
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-virtual/range {v3 .. v19}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 492
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 19
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 509
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v0, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move/from16 v16, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-virtual/range {v3 .. v18}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 507
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "b"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 515
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 513
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 21
    .param p1, "dstAlloc"    # J
    .param p3, "dstXoff"    # I
    .param p4, "dstYoff"    # I
    .param p5, "dstZoff"    # I
    .param p6, "dstMip"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "depth"    # I
    .param p10, "srcAlloc"    # J
    .param p12, "srcXoff"    # I
    .param p13, "srcYoff"    # I
    .param p14, "srcZoff"    # I
    .param p15, "srcMip"    # I

    .prologue
    monitor-enter p0

    .line 529
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 530
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-wide/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-virtual/range {v3 .. v20}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 528
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 21
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "zoff"    # I
    .param p6, "mip"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "depth"    # I
    .param p10, "d"    # Ljava/lang/Object;
    .param p11, "sizeBytes"    # I
    .param p12, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p13, "mSize"    # I
    .param p14, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 543
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 544
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 545
    move-object/from16 v0, p12

    iget v0, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move/from16 v17, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v18, p13

    move/from16 v19, p14

    .line 544
    invoke-virtual/range {v3 .. v19}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 542
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationElementData1D(JIII[BI)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "mip"    # I
    .param p5, "compIdx"    # I
    .param p6, "d"    # [B
    .param p7, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    .line 471
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 472
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationElementData1D(JJIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 470
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 3
    .param p1, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 452
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 450
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "alloc"    # J
    .param p3, "xBytesSize"    # I
    .param p4, "dimY"    # I
    .param p5, "dimZ"    # I

    .prologue
    monitor-enter p0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 441
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetStride(J)J
    .locals 3
    .param p1, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 446
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetStride(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(J)J
    .locals 3
    .param p1, "id"    # J

    .prologue
    monitor-enter p0

    .line 596
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 597
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetType(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(J)V
    .locals 3
    .param p1, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 436
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 434
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoSend(J)V
    .locals 3
    .param p1, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 431
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 429
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "d"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p5, "mSize"    # I
    .param p6, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 551
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    iget v7, p4, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 549
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 17
    .param p1, "id"    # J
    .param p3, "off"    # I
    .param p4, "mip"    # I
    .param p5, "count"    # I
    .param p6, "d"    # Ljava/lang/Object;
    .param p7, "sizeBytes"    # I
    .param p8, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p9, "mSize"    # I
    .param p10, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 558
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 559
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v13, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 557
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 19
    .param p1, "id"    # J
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "mip"    # I
    .param p6, "face"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I
    .param p9, "d"    # Ljava/lang/Object;
    .param p10, "sizeBytes"    # I
    .param p11, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p12, "mSize"    # I
    .param p13, "usePadding"    # Z

    .prologue
    monitor-enter p0

    .line 578
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 579
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v0, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    move/from16 v16, v0

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v17, p12

    move/from16 v18, p13

    invoke-virtual/range {v3 .. v18}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 577
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nAllocationResize1D(JI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dimX"    # I

    .prologue
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 603
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 601
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize2D(JII)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "dimX"    # I
    .param p4, "dimY"    # I

    .prologue
    monitor-enter p0

    .line 607
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 608
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize2D(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 606
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "sur"    # Landroid/view/Surface;

    .prologue
    monitor-enter p0

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 425
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 423
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(JI)V
    .locals 7
    .param p1, "alloc"    # J
    .param p3, "src"    # I

    .prologue
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 419
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 417
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 19
    .param p1, "kernelID"    # J
    .param p3, "returnValue"    # J
    .param p5, "fieldIDs"    # [J
    .param p6, "values"    # [J
    .param p7, "sizes"    # [I
    .param p8, "depClosures"    # [J
    .param p9, "depFieldIDs"    # [J

    .prologue
    monitor-enter p0

    .line 863
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 864
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v16

    .line 866
    .local v16, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_0

    .line 867
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Failed creating closure."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16    # "c":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v16    # "c":J
    :cond_0
    monitor-exit p0

    .line 869
    return-wide v16
.end method

.method declared-synchronized nClosureSetArg(JIJI)V
    .locals 10
    .param p1, "closureID"    # J
    .param p3, "index"    # I
    .param p4, "value"    # J
    .param p6, "size"    # I

    .prologue
    monitor-enter p0

    .line 889
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 890
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 888
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 11
    .param p1, "closureID"    # J
    .param p3, "fieldID"    # J
    .param p5, "value"    # J
    .param p7, "size"    # I

    .prologue
    monitor-enter p0

    .line 898
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 899
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 897
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(JIIILjava/lang/String;)J
    .locals 3
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "contextType"    # I
    .param p6, "nativeLibDir"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(JIIILjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(J)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 298
    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 299
    .local v2, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 301
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 303
    .local v0, "curCon":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 305
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 306
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 293
    return-void

    .end local v0    # "curCon":J
    .end local v2    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized nContextDump(I)V
    .locals 2
    .param p1, "bits"    # I

    .prologue
    monitor-enter p0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 316
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 314
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 321
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 319
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(J[I)I
.end method

.method native nContextInitToClient(J)V
.end method

.method native nContextPeekMessage(J[I)I
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    monitor-enter p0

    .line 326
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 327
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 325
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 2
    .param p1, "p"    # I

    .prologue
    monitor-enter p0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 311
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 309
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()J
.end method

.method native nDeviceDestroy(J)V
.end method

.method native nDeviceSetConfig(JII)V
.end method

.method declared-synchronized nElementCreate(JIZI)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "kind"    # I
    .param p4, "norm"    # Z
    .param p5, "vecSize"    # I

    .prologue
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 344
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(JJIZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 7
    .param p1, "elements"    # [J
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    .prologue
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 349
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(J[I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "elementData"    # [I

    .prologue
    monitor-enter p0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 354
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 352
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "IDs"    # [J
    .param p4, "names"    # [Ljava/lang/String;
    .param p5, "arraySizes"    # [I

    .prologue
    monitor-enter p0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 360
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 358
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nIncAllocationCreateTyped(JJI)J
    .locals 11
    .param p1, "alloc"    # J
    .param p3, "type"    # J
    .param p5, "xBytesSize"    # I

    .prologue
    monitor-enter p0

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1030
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    iget-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnIncAllocationCreateTyped(JJJJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nIncContextCreate(JIII)J
    .locals 3
    .param p1, "dev"    # J
    .param p3, "ver"    # I
    .param p4, "sdkVer"    # I
    .param p5, "contextType"    # I

    .prologue
    monitor-enter p0

    .line 983
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextCreate(JIII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nIncContextDestroy()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 987
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 991
    iget-object v3, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 992
    .local v2, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 994
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    .line 996
    .local v0, "curCon":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    .line 998
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 999
    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 986
    return-void

    .end local v0    # "curCon":J
    .end local v2    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized nIncContextFinish()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 1004
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1005
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v8/renderscript/RenderScript;->rsnIncContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1003
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nIncDeviceCreate()J
.end method

.method native nIncDeviceDestroy(J)V
.end method

.method declared-synchronized nIncElementCreate(JIZI)J
    .locals 9
    .param p1, "type"    # J
    .param p3, "kind"    # I
    .param p4, "norm"    # Z
    .param p5, "vecSize"    # I

    .prologue
    monitor-enter p0

    .line 1019
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1020
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnIncElementCreate(JJIZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nIncLoadSO(ILjava/lang/String;)Z
.end method

.method nIncObjDestroy(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1013
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1014
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnIncObjDestroy(JJ)V

    .line 1009
    :cond_0
    return-void
.end method

.method declared-synchronized nIncTypeCreate(JIIIZZI)J
    .locals 13
    .param p1, "eid"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mips"    # Z
    .param p7, "faces"    # Z
    .param p8, "yuv"    # I

    .prologue
    monitor-enter p0

    .line 1024
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1025
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnIncTypeCreate(JJIIIZZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 13
    .param p1, "invokeID"    # J
    .param p3, "params"    # [B
    .param p4, "fieldIDs"    # [J
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I

    .prologue
    monitor-enter p0

    .line 876
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 877
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide v10

    .line 879
    .local v10, "c":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Failed creating closure."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "c":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v10    # "c":J
    :cond_0
    monitor-exit p0

    .line 882
    return-wide v10
.end method

.method native nLoadIOSO()Z
.end method

.method native nLoadSO(ZILjava/lang/String;)Z
.end method

.method nObjDestroy(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 336
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 337
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    .line 332
    :cond_0
    return-void
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 10
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    .prologue
    monitor-enter p0

    .line 852
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 853
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(JJIZ)V
    .locals 11
    .param p1, "script"    # J
    .param p3, "alloc"    # J
    .param p5, "slot"    # I
    .param p6, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 613
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 614
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 615
    .local v2, "curCon":J
    if-eqz p6, :cond_0

    .line 616
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 618
    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptBindAllocation(JJJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 612
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 8
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    .prologue
    monitor-enter p0

    .line 762
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 763
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(JIZ)J
    .locals 9
    .param p1, "sid"    # J
    .param p3, "slot"    # I
    .param p4, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 816
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 817
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 818
    .local v2, "curCon":J
    if-eqz p4, :cond_0

    .line 819
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .line 821
    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJIZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(JIJJ[BZ)V
    .locals 18
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ain"    # J
    .param p6, "aout"    # J
    .param p8, "params"    # [B
    .param p9, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 645
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 646
    if-nez p8, :cond_0

    .line 647
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move/from16 v15, p9

    invoke-virtual/range {v3 .. v15}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJJIJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 644
    return-void

    .line 649
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-object/from16 v15, p8

    move/from16 v16, p9

    invoke-virtual/range {v3 .. v16}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJJIJJ[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "params"    # [B
    .param p8, "limits"    # [I

    .prologue
    monitor-enter p0

    .line 668
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript;->mEnableMultiInput:Z

    if-nez v0, :cond_0

    .line 669
    const-string/jumbo v0, "RenderScript_jni"

    const-string/jumbo v1, "Multi-input kernels are not supported, please change targetSdkVersion to >= 23"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Multi-input kernels are not supported before API 23)"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 672
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 673
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 667
    return-void
.end method

.method declared-synchronized nScriptForEachClipped(JIJJ[BIIIIIIZ)V
    .locals 24
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ain"    # J
    .param p6, "aout"    # J
    .param p8, "params"    # [B
    .param p9, "xstart"    # I
    .param p10, "xend"    # I
    .param p11, "ystart"    # I
    .param p12, "yend"    # I
    .param p13, "zstart"    # I
    .param p14, "zend"    # I
    .param p15, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 656
    if-nez p8, :cond_0

    .line 657
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    invoke-virtual/range {v3 .. v21}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJIIIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 654
    return-void

    .line 659
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-object/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move/from16 v20, p13

    move/from16 v21, p14

    move/from16 v22, p15

    invoke-virtual/range {v3 .. v22}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cachePath"    # Ljava/lang/String;
    .param p3, "closures"    # [J

    .prologue
    monitor-enter p0

    .line 906
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 907
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroup2Execute(J)V
    .locals 3
    .param p1, "groupID"    # J

    .prologue
    monitor-enter p0

    .line 912
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 913
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 911
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 9
    .param p1, "kernels"    # [J
    .param p2, "src"    # [J
    .param p3, "dstk"    # [J
    .param p4, "dstf"    # [J
    .param p5, "types"    # [J

    .prologue
    monitor-enter p0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 827
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(J)V
    .locals 3
    .param p1, "group"    # J

    .prologue
    monitor-enter p0

    .line 844
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 845
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 843
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 11
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 832
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 833
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 831
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 11
    .param p1, "group"    # J
    .param p3, "kernel"    # J
    .param p5, "alloc"    # J

    .prologue
    monitor-enter p0

    .line 838
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 839
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 837
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V
    .locals 24
    .param p1, "id"    # J
    .param p3, "M"    # I
    .param p4, "N"    # I
    .param p5, "K"    # I
    .param p6, "A"    # J
    .param p8, "a_offset"    # I
    .param p9, "B"    # J
    .param p11, "b_offset"    # I
    .param p12, "C"    # J
    .param p14, "c_offset"    # I
    .param p15, "c_mult_int"    # I
    .param p16, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 970
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 971
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move/from16 v15, p8

    move-wide/from16 v16, p9

    move/from16 v18, p11

    move-wide/from16 v19, p12

    move/from16 v21, p14

    move/from16 v22, p15

    move/from16 v23, p16

    invoke-virtual/range {v3 .. v23}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 969
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V
    .locals 32
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # F
    .param p13, "alphaY"    # F
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "betaX"    # F
    .param p19, "betaY"    # F
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I
    .param p26, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 948
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 949
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-wide/from16 v19, p14

    move-wide/from16 v21, p16

    move/from16 v23, p18

    move/from16 v24, p19

    move-wide/from16 v25, p20

    move/from16 v27, p22

    move/from16 v28, p23

    move/from16 v29, p24

    move/from16 v30, p25

    move/from16 v31, p26

    invoke-virtual/range {v1 .. v31}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 947
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V
    .locals 34
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # D
    .param p14, "A"    # J
    .param p16, "B"    # J
    .param p18, "beta"    # D
    .param p20, "C"    # J
    .param p22, "incX"    # I
    .param p23, "incY"    # I
    .param p24, "KL"    # I
    .param p25, "KU"    # I
    .param p26, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 936
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 937
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v2, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-wide/from16 v18, p12

    move-wide/from16 v20, p14

    move-wide/from16 v22, p16

    move-wide/from16 v24, p18

    move-wide/from16 v26, p20

    move/from16 v28, p22

    move/from16 v29, p23

    move/from16 v30, p24

    move/from16 v31, p25

    move/from16 v32, p26

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 935
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V
    .locals 33
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alpha"    # F
    .param p13, "A"    # J
    .param p15, "B"    # J
    .param p17, "beta"    # F
    .param p18, "C"    # J
    .param p20, "incX"    # I
    .param p21, "incY"    # I
    .param p22, "KL"    # I
    .param p23, "KU"    # I
    .param p24, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 924
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 925
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-wide/from16 v20, p13

    move-wide/from16 v22, p15

    move/from16 v24, p17

    move-wide/from16 v25, p18

    move/from16 v27, p20

    move/from16 v28, p21

    move/from16 v29, p22

    move/from16 v30, p23

    move/from16 v31, p24

    invoke-virtual/range {v3 .. v31}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 923
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V
    .locals 38
    .param p1, "id"    # J
    .param p3, "func"    # I
    .param p4, "TransA"    # I
    .param p5, "TransB"    # I
    .param p6, "Side"    # I
    .param p7, "Uplo"    # I
    .param p8, "Diag"    # I
    .param p9, "M"    # I
    .param p10, "N"    # I
    .param p11, "K"    # I
    .param p12, "alphaX"    # D
    .param p14, "alphaY"    # D
    .param p16, "A"    # J
    .param p18, "B"    # J
    .param p20, "betaX"    # D
    .param p22, "betaY"    # D
    .param p24, "C"    # J
    .param p26, "incX"    # I
    .param p27, "incY"    # I
    .param p28, "KL"    # I
    .param p29, "KU"    # I
    .param p30, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 960
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 961
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object/from16 v2, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-wide/from16 v18, p12

    move-wide/from16 v20, p14

    move-wide/from16 v22, p16

    move-wide/from16 v24, p18

    move-wide/from16 v26, p20

    move-wide/from16 v28, p22

    move-wide/from16 v30, p24

    move/from16 v32, p26

    move/from16 v33, p27

    move/from16 v34, p28

    move/from16 v35, p29

    move/from16 v36, p30

    invoke-virtual/range {v2 .. v36}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 959
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nScriptIntrinsicCreate(IJZ)J
    .locals 12
    .param p1, "id"    # I
    .param p2, "eid"    # J
    .param p4, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 768
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 769
    if-eqz p4, :cond_4

    .line 770
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_0

    .line 771
    const-string/jumbo v1, "RenderScript_jni"

    const-string/jumbo v4, "Incremental Intrinsics are not supported, please change targetSdkVersion to >= 21"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Incremental Intrinsics are not supported before Lollipop (API 21)"

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 775
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 777
    :try_start_2
    const-string/jumbo v1, "RSSupport"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/support/v8/renderscript/RenderScript;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/libRSSupport.so"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    invoke-virtual {p0, v4, v1}, Landroid/support/v8/renderscript/RenderScript;->nIncLoadSO(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 783
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Error loading libRSSupport library for Incremental Intrinsic Support"

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading RS Compat library for Incremental Intrinsic Support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading RS Compat library for Incremental Intrinsic Support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v8/renderscript/RenderScript;->mIncLoaded:Z

    .line 787
    :cond_2
    iget-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 789
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nIncDeviceCreate()J

    move-result-wide v2

    .line 790
    .local v2, "device":J
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nIncContextCreate(JIII)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    .line 792
    .end local v2    # "device":J
    :cond_3
    iget-wide v5, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    move-object v4, p0

    move v7, p1

    move-wide v8, p2

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 794
    :cond_4
    :try_start_4
    iget-wide v5, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v4, p0

    move v7, p1

    move-wide v8, p2

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJZ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4
.end method

.method declared-synchronized nScriptInvoke(JIZ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 631
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 632
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 633
    .local v2, "curCon":J
    if-eqz p4, :cond_0

    .line 634
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .line 636
    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvoke(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 630
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 7
    .param p1, "sid"    # J
    .param p3, "slot"    # I

    .prologue
    monitor-enter p0

    .line 810
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 811
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(JI[BZ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "params"    # [B
    .param p5, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 686
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 687
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 688
    .local v2, "curCon":J
    if-eqz p5, :cond_0

    .line 689
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 691
    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 685
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(JIIZ)J
    .locals 9
    .param p1, "sid"    # J
    .param p3, "slot"    # I
    .param p4, "sig"    # I
    .param p5, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 800
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 801
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 802
    .local v2, "curCon":J
    if-eqz p5, :cond_0

    .line 803
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    .line 805
    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJIIZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptReduce(JI[JJ[I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "ains"    # [J
    .param p5, "aout"    # J
    .param p7, "limits"    # [I

    .prologue
    monitor-enter p0

    .line 680
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 681
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 679
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(J[BZ)V
    .locals 9
    .param p1, "script"    # J
    .param p3, "timeZone"    # [B
    .param p4, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 623
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 624
    .local v2, "curCon":J
    if-eqz p4, :cond_0

    .line 625
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    .line 627
    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 621
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(JIDZ)V
    .locals 10
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # D
    .param p6, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 722
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 723
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 724
    .local v2, "curCon":J
    if-eqz p6, :cond_0

    .line 725
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    .line 727
    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarD(JJIDZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 721
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(JIFZ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # F
    .param p5, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 713
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 714
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 715
    .local v2, "curCon":J
    if-eqz p5, :cond_0

    .line 716
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    .line 718
    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(JJIFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 712
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(JIIZ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # I
    .param p5, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 695
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 696
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 697
    .local v2, "curCon":J
    if-eqz p5, :cond_0

    .line 698
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    .line 700
    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarI(JJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 694
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(JIJZ)V
    .locals 10
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J
    .param p6, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 704
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 705
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 706
    .local v2, "curCon":J
    if-eqz p6, :cond_0

    .line 707
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    .line 709
    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 703
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(JIJZ)V
    .locals 10
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # J
    .param p6, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 751
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 752
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 753
    .local v2, "curCon":J
    if-eqz p6, :cond_0

    .line 754
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    .line 756
    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 750
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(JI[BZ)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B
    .param p5, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 731
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 732
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 733
    .local v2, "curCon":J
    if-eqz p5, :cond_0

    .line 734
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 736
    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarV(JJI[BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 730
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(JI[BJ[IZ)V
    .locals 13
    .param p1, "id"    # J
    .param p3, "slot"    # I
    .param p4, "val"    # [B
    .param p5, "e"    # J
    .param p7, "dims"    # [I
    .param p8, "mUseInc"    # Z

    .prologue
    monitor-enter p0

    .line 742
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 743
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    .line 744
    .local v2, "curCon":J
    if-eqz p8, :cond_0

    .line 745
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mIncCon:J

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 747
    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 741
    return-void

    .end local v2    # "curCon":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13
    .param p1, "eid"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "mips"    # Z
    .param p7, "faces"    # Z
    .param p8, "yuv"    # I

    .prologue
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 366
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(J[J)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "typeData"    # [J

    .prologue
    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 372
    iget-wide v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 370
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationElementData1D(JJIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native rsnAllocationGetByteBuffer(JJIII)Ljava/nio/ByteBuffer;
.end method

.method native rsnAllocationGetStride(JJ)J
.end method

.method native rsnAllocationGetType(JJ)J
.end method

.method native rsnAllocationIoReceive(JJ)V
.end method

.method native rsnAllocationIoSend(JJ)V
.end method

.method native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native rsnAllocationResize1D(JJI)V
.end method

.method native rsnAllocationResize2D(JJII)V
.end method

.method native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(JJI)V
.end method

.method native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native rsnClosureSetArg(JJIJI)V
.end method

.method native rsnClosureSetGlobal(JJJJI)V
.end method

.method native rsnContextCreate(JIIILjava/lang/String;)J
.end method

.method native rsnContextDestroy(J)V
.end method

.method native rsnContextDump(JI)V
.end method

.method native rsnContextFinish(J)V
.end method

.method native rsnContextSendMessage(JI[I)V
.end method

.method native rsnContextSetPriority(JI)V
.end method

.method native rsnElementCreate(JJIZI)J
.end method

.method native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native rsnElementGetNativeData(JJ[I)V
.end method

.method native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native rsnIncAllocationCreateTyped(JJJJI)J
.end method

.method native rsnIncContextCreate(JIII)J
.end method

.method native rsnIncContextDestroy(J)V
.end method

.method native rsnIncContextFinish(J)V
.end method

.method native rsnIncElementCreate(JJIZI)J
.end method

.method native rsnIncObjDestroy(JJ)V
.end method

.method native rsnIncTypeCreate(JJIIIZZI)J
.end method

.method native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native rsnObjDestroy(JJ)V
.end method

.method native rsnSamplerCreate(JIIIIIF)J
.end method

.method native rsnScriptBindAllocation(JJJIZ)V
.end method

.method native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native rsnScriptFieldIDCreate(JJIZ)J
.end method

.method native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native rsnScriptForEach(JJJIJJZ)V
.end method

.method native rsnScriptForEach(JJJIJJ[BZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJIIIIIIZ)V
.end method

.method native rsnScriptForEachClipped(JJJIJJ[BIIIIIIZ)V
.end method

.method native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native rsnScriptGroup2Execute(JJ)V
.end method

.method native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native rsnScriptGroupExecute(JJ)V
.end method

.method native rsnScriptGroupSetInput(JJJJ)V
.end method

.method native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native rsnScriptIntrinsicBLAS_BNNM(JJJIIIJIJIJIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Complex(JJJIIIIIIIIIFFJJFFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Double(JJJIIIIIIIIIDJJDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Single(JJJIIIIIIIIIFJJFJIIIIZ)V
.end method

.method native rsnScriptIntrinsicBLAS_Z(JJJIIIIIIIIIDDJJDDJIIIIZ)V
.end method

.method native rsnScriptIntrinsicCreate(JIJZ)J
.end method

.method native rsnScriptInvoke(JJIZ)V
.end method

.method native rsnScriptInvokeIDCreate(JJI)J
.end method

.method native rsnScriptInvokeV(JJI[BZ)V
.end method

.method native rsnScriptKernelIDCreate(JJIIZ)J
.end method

.method native rsnScriptReduce(JJI[JJ[I)V
.end method

.method native rsnScriptSetTimeZone(JJ[BZ)V
.end method

.method native rsnScriptSetVarD(JJIDZ)V
.end method

.method native rsnScriptSetVarF(JJIFZ)V
.end method

.method native rsnScriptSetVarI(JJIIZ)V
.end method

.method native rsnScriptSetVarJ(JJIJZ)V
.end method

.method native rsnScriptSetVarObj(JJIJZ)V
.end method

.method native rsnScriptSetVarV(JJI[BZ)V
.end method

.method native rsnScriptSetVarVE(JJI[BJ[IZ)V
.end method

.method native rsnTypeCreate(JJIIIZZI)J
.end method

.method native rsnTypeGetNativeData(JJ[J)V
.end method

.method safeID(Landroid/support/v8/renderscript/BaseObj;)J
    .locals 2
    .param p1, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 1716
    if-eqz p1, :cond_0

    .line 1717
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    .line 1719
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendMessage(I[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    .line 1168
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 1167
    return-void
.end method

.method public setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .prologue
    .line 1194
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 1193
    return-void
.end method

.method public setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .prologue
    .line 1154
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 1153
    return-void
.end method

.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
    .locals 1
    .param p1, "p"    # Landroid/support/v8/renderscript/RenderScript$Priority;

    .prologue
    .line 1241
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1242
    iget v0, p1, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 1240
    return-void
.end method

.method usingIO()Z
    .locals 1

    .prologue
    .line 1233
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->useIOlib:Z

    return v0
.end method

.method validate()V
    .locals 4

    .prologue
    .line 1224
    iget-wide v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_0
    return-void
.end method

.method validateObject(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 2
    .param p1, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    .line 1217
    iget-object v0, p1, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    if-eq v0, p0, :cond_0

    .line 1218
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Attempting to use an object across contexts."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_0
    return-void
.end method
