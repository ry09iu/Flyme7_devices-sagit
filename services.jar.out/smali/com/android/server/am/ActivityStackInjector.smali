.class Lcom/android/server/am/ActivityStackInjector;
.super Ljava/lang/Object;
.source "ActivityStackInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStackInjector"

.field static final sNoRelaMultiWinChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackInjector;->sNoRelaMultiWinChangeList:Ljava/util/ArrayList;

    .line 36
    sget-object v0, Lcom/android/server/am/ActivityStackInjector;->sNoRelaMultiWinChangeList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static captureActivityScreenshot(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowType()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 44
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 49
    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    invoke-static {p0, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    .line 54
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 52
    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v3, 0x0

    .line 243
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 245
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {p0, v2}, Lcom/android/server/am/MiuiMultiTaskManager;->checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    return v3

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 248
    .local v1, "needCheck":Z
    if-eqz v2, :cond_2

    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v5, "miui_launch_app_in_one_task_group"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    .end local v1    # "needCheck":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return v3

    .restart local v1    # "needCheck":Z
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move v1, v3

    .line 248
    goto :goto_0

    .line 255
    .end local v1    # "needCheck":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 253
    if-eqz v4, :cond_1

    .line 256
    const/4 v3, 0x1

    return v3

    .line 250
    .restart local v1    # "needCheck":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x40

    .line 104
    const-string/jumbo v4, "getStartingWindowLabel"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 111
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, ":android:show_fragment_args"

    .line 110
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v4, ":miui:starting_window_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 114
    .end local v3    # "label":Ljava/lang/CharSequence;
    :cond_0
    if-nez v3, :cond_1

    .line 116
    const-string/jumbo v4, ":miui:starting_window_label"

    .line 115
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    return-object v3

    .line 117
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    .local v3, "label":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method static getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I
    .locals 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x40

    .line 87
    const-string/jumbo v3, "getStartingWindowLabelRes"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "res":I
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, ":android:show_fragment_title"

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 100
    return v2

    .line 95
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static isAllowCross(II)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "targetUserId"    # I

    .prologue
    const/16 v2, 0x3e7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    if-nez p0, :cond_1

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    if-nez p1, :cond_2

    if-eq p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static isAllowDontWaitForPause(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 5
    .param p0, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 265
    const-string/jumbo v3, "com.miui.home"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 264
    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 266
    invoke-virtual {p2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 268
    .local v0, "appProcess":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 270
    .end local v0    # "appProcess":Lcom/android/server/am/ProcessRecord;
    :cond_2
    return v2
.end method

.method static isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z
    .locals 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v5, 0x0

    .line 64
    const-string/jumbo v2, "isStartingWindowSupported"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 69
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 72
    invoke-static {p1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 80
    sget v2, Lmiui/R$attr;->windowDisablePreview:I

    .line 79
    invoke-static {p1, v2, v5}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 82
    :cond_1
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 83
    return v1

    .line 79
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isTaskAlive(Lcom/android/server/am/TaskRecord;)Z
    .locals 4
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const/4 v3, 0x1

    return v3

    .line 204
    :cond_0
    const/4 v2, 0x0

    .line 205
    .local v2, "isAlive":Z
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activity$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 206
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    .line 207
    const/4 v2, 0x1

    .line 211
    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v2
.end method

.method static killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z
    .locals 13
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "needRelSize"    # J

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_0

    .line 150
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "killProcessesForRelMemory() only available to system"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    :cond_0
    const/4 v2, 0x0

    .line 154
    .local v2, "killed":Z
    const-wide/16 v6, 0x0

    .line 155
    .local v6, "relSize":J
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 156
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 157
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 158
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 159
    .local v3, "pid":I
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 160
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_2

    .line 157
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 163
    .local v0, "adj":I
    const/16 v8, 0x320

    if-le v0, v8, :cond_3

    iget-boolean v8, v4, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v8, :cond_4

    .line 171
    :cond_3
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v8, :cond_1

    .line 172
    const-string/jumbo v8, "ActivityStackInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "killProcessesForRelMemory release memory : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 155
    .end local v0    # "adj":I
    .end local v1    # "i":I
    .end local v3    # "pid":I
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "size":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 163
    .restart local v0    # "adj":I
    .restart local v1    # "i":I
    .restart local v3    # "pid":I
    .restart local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "size":I
    :cond_4
    :try_start_1
    const-string/jumbo v8, "com.android.camera"

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 164
    const-string/jumbo v8, "Release memory"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 165
    const/4 v2, 0x1

    .line 166
    iget-wide v10, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v6, v10

    .line 167
    cmp-long v8, v6, p1

    if-lez v8, :cond_3

    .end local v0    # "adj":I
    .end local v3    # "pid":I
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    monitor-exit v9

    .line 176
    return v2
.end method

.method static moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 10
    .param p0, "topTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 216
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager;->isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_0

    return v8

    .line 217
    :cond_0
    const/4 v2, 0x0

    .line 219
    .local v2, "returnTo":Ljava/lang/Object;
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_1

    .line 220
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 221
    const-string/jumbo v7, "miui_task_return_to_target"

    .line 220
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 226
    .end local v2    # "returnTo":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 227
    .local v4, "topIndex":I
    if-eqz v2, :cond_3

    if-lez v4, :cond_3

    .line 228
    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 230
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 232
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    invoke-virtual {p0, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 235
    return v9

    .end local v3    # "taskNdx":I
    .end local v4    # "topIndex":I
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "returnTo":Ljava/lang/Object;
    :cond_1
    move-object v2, v6

    .line 221
    goto :goto_0

    .line 228
    .end local v2    # "returnTo":Ljava/lang/Object;
    .restart local v3    # "taskNdx":I
    .restart local v4    # "topIndex":I
    .restart local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 239
    .end local v3    # "taskNdx":I
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    return v8

    .line 222
    .end local v4    # "topIndex":I
    .restart local v2    # "returnTo":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static needRelaunch(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "stackId"    # I
    .param p2, "configChange"    # I

    .prologue
    .line 279
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStackInjector;->sNoRelaMultiWinChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/16 v0, 0x100

    if-ne p2, v0, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static releaseMemoryIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    const-string/jumbo v7, "com.android.camera"

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 137
    .local v2, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 138
    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v10, 0x400

    div-long v0, v8, v10

    .line 139
    .local v0, "currentMem":J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00f3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 140
    .local v6, "warningValue":I
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 141
    .local v3, "releaseMemoryLimit":I
    int-to-long v8, v6

    cmp-long v7, v0, v8

    if-gtz v7, :cond_0

    .line 142
    int-to-long v8, v6

    sub-long/2addr v8, v0

    int-to-long v10, v3

    add-long v4, v8, v10

    .line 143
    .local v4, "needRelSize":J
    invoke-static {p0, v4, v5}, Lcom/android/server/am/ActivityStackInjector;->killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z

    .line 134
    .end local v0    # "currentMem":J
    .end local v2    # "info":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "releaseMemoryLimit":I
    .end local v4    # "needRelSize":J
    .end local v6    # "warningValue":I
    :cond_0
    return-void
.end method

.method static startProcBackgroud(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "start":Z
    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    return v0
.end method

.method private static taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 2
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "trIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 194
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 196
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x1

    .line 180
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 184
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 185
    .local v0, "trAbove":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isTaskAlive(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 179
    .end local v0    # "trAbove":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void
.end method

.method public static transferOnTopOfHomeForMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V

    .line 59
    return-void
.end method
