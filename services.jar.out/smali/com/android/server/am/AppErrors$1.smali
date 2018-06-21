.class Lcom/android/server/am/AppErrors$1;
.super Landroid/os/AnrMonitor$TimerThread;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;

.field final synthetic val$dumpApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrors;
    .param p2, "$anonymous0"    # J
    .param p4, "val$dumpApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "val$stringBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    iput-object p4, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iput-object p5, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Landroid/os/AnrMonitor$TimerThread;-><init>(J)V

    .line 880
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 885
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->dumpMessage()Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "msgs":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 887
    iget-object v2, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    invoke-virtual {p0}, Lcom/android/server/am/AppErrors$1;->finishRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v1    # "msgs":Ljava/lang/String;
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/AppErrors;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error happened during dump message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
