.class Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/DefaultSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/DefaultSimManager;


# direct methods
.method private constructor <init>(Lmiui/telephony/DefaultSimManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/DefaultSimManager;

    .prologue
    .line 281
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/DefaultSimManager;Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/DefaultSimManager;

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;-><init>(Lmiui/telephony/DefaultSimManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 292
    const-string/jumbo v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-virtual {v0}, Lmiui/telephony/DefaultSimManager;->onDefaultDataSubscriptionChanged()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string/jumbo v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lmiui/telephony/DefaultSimManager$TelephonyBroadcastReceiver;->this$0:Lmiui/telephony/DefaultSimManager;

    invoke-static {v0}, Lmiui/telephony/DefaultSimManager;->-wrap2(Lmiui/telephony/DefaultSimManager;)V

    goto :goto_0
.end method

.method register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    return-void
.end method
