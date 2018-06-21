.class public Landroid/view/ViewRootImplInjector;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"


# static fields
.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static final PACKAGE_NAME_HOME:Ljava/lang/String; = "com.miui.home"

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field static sLauncher:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.miui.home"

    const-string/jumbo v2, "com.miui.home.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowDrawIfAnimating(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "com.miui.home"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkForThreeGesture(Landroid/view/MotionEvent;)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x3

    .line 81
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 82
    const-string/jumbo v0, "sys.miui.screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 84
    const-string/jumbo v0, "ViewRootImpl"

    const-string/jumbo v1, "cancle motionEvent because of threeGesture detecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method private static elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static needUpdateWindowState(Landroid/view/ViewRootImpl;Z)Z
    .locals 9
    .param p0, "root"    # Landroid/view/ViewRootImpl;
    .param p1, "stopped"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 62
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 64
    .local v2, "ctx":Landroid/content/Context;
    if-nez v2, :cond_1

    return v7

    .line 62
    .end local v2    # "ctx":Landroid/content/Context;
    :cond_0
    return v7

    .line 65
    .restart local v2    # "ctx":Landroid/content/Context;
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "pkgName":Ljava/lang/String;
    sget-object v5, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string/jumbo v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 69
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 70
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    sget-object v5, Landroid/view/ViewRootImplInjector;->sLauncher:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    return v8

    .line 73
    .end local v1    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 77
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    return v7
.end method

.method public static transformWindowType(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 24
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v4, :cond_1

    .line 25
    :cond_0
    return-void

    .line 27
    :cond_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d5

    if-ne v4, v5, :cond_3

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "stackTrace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "android.view.ViewRootImplInjector.transformWindowType"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const-string/jumbo v4, "android.view.ViewRootImpl.setView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string/jumbo v4, "android.view.WindowManagerGlobal.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string/jumbo v4, "android.view.WindowManagerImpl.addView"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string/jumbo v4, "android.widget.Toast$TN.handleShow"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :try_start_0
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 37
    .local v3, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/view/ViewRootImplInjector;->elementToString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 40
    const/16 v4, 0x7d3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    .end local v3    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ViewRootImpl"

    const-string/jumbo v5, " transformWindowTye error "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "stackTrace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method
