.class public Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TelocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 987
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerHandler;->this$1:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    .line 988
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 987
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x1e

    .line 993
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;

    .line 994
    .local v0, "args":Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_1

    .line 995
    :cond_0
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryTelocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->location:Ljava/lang/String;

    .line 997
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_3

    .line 998
    :cond_2
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->context:Landroid/content/Context;

    iget-object v3, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;->queryOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->operator:Ljava/lang/String;

    .line 1000
    :cond_3
    iget-object v2, v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$TelocationWorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1001
    .local v1, "reply":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1002
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 992
    return-void
.end method
