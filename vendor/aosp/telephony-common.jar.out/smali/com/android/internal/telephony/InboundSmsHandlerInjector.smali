.class public Lcom/android/internal/telephony/InboundSmsHandlerInjector;
.super Ljava/lang/Object;
.source "InboundSmsHandlerInjector.java"


# static fields
.field private static final ENCODING_16BIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "InboundSmsHandler"

.field private static sIndiaSpPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "^[A-Za-z][A-Za-z][-]\\S{6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beforeDispatchIntent(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .param p0, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "deleteWhere"    # Ljava/lang/String;
    .param p5, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 320
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-direct {v5, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 327
    .local v5, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 329
    const/4 v6, 0x0

    .line 332
    .local v6, "result":Ljava/lang/Boolean;
    const-wide/16 v10, 0x5dc

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    .line 333
    .local v6, "result":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 339
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v9, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 340
    .local v7, "rows":I
    const-string/jumbo v9, "InboundSmsHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "delete blocked sms from raw table rows: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 343
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent result is true"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    const/4 v9, 0x1

    .line 359
    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 344
    :goto_0
    return v9

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "InboundSmsHandler"

    const-string/jumbo v11, "beforeDispatchIntent shutdown exp "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "rows":I
    :catch_1
    move-exception v2

    .line 346
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent exp is "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent result is false"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 364
    .end local v6    # "result":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent result is false"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->writeMessageToInbox(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 369
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "msg_uri"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 370
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 376
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v9, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 377
    .restart local v7    # "rows":I
    const-string/jumbo v9, "InboundSmsHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "delete blocked sms from raw table rows: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 380
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "writeMessageToInbox result is true"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 381
    const/4 v9, 0x1

    return v9

    .line 360
    .end local v7    # "rows":I
    .end local v8    # "uriStr":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/Boolean;
    :catch_2
    move-exception v2

    .line 361
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "result":Ljava/lang/Boolean;
    :catch_3
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent exp is "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 353
    const/4 v9, 0x1

    :try_start_7
    invoke-virtual {v5, v9}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 359
    :goto_2
    :try_start_8
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 360
    :catch_4
    move-exception v2

    .line 361
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent shutdown exp "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 354
    :catch_5
    move-exception v3

    .line 355
    .local v3, "e1":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "beforeDispatchIntent futureTask.cancel exp "

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 359
    :try_start_a
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 357
    :goto_3
    throw v9

    .line 360
    :catch_6
    move-exception v2

    .line 361
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "InboundSmsHandler"

    const-string/jumbo v11, "beforeDispatchIntent shutdown exp "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "uriStr":Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 383
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "writeMessageToInbox exp is "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "uriStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "InboundSmsHandler"

    const-string/jumbo v10, "writeMessageToInbox result is false"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v9, 0x0

    return v9
.end method

.method static beforeDispatchIntentInt(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 18
    .param p0, "inboundSmsHandler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 396
    .local v13, "smsBlocked":Z
    const-string/jumbo v15, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 401
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "pdus"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 402
    .local v10, "pdusArray":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "format"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 404
    .local v4, "format":Ljava/lang/String;
    array-length v15, v10

    new-array v9, v15, [[B

    .line 405
    .local v9, "pdus":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v15, v10

    if-ge v5, v15, :cond_0

    .line 406
    aget-object v8, v10, v5

    check-cast v8, [B

    .line 407
    .local v8, "part":[B
    aput-object v8, v9, v5

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 409
    .end local v8    # "part":[B
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "phone"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 410
    .local v12, "slotId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "subscription"

    const/16 v17, -0x1

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 411
    .local v14, "subId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v15, v12, v14}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 412
    const-string/jumbo v15, "InboundSmsHandler"

    const-string/jumbo v16, "checkSmsCmd is true, intercept this sms."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    const/4 v13, 0x1

    .line 421
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "pdus":[[B
    .end local v10    # "pdusArray":[Ljava/lang/Object;
    .end local v12    # "slotId":I
    .end local v14    # "subId":I
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 423
    .local v6, "isServiceNumber":Z
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 424
    .local v7, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_2

    array-length v15, v7

    if-lez v15, :cond_2

    .line 425
    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_2

    .line 427
    const/4 v6, 0x1

    .line 433
    .end local v2    # "address":Ljava/lang/String;
    .end local v7    # "messages":[Landroid/telephony/SmsMessage;
    :cond_2
    :goto_2
    const-string/jumbo v15, "miui.intent.SERVICE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string/jumbo v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "beforeDispatchIntentInt isServiceNumber is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-nez v13, :cond_3

    .line 440
    :try_start_2
    const-string/jumbo v15, "security"

    .line 439
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v11

    .line 441
    .local v11, "securityManager":Lmiui/security/ISecurityManager;
    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    if-eqz v15, :cond_3

    .line 442
    const/4 v13, 0x1

    .line 448
    .end local v11    # "securityManager":Lmiui/security/ISecurityManager;
    :cond_3
    :goto_3
    const-string/jumbo v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "beforeDispatchIntentInt smsBlocked is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v13

    .line 415
    .end local v6    # "isServiceNumber":Z
    :catch_0
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "InboundSmsHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Exception before InboundSmsDispatcher: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 430
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "isServiceNumber":Z
    :catch_1
    move-exception v3

    .line 431
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "InboundSmsHandler"

    const-string/jumbo v16, " ServiceNumber parse error "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 444
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 445
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "InboundSmsHandler"

    const-string/jumbo v16, "beforeDispatchIntentInt exp is "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static buildMessageString([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 15
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v11, 0x0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 197
    .local v3, "length":I
    const/4 v5, 0x1

    .line 199
    .local v5, "needCombinByByte":Z
    array-length v12, p0

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, p0, v10

    .line 200
    .local v4, "m":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    iget-object v13, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v13, :cond_2

    .line 201
    :cond_0
    const-string/jumbo v13, "InboundSmsHandler"

    const-string/jumbo v14, "buildMessageString m or mWrappedSmsMessage is null"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 204
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getEncodingType()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    .line 205
    const/4 v5, 0x0

    .line 207
    :cond_3
    if-eqz v5, :cond_4

    .line 208
    iget-object v13, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_4

    .line 209
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v9

    .line 210
    .local v9, "userData":[B
    if-eqz v9, :cond_4

    .line 211
    array-length v13, v9

    add-int/2addr v3, v13

    .line 215
    .end local v9    # "userData":[B
    :cond_4
    if-nez v5, :cond_1

    iget-object v13, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_1

    .line 216
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    .end local v4    # "m":Landroid/telephony/SmsMessage;
    :cond_5
    const-string/jumbo v10, "InboundSmsHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "buildMessageString needCombinByByte is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v5, :cond_9

    .line 221
    new-array v6, v3, [B

    .line 222
    .local v6, "newbuf":[B
    const/4 v7, 0x0

    .line 223
    .local v7, "pos":I
    array-length v12, p0

    move v10, v11

    :goto_2
    if-ge v10, v12, :cond_8

    aget-object v4, p0, v10

    .line 224
    .restart local v4    # "m":Landroid/telephony/SmsMessage;
    if-nez v4, :cond_7

    .line 223
    :cond_6
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 227
    :cond_7
    iget-object v13, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v13, :cond_6

    .line 228
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v9

    .line 229
    .restart local v9    # "userData":[B
    array-length v2, v9

    .line 230
    .local v2, "l":I
    invoke-static {v9, v11, v6, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 231
    add-int/2addr v7, v2

    goto :goto_3

    .line 237
    .end local v2    # "l":I
    .end local v4    # "m":Landroid/telephony/SmsMessage;
    .end local v9    # "userData":[B
    :cond_8
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v10, "utf-16"

    invoke-direct {v8, v6, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_4
    return-object v8

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "InboundSmsHandler"

    const-string/jumbo v11, "buildMessageString: new string utf-16 error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v8, 0x0

    .local v8, "result":Ljava/lang/String;
    goto :goto_4

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "newbuf":[B
    .end local v7    # "pos":I
    .end local v8    # "result":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method static checkSmsCmd([[BLjava/lang/String;Landroid/content/Context;II)Z
    .locals 7
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 459
    if-eqz p0, :cond_0

    aget-object v4, p0, v5

    if-nez v4, :cond_1

    .line 460
    :cond_0
    return v5

    .line 462
    :cond_1
    aget-object v4, p0, v5

    invoke-static {v4, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 463
    .local v3, "msg":Landroid/telephony/SmsMessage;
    if-nez v3, :cond_2

    .line 464
    return v5

    .line 466
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "address":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 469
    aget-object v4, p0, v2

    invoke-static {v4, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_3

    .line 471
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v0, v4, p3, p4}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 475
    return v6

    .line 477
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v0, v4}, Lmiui/provider/MiCloudSmsCmd;->checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 478
    return v6

    .line 480
    :cond_6
    return v5
.end method

.method private static isDuplicate(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 269
    const/4 v0, 0x0

    aget-object v12, p1, v0

    .line 270
    .local v12, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v0, v1, :cond_0

    .line 271
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 274
    :cond_1
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "originatingAddress":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_2
    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v14

    .line 279
    .local v14, "timestamp":J
    const-wide/16 v0, 0x0

    cmp-long v0, v14, v0

    if-gtz v0, :cond_3

    .line 280
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->buildMessageString([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "body":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_4
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "address"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 287
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "address=? AND date_sent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v4, " AND "

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v4, "body"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v4, "=?"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const-string/jumbo v4, " AND "

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const-string/jumbo v4, "mx_status"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const-string/jumbo v4, "="

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const/4 v4, 0x0

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 296
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 298
    .local v10, "id":J
    const-string/jumbo v0, "InboundSmsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive duplicated message from msg id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v0, 0x1

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 299
    return v0

    .line 304
    .end local v10    # "id":J
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_6
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 301
    :catch_0
    move-exception v8

    .line 302
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "InboundSmsHandler"

    const-string/jumbo v1, "isDuplicate query is "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    throw v0
.end method

.method private static isIndiaServiceNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "isIndiaSP":Z
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IN"

    invoke-static {v1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->matchIndiaSpPattern(Ljava/lang/String;)Z

    move-result v0

    .line 261
    .local v0, "isIndiaSP":Z
    if-nez v0, :cond_0

    .line 262
    const-string/jumbo v1, "+91"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 265
    .end local v0    # "isIndiaSP":Z
    :cond_0
    :goto_0
    return v0

    .line 262
    .restart local v0    # "isIndiaSP":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "isIndiaSP":Z
    goto :goto_0
.end method

.method private static matchIndiaSpPattern(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "result":Z
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->sIndiaSpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 252
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 254
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "result":Z
    :cond_0
    return v1
.end method

.method private static parseSmsMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 147
    const/4 v10, 0x0

    aget-object v6, p1, v10

    .line 148
    .local v6, "sms":Landroid/telephony/SmsMessage;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v10, "error_code"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v10, "address"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v10, "date_sent"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v10, 0x7db

    const/16 v11, 0x8

    const/16 v12, 0x12

    invoke-direct {v2, v10, v11, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v2, "buildDate":Ljava/util/Calendar;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 155
    .local v3, "nowDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 156
    .local v4, "now":J
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 158
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    .line 160
    :cond_0
    const-string/jumbo v10, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string/jumbo v10, "protocol"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v10, "seen"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v10, "read"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "subject":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 166
    const-string/jumbo v10, "subject"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    const-string/jumbo v11, "reply_path_present"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string/jumbo v10, "service_center"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 172
    .local v8, "threadId":Ljava/lang/Long;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 173
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 174
    const-string/jumbo v10, "thread_id"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    :goto_1
    const/4 v1, 0x0

    .line 179
    .local v1, "body":Ljava/lang/String;
    array-length v10, p1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 181
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "body":Ljava/lang/String;
    :goto_2
    const-string/jumbo v10, "body"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-object v9

    .line 168
    .end local v1    # "body":Ljava/lang/String;
    .end local v8    # "threadId":Ljava/lang/Long;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 176
    .restart local v8    # "threadId":Ljava/lang/Long;
    :cond_3
    const-string/jumbo v10, "InboundSmsHandler"

    const-string/jumbo v11, "address is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .local v1, "body":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->buildMessageString([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "body":Ljava/lang/String;
    goto :goto_2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static writeMessageToInbox(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox args is wrong"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/16 v18, 0x0

    return v18

    .line 47
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 48
    const-string/jumbo v18, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 53
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 54
    .local v7, "cn":Landroid/content/ComponentName;
    if-eqz v7, :cond_2

    const-string/jumbo v18, "com.android.mms"

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 58
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 59
    .local v10, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v10, :cond_3

    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 60
    :cond_3
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "Failed to parse SMS pdu"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v18

    .line 55
    .end local v10    # "msgs":[Landroid/telephony/SmsMessage;
    :cond_4
    :try_start_1
    const-string/jumbo v18, "InboundSmsHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "default sms application is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v18

    .line 64
    .restart local v10    # "msgs":[Landroid/telephony/SmsMessage;
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "subscription"

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 65
    .local v12, "subId":I
    if-gez v12, :cond_6

    .line 66
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox subId < 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v18

    .line 70
    :cond_6
    const/16 v18, 0x0

    :try_start_3
    aget-object v11, v10, v18

    .line 71
    .local v11, "sms":Landroid/telephony/SmsMessage;
    if-eqz v11, :cond_7

    iget-object v0, v11, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 72
    :cond_7
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox: sms == null or sms.mWrappedSmsMessage == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v18

    .line 74
    :cond_8
    :try_start_4
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 75
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox address is empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v18

    .line 77
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->isDuplicate(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 78
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "duplicate sms"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    const/16 v18, 0x1

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v18

    .line 80
    :cond_a
    :try_start_6
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 81
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "display message body is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v18

    .line 83
    :cond_b
    :try_start_7
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v18

    sget-object v19, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 84
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "message class is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 85
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v18

    .line 86
    :cond_c
    :try_start_8
    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 87
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "sms is replace"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 88
    const/16 v18, 0x0

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v18

    .line 91
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->parseSmsMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v17

    .line 93
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v18, "sim_id"

    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string/jumbo v18, "address"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "address":Ljava/lang/String;
    const/4 v9, 0x0

    .line 97
    .local v9, "isServiceNumber":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 98
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->isIndiaServiceNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 99
    const/4 v9, 0x1

    .line 107
    .end local v9    # "isServiceNumber":Z
    :cond_e
    :goto_0
    if-eqz v9, :cond_12

    .line 108
    const-string/jumbo v18, "advanced_seen"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :goto_1
    const-string/jumbo v18, "blockType"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 114
    .local v5, "blockType":I
    move v6, v5

    .line 115
    .local v6, "blockTypeOld":I
    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v5

    .line 116
    invoke-static {v6}, Lmiui/provider/ExtraTelephony;->isURLFlagRisky(I)Z

    move-result v16

    .line 117
    .local v16, "urlSuspicious":Z
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_13

    .line 118
    const-string/jumbo v18, "url_risky_type"

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    :cond_f
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v14

    .line 125
    .local v14, "token":J
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 126
    const-string/jumbo v20, "no_notify"

    const-string/jumbo v21, "1"

    .line 125
    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 127
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_10

    .line 128
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox uri is not null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_10
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox insert uri is successfully"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v18, "msg_uri"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 136
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 132
    const/16 v18, 0x1

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v18

    .line 101
    .end local v5    # "blockType":I
    .end local v6    # "blockTypeOld":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "token":J
    .end local v16    # "urlSuspicious":Z
    .restart local v9    # "isServiceNumber":Z
    :cond_11
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string/jumbo v19, "miui.intent.SERVICE_NUMBER"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 102
    .local v9, "isServiceNumber":Z
    if-nez v9, :cond_e

    .line 103
    invoke-static {v4}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_0

    .line 110
    .end local v9    # "isServiceNumber":Z
    :cond_12
    const-string/jumbo v18, "advanced_seen"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 138
    .end local v4    # "address":Ljava/lang/String;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v11    # "sms":Landroid/telephony/SmsMessage;
    .end local v12    # "subId":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 139
    .local v8, "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox injector is "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 141
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox finally"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_3
    const/16 v18, 0x0

    return v18

    .line 119
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "blockType":I
    .restart local v6    # "blockTypeOld":I
    .restart local v7    # "cn":Landroid/content/ComponentName;
    .restart local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v11    # "sms":Landroid/telephony/SmsMessage;
    .restart local v12    # "subId":I
    .restart local v16    # "urlSuspicious":Z
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_13
    if-eqz v16, :cond_f

    .line 120
    :try_start_e
    const-string/jumbo v18, "url_risky_type"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 140
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "blockType":I
    .end local v6    # "blockTypeOld":I
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v11    # "sms":Landroid/telephony/SmsMessage;
    .end local v12    # "subId":I
    .end local v16    # "urlSuspicious":Z
    .end local v17    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v18

    .line 141
    const-string/jumbo v19, "InboundSmsHandler"

    const-string/jumbo v20, "writeMessageToInbox finally"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    throw v18

    .line 133
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "blockType":I
    .restart local v6    # "blockTypeOld":I
    .restart local v7    # "cn":Landroid/content/ComponentName;
    .restart local v10    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v11    # "sms":Landroid/telephony/SmsMessage;
    .restart local v12    # "subId":I
    .restart local v14    # "token":J
    .restart local v16    # "urlSuspicious":Z
    .restart local v17    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    .line 134
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "Failed to persist inbox msgs"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 136
    :try_start_10
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 141
    const-string/jumbo v18, "InboundSmsHandler"

    const-string/jumbo v19, "writeMessageToInbox finally"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 135
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    .line 136
    :try_start_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v18
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method
