.class public Lcom/android/server/am/PKTopWindowEvent;
.super Ljava/lang/Object;
.source "PKTopWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowEvent$1;
    }
.end annotation


# static fields
.field private static final ACTION_DESTROY_ACTIVITY:Ljava/lang/String; = "performDestroyActivity"

.field private static final ACTION_KEYCODE_BACK:Ljava/lang/String; = "android.intent.action.KEYCODE_BACK"

.field private static final ACTION_RESUME_ACTIVITY:Ljava/lang/String; = "performResumeActivity"

.field private static final ACTION_STOP_ACTIVITY_INNER:Ljava/lang/String; = "performStopActivityInner"

.field public static final MSG_ADVIEW_CLICKED:I = 0x5

.field public static final MSG_ADVIEW_VIEWED:I = 0x1

.field public static final MSG_KEYCODE_BACK:I = 0x2

.field public static final MSG_LONGPRESS_KEYCODE_BACK:I = 0x3

.field public static final MSG_POWER_CONNECTED:I = 0x4

.field public static final MSG_REMOVE_TOPWINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PKTopWindowEvent"


# instance fields
.field private final INTENT_ACTION:[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastRemoveTopwindowClassName:Ljava/lang/String;

.field private mLastRemoveTopwindowPackageName:Ljava/lang/String;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PKTopWindowEvent;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mLastRemoveTopwindowClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mLastRemoveTopwindowPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/PKTopWindowEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindowEvent;->mLastRemoveTopwindowClassName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/PKTopWindowEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindowEvent;->mLastRemoveTopwindowPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    aput-object v4, v3, v2

    const-string/jumbo v4, "android.intent.action.KEYCODE_BACK"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.intent.action.ACTION_POWER_CONNECTED"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    aput-object v4, v3, v6

    .line 43
    const-string/jumbo v4, "performResumeActivity"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "performStopActivityInner"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "performDestroyActivity"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 42
    iput-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->INTENT_ACTION:[Ljava/lang/String;

    .line 50
    new-instance v3, Lcom/android/server/am/PKTopWindowEvent$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/PKTopWindowEvent$1;-><init>(Lcom/android/server/am/PKTopWindowEvent;)V

    iput-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowEvent;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/server/am/PKTopWindowEvent;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mPackageName:Ljava/lang/String;

    .line 128
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mClassName:Ljava/lang/String;

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->INTENT_ACTION:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 131
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    sget-boolean v2, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 136
    new-instance v2, Lcom/android/server/am/PKTopWindowEvent$2;

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v6}, Lcom/android/server/am/PKTopWindowEvent$2;-><init>(Lcom/android/server/am/PKTopWindowEvent;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 167
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 171
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_1
.end method


# virtual methods
.method public clearEvent()V
    .locals 4

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/PKTopWindowEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    sget-boolean v2, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 185
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/PKTopWindowEvent;->mOrientationEventListener:Landroid/view/OrientationEventListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_1
.end method
