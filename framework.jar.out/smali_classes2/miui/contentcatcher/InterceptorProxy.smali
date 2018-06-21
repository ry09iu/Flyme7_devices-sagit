.class public Lmiui/contentcatcher/InterceptorProxy;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Lcom/miui/internal/contentcatcher/IInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/InterceptorProxy$H;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final INTERCEPTOR_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "InterceptorProxy"

.field private static final sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpecialContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUiHandler:Landroid/os/Handler;

.field private static volatile sWorkHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorProxy.class"
    .end annotation
.end field

.field private static volatile sWorkerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "InterceptorProxy.class"
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;


# direct methods
.method static synthetic -get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .locals 1

    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/contentcatcher/InterceptorProxy;Lcom/miui/internal/contentcatcher/IInterceptor;)Lcom/miui/internal/contentcatcher/IInterceptor;
    .locals 0

    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "interceptor.debug.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    .line 32
    const-string/jumbo v0, "interceptor.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings.FallbackHome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings.CryptKeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    .line 49
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.tbs.common.resources.PluginContextWrapper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "InterceptorProxy create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    new-instance v0, Lmiui/contentcatcher/InterceptorProxy$H;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lmiui/contentcatcher/InterceptorProxy$H;-><init>(Lmiui/contentcatcher/InterceptorProxy;Landroid/os/Looper;Landroid/app/Activity;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method public static checkAndInitWebView(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->isWebView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$1;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy$1;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v1, 0x1

    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ContentCatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndInitWebView-Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static create(Landroid/app/Activity;)Lmiui/contentcatcher/InterceptorProxy;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 53
    sget-boolean v1, Lmiui/contentcatcher/InterceptorProxy;->INTERCEPTOR_ENABLED:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    return-object v3

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 57
    .local v0, "workThread":Ljava/lang/Thread;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v1, Lmiui/contentcatcher/InterceptorProxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/InterceptorProxy;-><init>(Landroid/app/Activity;)V

    return-object v1

    .line 60
    :cond_2
    const-string/jumbo v1, "InterceptorProxy"

    const-string/jumbo v2, "Failed to create InterceptorProxy!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v3
.end method

.method public static getAttachedActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 110
    if-nez p0, :cond_0

    .line 111
    return-object v5

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 114
    .local v3, "viewContext":Landroid/content/Context;
    :cond_1
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 137
    :cond_2
    :goto_0
    if-eqz v3, :cond_6

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_6

    .line 138
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "viewContext":Landroid/content/Context;
    return-object v3

    .line 115
    .restart local v3    # "viewContext":Landroid/content/Context;
    :cond_3
    instance-of v4, v3, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_2

    .line 116
    move-object v2, v3

    .line 117
    .local v2, "preViewContext":Landroid/content/Context;
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3    # "viewContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 118
    .restart local v3    # "viewContext":Landroid/content/Context;
    if-ne v2, v3, :cond_1

    .line 119
    sget-object v4, Lmiui/contentcatcher/InterceptorProxy;->sSpecialContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    const-string/jumbo v4, "mBase"

    const-class v6, Landroid/content/Context;

    .line 120
    invoke-static {v3, v4, v6}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 122
    .local v1, "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v0, v4

    .line 123
    .local v0, "baseContext":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_5

    if-eq v3, v0, :cond_5

    .line 124
    const-string/jumbo v4, "InterceptorProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Get New base context : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 125
    const-string/jumbo v7, " and Cur base context is:"

    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 125
    invoke-virtual {v3}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object v3, v0

    .line 128
    goto :goto_0

    .end local v0    # "baseContext":Landroid/content/Context;
    :cond_4
    move-object v0, v5

    .line 122
    goto :goto_1

    .line 131
    .end local v1    # "baseRef":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/content/Context;>;"
    :cond_5
    return-object v5

    .line 140
    .end local v2    # "preViewContext":Landroid/content/Context;
    :cond_6
    return-object v5
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 89
    :cond_1
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkHandler:Landroid/os/Handler;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWorkThread()Landroid/os/HandlerThread;
    .locals 4

    .prologue
    .line 69
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 70
    const-class v2, Lmiui/contentcatcher/InterceptorProxy;

    monitor-enter v2

    .line 71
    :try_start_0
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "interceptor-thread"

    const/4 v3, -0x4

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v0, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    sput-object v0, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 78
    :cond_1
    sget-object v1, Lmiui/contentcatcher/InterceptorProxy;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->postToUiHandler(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method public static postToUiHandler(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .line 153
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->postToWorkHandler(Ljava/lang/Runnable;J)V

    .line 92
    return-void
.end method

.method public static postToWorkHandler(Ljava/lang/Runnable;J)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    .line 100
    .local v1, "workHandler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "workHandler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "InterceptorProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postToWorkHandler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_1

    .line 231
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchKeyEvent event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rootView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "attachedActivity"    # Landroid/app/Activity;

    .prologue
    .line 223
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/internal/contentcatcher/IInterceptor;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public notifyActivityCreate()V
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method public notifyActivityDestroy()V
    .locals 2

    .prologue
    .line 211
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    return-void
.end method

.method public notifyActivityPause()V
    .locals 2

    .prologue
    .line 201
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    return-void
.end method

.method public notifyActivityResume()V
    .locals 2

    .prologue
    .line 196
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method

.method public notifyActivityStart()V
    .locals 2

    .prologue
    .line 191
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    return-void
.end method

.method public notifyActivityStop()V
    .locals 2

    .prologue
    .line 206
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    const-string/jumbo v1, "notifyActivityStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public notifyContentChange()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    .line 215
    :cond_0
    return-void
.end method

.method public notifyWebView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .prologue
    .line 256
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy;->mInterceptor:Lcom/miui/internal/contentcatcher/IInterceptor;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyWebView(Landroid/view/View;Z)V

    .line 255
    :cond_1
    return-void
.end method

.method public setWebView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLoad"    # Z

    .prologue
    .line 239
    sget-boolean v0, Lmiui/contentcatcher/InterceptorProxy;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InterceptorProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    sget-object v0, Lmiui/contentcatcher/InterceptorProxy;->sUiHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/contentcatcher/InterceptorProxy$2;

    invoke-direct {v1, p0, p2, p1}, Lmiui/contentcatcher/InterceptorProxy$2;-><init>(Lmiui/contentcatcher/InterceptorProxy;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method
