.class public Lcom/android/stk/StkCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkCmdReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleAction(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "op"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "SLOT_ID"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "slot_id":I
    const-string/jumbo v4, "op"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v4, "SLOT_ID"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    if-ne v7, p3, :cond_1

    .line 64
    const-string/jumbo v4, "cmd message"

    .line 65
    const-string/jumbo v5, "STK CMD"

    .line 64
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    :cond_0
    :goto_0
    const-string/jumbo v4, "StkCmdReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleAction, op: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "args: "

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, ", slot id: "

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v3, "toService":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void

    .line 66
    .end local v3    # "toService":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x7

    if-ne v4, p3, :cond_3

    .line 69
    const-string/jumbo v4, "card_status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v4

    if-nez v4, :cond_2

    .line 71
    return-void

    .line 74
    :cond_2
    const-string/jumbo v4, "card_status"

    .line 75
    const-string/jumbo v5, "card_status"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 74
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string/jumbo v4, "refresh_result"

    .line 77
    const-string/jumbo v5, "refresh_result"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 76
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 79
    :cond_3
    const/16 v4, 0xc

    if-ne v4, p3, :cond_0

    .line 80
    const-string/jumbo v4, "alpha_string"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "alphaString":Ljava/lang/String;
    const-string/jumbo v4, "alpha_string"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleHciConnectivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "SLOT_ID"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, "slotId":I
    const-string/jumbo v2, "SLOT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v2, "op"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/stk/StkAppService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    return-void
.end method

.method private handleIdleScreen(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    return-void
.end method

.method private handleLocaleChange(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.stk.command"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/stk/StkCmdReceiver;->handleAction(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v1, "android.intent.action.stk.session_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1}, Lcom/android/stk/StkCmdReceiver;->handleAction(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v1, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v1}, Lcom/android/stk/StkCmdReceiver;->handleAction(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 46
    invoke-direct {p0, p1}, Lcom/android/stk/StkCmdReceiver;->handleLocaleChange(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_4
    const-string/jumbo v1, "android.intent.action.stk.alpha_notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v1}, Lcom/android/stk/StkCmdReceiver;->handleAction(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 49
    :cond_5
    const-string/jumbo v1, "org.codeaurora.action.stk.idle_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    invoke-direct {p0, p1}, Lcom/android/stk/StkCmdReceiver;->handleIdleScreen(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_6
    const-string/jumbo v1, "org.codeaurora.intent.action.stk.hci_connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkCmdReceiver;->handleHciConnectivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
