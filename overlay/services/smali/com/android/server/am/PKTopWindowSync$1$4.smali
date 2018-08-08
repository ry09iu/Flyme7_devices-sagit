.class Lcom/android/server/am/PKTopWindowSync$1$4;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowSync$1;->onPostDataASync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindowSync$1;

.field final synthetic val$freq:Ljava/lang/String;

.field final synthetic val$localWhitePacksSwith:Ljava/lang/String;

.field final synthetic val$whitepacks:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindowSync$1;
    .param p2, "val$localWhitePacksSwith"    # Ljava/lang/String;
    .param p3, "val$freq"    # Ljava/lang/String;
    .param p4, "val$whitepacks"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->this$1:Lcom/android/server/am/PKTopWindowSync$1;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$localWhitePacksSwith:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$freq:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$whitepacks:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->this$1:Lcom/android/server/am/PKTopWindowSync$1;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "localWhitePacksSwith: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$localWhitePacksSwith:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", freq: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "3m20t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", whitepacks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$whitepacks:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync$1$4;->val$freq:Ljava/lang/String;

    goto :goto_0
.end method
