.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 184
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]+"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v7, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 190
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 193
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 194
    .local v1, "i":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 195
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Broadcasting intent ACTION_SIM_STATE_CHANGED for mCardIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 196
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 195
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v7, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v7, v10}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "pair":Ljava/util/Map$Entry;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]-"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 201
    return-void

    .line 204
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 205
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 209
    :cond_2
    const-string/jumbo v7, "phone"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 211
    .local v6, "slotId":I
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "slotId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 212
    if-ne v6, v10, :cond_4

    .line 213
    return-void

    .line 206
    .end local v6    # "slotId":I
    :cond_3
    return-void

    .line 216
    .restart local v6    # "slotId":I
    :cond_4
    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "simStatus":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 220
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get3(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 222
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 243
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v8, "[Receiver]-"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 183
    return-void

    .line 223
    :cond_6
    const-string/jumbo v7, "UNKNOWN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 224
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x7

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 225
    :cond_7
    const-string/jumbo v7, "CARD_IO_ERROR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 226
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 227
    :cond_8
    const-string/jumbo v7, "CARD_RESTRICTED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 228
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v9, 0x8

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 230
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_a
    const-string/jumbo v7, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 233
    const-string/jumbo v7, "LOCKED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 235
    const-string/jumbo v7, "reason"

    .line 234
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "reason":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v6, v10, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 237
    .end local v4    # "reason":Ljava/lang/String;
    :cond_b
    const-string/jumbo v7, "LOADED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 238
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 240
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring simStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
