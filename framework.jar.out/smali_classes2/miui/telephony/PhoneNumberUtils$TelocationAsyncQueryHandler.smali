.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelocationAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;,
        Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_OPERATOR:I = 0x14

.field private static final EVENT_QUERY_TELOCATION:I = 0xa

.field private static final EVENT_QUERY_TELOCATION_AND_OPERATOR:I = 0x1e


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1010
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->-get0()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    move-result-object v0

    return-object v0
.end method

.method public static queryOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 962
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 958
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "args"    # Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    .param p2, "arg1"    # I
    .param p3, "token"    # I
    .param p4, "cookie1"    # Ljava/lang/Object;
    .param p5, "cookie2"    # Ljava/lang/Object;
    .param p6, "cookie3"    # Ljava/lang/Object;
    .param p7, "cookie4"    # Ljava/lang/Object;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1084
    iput-object p0, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    .line 1085
    iput-object p8, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    .line 1086
    iput-object p9, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    .line 1087
    iput-object p4, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    .line 1088
    iput-object p5, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    .line 1089
    iput-object p6, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1090
    iput-object p7, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    .line 1091
    const/4 v1, 0x0

    iput-object v1, p1, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 1093
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1094
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1095
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1096
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1083
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1016
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    .line 1019
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1101
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 1102
    .local v7, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    iget-object v1, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v2, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v3, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1104
    iget-object v4, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v5, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 1103
    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    iget-object v1, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v2, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v3, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1107
    iget-object v4, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v5, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    .line 1106
    invoke-interface/range {v0 .. v5}, Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    iget-object v1, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie1:Ljava/lang/Object;

    iget-object v2, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie2:Ljava/lang/Object;

    iget-object v3, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie3:Ljava/lang/Object;

    .line 1110
    iget-object v4, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->cookie4:Ljava/lang/Object;

    iget-object v5, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    iget-object v6, v7, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    .line 1109
    invoke-interface/range {v0 .. v6}, Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;->onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startQueryOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1057
    new-instance v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v2}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1058
    .local v2, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v0, p6

    iput-object v0, v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operatorQueryListener:Lmiui/telephony/PhoneNumberUtils$OperatorQueryListener;

    .line 1059
    const/16 v3, 0x14

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public startQueryTelocationAndOperatorString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1077
    new-instance v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v2}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1078
    .local v2, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v0, p6

    iput-object v0, v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationAndOperatorQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationAndOperatorQueryListener;

    .line 1079
    const/16 v3, 0x1e

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public startQueryTelocationString(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie1"    # Ljava/lang/Object;
    .param p3, "cookie2"    # Ljava/lang/Object;
    .param p4, "cookie3"    # Ljava/lang/Object;
    .param p5, "cookie4"    # Ljava/lang/Object;
    .param p6, "listener"    # Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1037
    new-instance v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    invoke-direct {v2}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;-><init>()V

    .line 1038
    .local v2, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    move-object/from16 v0, p6

    iput-object v0, v2, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->telocationQueryListener:Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;

    .line 1039
    const/16 v3, 0xa

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->sendMsg(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1036
    return-void
.end method
