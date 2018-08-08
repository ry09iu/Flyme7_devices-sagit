.class Landroid/support/v8/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 1259
    const-string/jumbo v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1248
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 1260
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 1258
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 1267
    const/16 v6, 0x10

    new-array v3, v6, [I

    .line 1268
    .local v3, "rbuf":[I
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v7, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v8, v7, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {v6, v8, v9}, Landroid/support/v8/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 1269
    :goto_0
    iget-boolean v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v6, :cond_7

    .line 1270
    aput v10, v3, v10

    .line 1271
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v7, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v8, v7, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    iget-object v7, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v6, v8, v9, v7}, Landroid/support/v8/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v2

    .line 1272
    .local v2, "msg":I
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 1273
    .local v4, "size":I
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mAuxData:[I

    aget v5, v6, v10

    .line 1275
    .local v5, "subID":I
    if-ne v2, v11, :cond_3

    .line 1276
    shr-int/lit8 v6, v4, 0x2

    array-length v7, v3

    if-lt v6, v7, :cond_0

    .line 1277
    add-int/lit8 v6, v4, 0x3

    shr-int/lit8 v6, v6, 0x2

    new-array v3, v6, [I

    .line 1279
    :cond_0
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v7, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v8, v7, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {v6, v8, v9, v3}, Landroid/support/v8/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 1281
    new-instance v6, Landroid/support/v8/renderscript/RSDriverException;

    const-string/jumbo v7, "Error processing message from RenderScript."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1284
    :cond_1
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    if-eqz v6, :cond_2

    .line 1285
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iput-object v3, v6, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 1286
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iput v5, v6, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 1287
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iput v4, v6, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 1288
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_0

    .line 1290
    :cond_2
    new-instance v6, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v7, "Received a message from the script with no message handler installed."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1295
    :cond_3
    const/4 v6, 0x3

    if-ne v2, v6, :cond_6

    .line 1296
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v7, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v8, v7, Landroid/support/v8/renderscript/RenderScript;->mContext:J

    invoke-virtual {v6, v8, v9}, Landroid/support/v8/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "e":Ljava/lang/String;
    const/16 v6, 0x1000

    if-lt v5, v6, :cond_4

    .line 1299
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fatal error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", details: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1302
    :cond_4
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    if-eqz v6, :cond_5

    .line 1303
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    iput-object v1, v6, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 1304
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    iput v5, v6, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 1305
    iget-object v6, p0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, v6, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/16 :goto_0

    .line 1307
    :cond_5
    const-string/jumbo v6, "RenderScript_jni"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "non fatal RS error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1319
    .end local v1    # "e":Ljava/lang/String;
    :cond_6
    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v7, v8}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1320
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 1264
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "msg":I
    .end local v4    # "size":I
    .end local v5    # "subID":I
    :cond_7
    return-void
.end method
