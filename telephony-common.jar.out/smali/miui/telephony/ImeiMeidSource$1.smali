.class Lmiui/telephony/ImeiMeidSource$1;
.super Landroid/os/Handler;
.source "ImeiMeidSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ImeiMeidSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/ImeiMeidSource;


# direct methods
.method constructor <init>(Lmiui/telephony/ImeiMeidSource;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xa

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 56
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 59
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit8 v7, v8, -0x64

    .line 60
    .local v7, "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aput-object v11, v8, v7

    .line 61
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aput-object v11, v8, v7

    .line 62
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_1

    .line 63
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    const-string/jumbo v10, "init"

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    .line 65
    :cond_1
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_2

    .line 66
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    const-string/jumbo v10, "init"

    invoke-direct {v9, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v7

    .line 68
    :cond_2
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .line 69
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    add-int/lit16 v8, v7, 0xc8

    invoke-virtual {p0, v8, v12, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 70
    .local v2, "imeiMsg":Landroid/os/Message;
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 71
    add-int/lit16 v8, v7, 0x12c

    invoke-virtual {p0, v8, v12, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 72
    .local v3, "meidMsg":Landroid/os/Message;
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 76
    .end local v1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v2    # "imeiMsg":Landroid/os/Message;
    .end local v3    # "meidMsg":Landroid/os/Message;
    .end local v7    # "slotId":I
    :sswitch_1
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0xc8

    .line 77
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v9, v8, v7

    .line 78
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 80
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aput-object v11, v8, v7

    .line 81
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 82
    .local v6, "retryTimes":I
    if-gt v6, v10, :cond_0

    .line 85
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get1(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    add-int/lit16 v9, v7, 0x190

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    add-int/lit16 v8, v7, 0x190

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v8, v6, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 87
    .local v5, "retryMsg":Landroid/os/Message;
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get1(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 90
    .end local v5    # "retryMsg":Landroid/os/Message;
    .end local v6    # "retryTimes":I
    :cond_3
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v7

    .line 91
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10, v13}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-wrap0(Lmiui/telephony/ImeiMeidSource;)V

    goto/16 :goto_0

    .line 96
    .end local v7    # "slotId":I
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x12c

    .line 97
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v9, v8, v7

    .line 98
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_4

    .line 100
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aput-object v11, v8, v7

    .line 101
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 102
    .restart local v6    # "retryTimes":I
    if-gt v6, v10, :cond_0

    .line 105
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get1(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    add-int/lit16 v9, v7, 0x1f4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    add-int/lit16 v8, v7, 0x1f4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v8, v6, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 107
    .restart local v5    # "retryMsg":Landroid/os/Message;
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get1(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 110
    .end local v5    # "retryMsg":Landroid/os/Message;
    .end local v6    # "retryTimes":I
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 111
    .local v4, "respId":[Ljava/lang/String;
    aget-object v8, v4, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 113
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v4, v12

    aput-object v9, v8, v7

    .line 115
    :cond_5
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v4, v13

    aput-object v9, v8, v7

    .line 117
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    const-string/jumbo v9, "^0*$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 118
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid meid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v8

    aput-object v11, v8, v7

    .line 121
    :cond_6
    invoke-static {}, Lmiui/telephony/ImeiMeidSource;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->-get2(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10, v13}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 122
    const-string/jumbo v10, " meid="

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 122
    iget-object v10, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v10}, Lmiui/telephony/ImeiMeidSource;->-get3(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-static {v10, v13}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-wrap0(Lmiui/telephony/ImeiMeidSource;)V

    goto/16 :goto_0

    .line 127
    .end local v4    # "respId":[Ljava/lang/String;
    .end local v7    # "slotId":I
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x190

    .line 128
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_7

    .line 129
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get4(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    aput-object v9, v8, v7

    .line 131
    :cond_7
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    .line 132
    add-int/lit16 v9, v7, 0xc8

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v9, v10, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 131
    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 136
    .end local v7    # "slotId":I
    :sswitch_4
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v7, v8, -0x1f4

    .line 137
    .restart local v7    # "slotId":I
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    aget-object v8, v8, v7

    if-nez v8, :cond_8

    .line 138
    iget-object v8, p0, Lmiui/telephony/ImeiMeidSource$1;->this$0:Lmiui/telephony/ImeiMeidSource;

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->-get5(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    aput-object v9, v8, v7

    .line 140
    :cond_8
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    .line 141
    add-int/lit16 v9, v7, 0x12c

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v9, v10, v12}, Lmiui/telephony/ImeiMeidSource$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 140
    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x190 -> :sswitch_3
        0x191 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_4
    .end sparse-switch
.end method
