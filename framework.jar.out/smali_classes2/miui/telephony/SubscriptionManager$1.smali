.class Lmiui/telephony/SubscriptionManager$1;
.super Landroid/os/AsyncTask;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManager;->onSubscriptionInfoChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/SubscriptionManager;

    .prologue
    .line 223
    iput-object p1, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 226
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->-wrap0(Lmiui/telephony/SubscriptionManager;Z)V

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager$1;->this$0:Lmiui/telephony/SubscriptionManager;

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->-wrap1(Lmiui/telephony/SubscriptionManager;)V

    .line 231
    return-void
.end method
