.class Lcom/miui/server/SecuritySmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecuritySmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method constructor <init>(Lcom/miui/server/SecuritySmsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/SecuritySmsHandler;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v8

    .line 297
    .local v8, "slotId":I
    const-string/jumbo v9, "SecurityManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mInterceptedSmsResultReceiver sms dispatched, action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string/jumbo v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/miui/server/SecuritySmsHandler$2;->getResultCode()I

    move-result v6

    .line 302
    .local v6, "resultCode":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 303
    const-string/jumbo v9, "SecurityManagerService"

    const-string/jumbo v10, "mInterceptedSmsResultReceiver SMS_RECEIVED_ACTION not aborted"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 305
    .local v5, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_0

    .line 307
    aget-object v9, v5, v4

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_0
    aget-object v9, v5, v12

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "body":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, v1, v3, v8}, Lcom/miui/server/SecuritySmsHandler;->-wrap0(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 314
    .local v2, "blockType":I
    if-eqz v2, :cond_1

    .line 315
    const-string/jumbo v9, "blockType"

    invoke-virtual {p2, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    .line 317
    const-string/jumbo v9, "SecurityManagerService"

    const-string/jumbo v10, "mInterceptedSmsResultReceiver: This sms is intercepted by AntiSpam"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, p2}, Lcom/miui/server/SecuritySmsHandler;->-wrap3(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 294
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "blockType":I
    .end local v3    # "body":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v6    # "resultCode":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 320
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "blockType":I
    .restart local v3    # "body":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v6    # "resultCode":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, p2}, Lcom/miui/server/SecuritySmsHandler;->-wrap2(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    goto :goto_1
.end method
