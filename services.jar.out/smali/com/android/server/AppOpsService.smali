.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ChangeRec;,
        Lcom/android/server/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$Shell;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields

.field mFlymeLooper:Landroid/os/Looper;

.field static final DEBUG:Z = false

.field private static final MIUI_VER:Ljava/lang/String; = "miui-ver"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final VERION_1:I = 0x1

.field static final WRITE_DELAY:J = 0x1b7740L

.field static final sOpInControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResetOp:Z

.field private mServiceState:Lcom/android/server/AppOpsServiceState;

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    .line 95
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2716

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ACCESS_XIAOMI_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.NFC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AUTO_START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    new-instance v0, Lcom/android/server/AppOpsServiceState;

    invoke-direct {v0}, Lcom/android/server/AppOpsServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p4, :cond_0

    .line 730
    return-object p0

    .line 732
    :cond_0
    if-nez p0, :cond_1

    .line 733
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 735
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_1
    const/4 v1, 0x0

    .line 736
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 737
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 738
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 739
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    if-nez v6, :cond_4

    .line 740
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 753
    new-instance v7, Lcom/android/server/AppOpsService$ChangeRec;

    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 744
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 745
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$ChangeRec;

    .line 746
    .local v4, "report":Lcom/android/server/AppOpsService$ChangeRec;
    iget v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    if-ne v7, p1, :cond_5

    iget-object v7, v4, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 747
    const/4 v1, 0x1

    .line 748
    goto :goto_1

    .line 744
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 756
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_6
    return-object p0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1023
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    .line 1024
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 1025
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1026
    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 2447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2448
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2449
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2446
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v12, 0x0

    .line 456
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    .line 457
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 459
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 460
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 461
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 462
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 460
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    const/4 v11, 0x0

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "j":I
    :goto_1
    array-length v1, p2

    if-ge v11, v1, :cond_3

    .line 466
    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 467
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_2

    .line 468
    if-nez v12, :cond_1

    .line 469
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 471
    :cond_1
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 472
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 473
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 471
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v12
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1957
    const-string/jumbo v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    const-string/jumbo v0, "  set [--user <USER_ID>] <PACKAGE> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    const-string/jumbo v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v0, "  get [--user <USER_ID>] <PACKAGE> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1963
    const-string/jumbo v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    const-string/jumbo v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    const-string/jumbo v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    const-string/jumbo v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    const-string/jumbo v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    const-string/jumbo v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    const-string/jumbo v0, "    <PACKAGE> an Android package name."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    const-string/jumbo v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    const-string/jumbo v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    const-string/jumbo v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    const-string/jumbo v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2169
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    const-string/jumbo v0, "  none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    return-void
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1431
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1432
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1433
    return-object v1

    .line 1435
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 3
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1439
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 1440
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 1441
    if-nez p3, :cond_0

    .line 1442
    return-object v1

    .line 1444
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v1, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, v1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1445
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1447
    :cond_1
    if-eqz p3, :cond_2

    .line 1448
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1450
    :cond_2
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1347
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v8

    .line 1348
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v8, :cond_0

    .line 1349
    const/4 v9, 0x0

    return-object v9

    .line 1352
    :cond_0
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v9, :cond_2

    .line 1353
    if-nez p3, :cond_1

    .line 1354
    const/4 v9, 0x0

    return-object v9

    .line 1356
    :cond_1
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1359
    :cond_2
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 1360
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_b

    .line 1361
    if-nez p3, :cond_3

    .line 1362
    const/4 v9, 0x0

    return-object v9

    .line 1364
    :cond_3
    const/4 v3, 0x0

    .line 1367
    .local v3, "isPrivileged":Z
    if-eqz p1, :cond_a

    .line 1368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1370
    .local v4, "ident":J
    const/4 v7, -0x1

    .line 1372
    .local v7, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1375
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1374
    const/high16 v11, 0x10000000

    .line 1372
    invoke-interface {v9, p2, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1376
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    .line 1377
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1378
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    .line 1395
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    if-eq v7, p1, :cond_9

    .line 1398
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "here"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1400
    const-string/jumbo v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad call: specified package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1401
    const-string/jumbo v11, " under uid "

    .line 1400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1401
    const-string/jumbo v11, " but it is really "

    .line 1400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1402
    const/4 v9, 0x0

    .line 1405
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    return-object v9

    .line 1378
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1381
    :cond_6
    :try_start_2
    const-string/jumbo v9, "media"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1382
    const/16 v7, 0x3f5

    .line 1383
    const/4 v3, 0x0

    goto :goto_0

    .line 1384
    :cond_7
    const-string/jumbo v9, "audioserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1385
    const/16 v7, 0x411

    .line 1386
    const/4 v3, 0x0

    goto :goto_0

    .line 1387
    :cond_8
    const-string/jumbo v9, "cameraserver"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 1388
    const/16 v7, 0x417

    .line 1389
    const/4 v3, 0x0

    goto :goto_0

    .line 1392
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v9, "AppOps"

    const-string/jumbo v10, "Could not contact PackageManager"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1404
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    .line 1405
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    throw v9

    .line 1405
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1408
    .end local v4    # "ident":J
    .end local v7    # "pkgUid":I
    :cond_a
    new-instance v6, Lcom/android/server/AppOpsService$Ops;

    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v6, p2, v8, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1409
    .restart local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .end local v3    # "isPrivileged":Z
    :cond_b
    return-object v6
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 2465
    const/4 v1, 0x0

    .line 2467
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2471
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 2472
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    .line 2474
    :cond_0
    return-object v1

    .line 2468
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1335
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1336
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 1337
    if-nez p2, :cond_0

    .line 1338
    return-object v2

    .line 1340
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1341
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1343
    :cond_1
    return-object v0
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1454
    const/16 v5, 0x2710

    if-le p2, v5, :cond_0

    .line 1455
    return v6

    .line 1458
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1459
    .local v4, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1461
    .local v2, "restrictionSetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1464
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 1465
    .local v3, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1466
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1468
    monitor-enter p0

    .line 1469
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1470
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    monitor-exit p0

    .line 1471
    return v6

    :cond_1
    monitor-exit p0

    .line 1475
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    return v7

    .line 1468
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1461
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1478
    .end local v3    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_4
    return v6
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1014
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1015
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1014
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Could not talk to package manager service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    .line 1110
    const/4 v15, 0x0

    .line 1111
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v17, 0x0

    .line 1113
    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    const/4 v13, 0x0

    .line 1114
    .local v13, "resultMode":I
    monitor-enter p0

    .line 1115
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v16

    .line 1116
    .local v16, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v16, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    const/4 v4, 0x2

    monitor-exit p0

    return v4

    .line 1122
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v15

    .line 1123
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1124
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 1126
    :cond_1
    :try_start_2
    iget v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1127
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Noting op not finished: uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    const-string/jumbo v6, " code "

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    const-string/jumbo v6, " time="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    iget-wide v6, v15, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1127
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    const-string/jumbo v6, " duration="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    iget v6, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_2
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1131
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 1132
    .local v12, "switchCode":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v18, v0

    .line 1135
    .local v18, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_6

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_6

    .line 1136
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1137
    .local v8, "uidMode":I
    if-eqz v8, :cond_3

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1143
    return v8

    .line 1145
    :cond_3
    move v13, v8

    .end local v8    # "uidMode":I
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    monitor-exit p0

    .line 1152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1154
    const/4 v13, 0x0

    .line 1164
    :cond_4
    :goto_1
    const/4 v4, 0x4

    if-ne v13, v4, :cond_5

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    .line 1169
    :cond_5
    if-eqz v13, :cond_9

    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1182
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1183
    return v13

    .line 1147
    .restart local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_6
    move/from16 v0, p1

    if-eq v12, v0, :cond_7

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v17

    .line 1148
    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_3
    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1147
    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_7
    move-object/from16 v17, v15

    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_3

    .line 1114
    .end local v12    # "switchCode":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v17    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1158
    .restart local v12    # "switchCode":I
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    .line 1160
    if-eqz v17, :cond_4

    .line 1161
    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_1

    .line 1177
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1178
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1179
    move/from16 v0, p4

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1180
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    goto :goto_2
.end method

.method private notifyWatchersOfChange(I)V
    .locals 11
    .param p1, "code"    # I

    .prologue
    .line 2406
    monitor-enter p0

    .line 2407
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2408
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v2, :cond_0

    monitor-exit p0

    .line 2409
    return-void

    .line 2411
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    monitor-exit p0

    .line 2417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2419
    .local v6, "identity":J
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2420
    .local v1, "callbackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 2421
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2423
    .local v0, "callback":Lcom/android/server/AppOpsService$Callback;
    :try_start_3
    iget-object v8, v0, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2420
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2406
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2424
    .restart local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .restart local v1    # "callbackCount":I
    .restart local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "clonedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catch_0
    move-exception v4

    .line 2425
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v8, "AppOps"

    const-string/jumbo v9, "Error dispatching op op change"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2428
    .end local v0    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v1    # "callbackCount":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    :catchall_1
    move-exception v8

    .line 2429
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2428
    throw v8

    .line 2429
    .restart local v1    # "callbackCount":I
    .restart local v5    # "i":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2404
    return-void
.end method

.method static onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I
    .locals 31
    .param p0, "shell"    # Lcom/android/server/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1981
    if-nez p1, :cond_0

    .line 1982
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v25

    return v25

    .line 1984
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v19

    .line 1985
    .local v19, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 1987
    .local v8, "err":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v25, "set"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1989
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 1990
    .local v20, "res":I
    if-gez v20, :cond_6

    .line 1991
    return v20

    .line 1987
    .end local v20    # "res":I
    :cond_1
    const-string/jumbo v25, "get"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2008
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v20

    .line 2009
    .restart local v20    # "res":I
    if-gez v20, :cond_9

    .line 2010
    return v20

    .line 1987
    .end local v20    # "res":I
    :cond_2
    const-string/jumbo v25, "query-op"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2067
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/android/server/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v20

    .line 2068
    .restart local v20    # "res":I
    if-gez v20, :cond_13

    .line 2069
    return v20

    .line 1987
    .end local v20    # "res":I
    :cond_3
    const-string/jumbo v25, "reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 2095
    const/16 v17, 0x0

    .line 2096
    .local v17, "packageName":Ljava/lang/String;
    const/16 v21, -0x2

    .line 2097
    .end local v17    # "packageName":Ljava/lang/String;
    .local v21, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .local v4, "argument":Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 2098
    const-string/jumbo v25, "--user"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v24

    .line 2100
    .local v24, "userStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v21

    goto :goto_0

    .line 1987
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .end local v24    # "userStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v25, "write-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2132
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2133
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2131
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 2136
    .local v22, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2137
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v26

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->writeState()V

    .line 2140
    const-string/jumbo v25, "Current settings written."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2142
    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2144
    const/16 v25, 0x0

    return v25

    .line 1987
    .end local v22    # "token":J
    :cond_5
    const-string/jumbo v25, "read-settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 2148
    const-string/jumbo v26, "android.permission.UPDATE_APP_OPS_STATS"

    .line 2149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    const/16 v29, 0x0

    .line 2147
    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v22

    .line 2152
    .restart local v22    # "token":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService;->readState()V

    .line 2153
    const-string/jumbo v25, "Last settings read."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2155
    :try_start_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2157
    const/16 v25, 0x0

    return v25

    .line 1993
    .end local v22    # "token":J
    .restart local v20    # "res":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1994
    .local v13, "modeStr":Ljava/lang/String;
    if-nez v13, :cond_7

    .line 1995
    const-string/jumbo v25, "Error: Mode not specified."

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    const/16 v25, -0x1

    return v25

    .line 1999
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v12

    .line 2000
    .local v12, "mode":I
    if-gez v12, :cond_8

    .line 2001
    const/16 v25, -0x1

    return v25

    .line 2004
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2005
    const/16 v25, 0x0

    return v25

    .line 2013
    .end local v12    # "mode":I
    .end local v13    # "modeStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v26, v0

    .line 2014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2015
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v25, v0

    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v25, v30

    .line 2013
    :goto_1
    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v16

    .line 2016
    .local v16, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_c

    .line 2017
    :cond_a
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    const/16 v25, 0x0

    return v25

    .line 2015
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_b
    const/16 v25, 0x0

    goto :goto_1

    .line 2020
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2021
    .local v14, "now":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_12

    .line 2022
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2023
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 2024
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2025
    .local v6, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2026
    const-string/jumbo v25, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 2041
    const-string/jumbo v25, "mode="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2045
    :goto_4
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_d

    .line 2046
    const-string/jumbo v25, "; time="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2048
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2050
    :cond_d
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_e

    .line 2051
    const-string/jumbo v25, "; rejectTime="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v26

    sub-long v26, v14, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2053
    const-string/jumbo v25, " ago"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2055
    :cond_e
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 2056
    const-string/jumbo v25, " (running)"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    :cond_f
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/PrintWriter;->println()V

    .line 2023
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 2029
    :pswitch_0
    const-string/jumbo v25, "allow"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 2162
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    :catch_0
    move-exception v5

    .line 2163
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Remote exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    const/16 v25, -0x1

    return v25

    .line 2032
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v14    # "now":J
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "res":I
    :pswitch_1
    :try_start_7
    const-string/jumbo v25, "ignore"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2035
    :pswitch_2
    const-string/jumbo v25, "deny"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2038
    :pswitch_3
    const-string/jumbo v25, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2057
    :cond_10
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    if-eqz v25, :cond_f

    .line 2058
    const-string/jumbo v25, "; duration="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_5

    .line 2021
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2064
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    :cond_12
    const/16 v25, 0x0

    return v25

    .line 2071
    .end local v10    # "i":I
    .end local v14    # "now":J
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    .line 2072
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 2071
    invoke-interface/range {v25 .. v26}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v16

    .line 2073
    .restart local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-gtz v25, :cond_15

    .line 2074
    :cond_14
    const-string/jumbo v25, "No operations."

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    const/16 v25, 0x0

    return v25

    .line 2077
    :cond_15
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_19

    .line 2078
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AppOpsManager$PackageOps;

    .line 2079
    .local v18, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v9, 0x0

    .line 2080
    .local v9, "hasMatch":Z
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    .line 2081
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_16

    .line 2082
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2083
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->op:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppOpsService$Shell;->mode:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 2084
    const/4 v9, 0x1

    .line 2088
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_16
    if-eqz v9, :cond_17

    .line 2089
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2081
    .restart local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2092
    .end local v6    # "ent":Landroid/app/AppOpsManager$OpEntry;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "hasMatch":Z
    .end local v11    # "j":I
    .end local v18    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_19
    const/16 v25, 0x0

    return v25

    .line 2102
    .end local v10    # "i":I
    .end local v16    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "res":I
    .restart local v4    # "argument":Ljava/lang/String;
    .restart local v21    # "userId":I
    :cond_1a
    if-nez v17, :cond_1b

    .line 2103
    move-object/from16 v17, v4

    .local v17, "packageName":Ljava/lang/String;
    goto/16 :goto_0

    .line 2105
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_1b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error: Unsupported argument: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    const/16 v25, -0x1

    return v25

    .line 2111
    :cond_1c
    const/16 v25, -0x2

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 2112
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    .line 2115
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 2116
    const-string/jumbo v25, "Reset all modes for: "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 2118
    const-string/jumbo v25, "all users"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2122
    :goto_8
    const-string/jumbo v25, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2123
    if-nez v17, :cond_1f

    .line 2124
    const-string/jumbo v25, "all packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    :goto_9
    const/16 v25, 0x0

    return v25

    .line 2120
    :cond_1e
    const-string/jumbo v25, "user "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_8

    .line 2126
    :cond_1f
    const-string/jumbo v25, "package "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    .line 2136
    .end local v4    # "argument":Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v22    # "token":J
    :catchall_0
    move-exception v25

    :try_start_8
    monitor-exit v26

    throw v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2141
    :catchall_1
    move-exception v25

    .line 2142
    :try_start_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    throw v25

    .line 2154
    :catchall_2
    move-exception v25

    .line 2155
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2154
    throw v25

    .line 2160
    .end local v22    # "token":J
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v25

    return v25

    .line 2027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 538
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 539
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 540
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 541
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 542
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 543
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 544
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 545
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    .line 546
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 550
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 537
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2454
    if-nez p0, :cond_0

    .line 2455
    const-string/jumbo v0, "root"

    return-object v0

    .line 2456
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 2457
    const-string/jumbo v0, "com.android.shell"

    return-object v0

    .line 2458
    :cond_1
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2

    if-nez p1, :cond_2

    .line 2459
    const-string/jumbo v0, "android"

    return-object v0

    .line 2461
    :cond_2
    return-object p1
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1422
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1423
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1424
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1425
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1421
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1417
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1414
    :cond_0
    return-void
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2375
    const/4 v1, 0x0

    .line 2377
    .local v1, "notifyChange":Z
    monitor-enter p0

    .line 2378
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    .local v2, "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    if-nez v2, :cond_0

    .line 2382
    :try_start_1
    new-instance v2, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-direct {v2, p0, p3}, Lcom/android/server/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2386
    .restart local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    :cond_0
    invoke-virtual {v2, p1, p2, p5, p4}, Lcom/android/server/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2390
    const/4 v1, 0x1

    .line 2393
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2394
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2399
    if-eqz v1, :cond_3

    .line 2400
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 2374
    :cond_3
    return-void

    .line 2383
    .end local v2    # "restrictionState":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit p0

    .line 2384
    return-void

    .line 2377
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 1323
    if-ltz p1, :cond_0

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 1324
    return-void

    .line 1327
    :cond_0
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    const/16 v0, 0x2728

    if-ge p1, v0, :cond_1

    .line 1328
    return-void

    .line 1331
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1313
    return-void

    .line 1315
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1316
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1318
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1311
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 987
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 994
    :goto_0
    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 995
    const-string/jumbo p4, "android"

    .line 998
    :cond_0
    if-eqz v2, :cond_1

    .line 999
    const-string/jumbo v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio disabled for suspended package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v3, 0x1

    return v3

    .line 988
    :catch_0
    move-exception v0

    .line 990
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .local v2, "suspended":Z
    goto :goto_0

    .line 1003
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "suspended":Z
    :cond_1
    monitor-enter p0

    .line 1004
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1005
    .local v1, "mode":I
    if-eqz v1, :cond_2

    monitor-exit p0

    .line 1006
    return v1

    :cond_2
    monitor-exit p0

    .line 1009
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    return v3

    .line 1003
    .end local v1    # "mode":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 951
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 953
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 955
    return v1

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move v1, p2

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 960
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v0

    return v0

    .line 963
    :cond_2
    monitor-enter p0

    .line 964
    :try_start_0
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit p0

    .line 965
    return v1

    .line 967
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v8

    .line 969
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v8, :cond_4

    iget-object v0, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_4

    .line 970
    iget-object v0, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 971
    .local v7, "uidMode":I
    if-eqz v7, :cond_4

    monitor-exit p0

    .line 972
    return v7

    .line 975
    .end local v7    # "uidMode":I
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 976
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v6, :cond_5

    .line 977
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 979
    :cond_5
    :try_start_3
    iget v0, v6, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 963
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkOperationInternal(IILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2614
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2616
    monitor-enter p0

    .line 2617
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2618
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_0

    .line 2619
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 2621
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 2616
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1065
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    monitor-enter p0

    .line 1067
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1070
    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "android.permission.DUMP"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_0

    .line 2177
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2178
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 2177
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2179
    const-string/jumbo v28, ", uid="

    .line 2177
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 2179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v28

    .line 2177
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    return-void

    .line 2183
    :cond_0
    if-eqz p3, :cond_4

    .line 2184
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_4

    .line 2185
    aget-object v4, p3, v8

    .line 2186
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v27, "-h"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2188
    return-void

    .line 2189
    :cond_1
    const-string/jumbo v27, "-a"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 2184
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2191
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_3

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x2d

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 2192
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown option: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    return-void

    .line 2195
    :cond_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown command: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    return-void

    .line 2201
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_4
    monitor-enter p0

    .line 2202
    :try_start_0
    const-string/jumbo v27, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2204
    .local v12, "now":J
    const/4 v11, 0x0

    .line 2205
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_6

    .line 2206
    const/4 v11, 0x1

    .line 2207
    const-string/jumbo v27, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 2209
    const-string/jumbo v27, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2212
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_5

    .line 2213
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2212
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2208
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2218
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 2219
    const/4 v11, 0x1

    .line 2220
    const-string/jumbo v27, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_8

    .line 2222
    const-string/jumbo v27, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2225
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_7

    .line 2226
    const-string/jumbo v27, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v27, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2225
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2221
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2231
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_9

    .line 2232
    const/4 v11, 0x1

    .line 2233
    const-string/jumbo v27, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_9

    .line 2235
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2236
    const-string/jumbo v27, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2234
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2239
    .end local v8    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 2240
    const/4 v11, 0x1

    .line 2241
    const-string/jumbo v27, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_b

    .line 2243
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 2245
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2246
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 2247
    const-string/jumbo v27, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_a

    .line 2249
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2250
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2251
    const-string/jumbo v27, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    const-string/jumbo v27, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2242
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 2257
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_f

    .line 2258
    const/16 v22, 0x0

    .line 2259
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "o":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_f

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 2261
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 2262
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_e

    .line 2263
    if-nez v22, :cond_c

    .line 2264
    const-string/jumbo v27, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    const/16 v22, 0x1

    .line 2266
    const/4 v11, 0x1

    .line 2268
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    .line 2269
    .local v26, "usage":I
    const-string/jumbo v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    const-string/jumbo v27, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    .line 2272
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2273
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    .line 2274
    const-string/jumbo v27, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_d

    .line 2276
    const-string/jumbo v27, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2262
    .end local v9    # "j":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 2259
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v26    # "usage":I
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 2282
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_f
    if-eqz v11, :cond_10

    .line 2283
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2285
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_19

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    .line 2288
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v27, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 2291
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_11

    .line 2292
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 2293
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_c
    move/from16 v0, v17

    if-ge v9, v0, :cond_11

    .line 2294
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2295
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2296
    .local v10, "mode":I
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2293
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 2301
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_11
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    .line 2302
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_13

    .line 2285
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    .line 2306
    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 2307
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v27, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v27, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_14

    .line 2309
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2310
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2311
    const-string/jumbo v27, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2312
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_15

    .line 2313
    const-string/jumbo v27, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2314
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2316
    :cond_15
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_16

    .line 2317
    const-string/jumbo v27, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    sub-long v28, v12, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2318
    const-string/jumbo v27, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    :cond_16
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    .line 2321
    const-string/jumbo v27, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    :cond_17
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2308
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    .line 2322
    :cond_18
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 2323
    const-string/jumbo v27, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    .line 2201
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v27

    monitor-exit p0

    throw v27

    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_19
    monitor-exit p0

    .line 2174
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1263
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1264
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "resolvedPackageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1266
    return-void

    .line 1268
    :cond_0
    instance-of v3, p1, Lcom/android/server/AppOpsService$ClientState;

    if-nez v3, :cond_1

    .line 1269
    return-void

    :cond_1
    move-object v0, p1

    .line 1271
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1272
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1273
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1274
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_2

    monitor-exit p0

    .line 1275
    return-void

    .line 1277
    :cond_2
    :try_start_1
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1278
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1279
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation not started: uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1280
    const-string/jumbo v5, " pkg="

    .line 1279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1280
    iget-object v5, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1280
    const-string/jumbo v5, " op="

    .line 1279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1280
    iget v5, v1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1283
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_3
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1261
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1296
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 1297
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1299
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1305
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1295
    :goto_1
    return-void

    .line 1301
    :cond_0
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1302
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1302
    const-string/jumbo v2, " code "

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1302
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1302
    const-string/jumbo v2, " time="

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1302
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1301
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1303
    const-string/jumbo v2, " duration="

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1303
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1303
    const-string/jumbo v2, " nesting="

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1303
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 514
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.GET_APP_OPS_STATS"

    .line 515
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 514
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 516
    invoke-static {p1, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "resolvedPackageName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 520
    :cond_0
    monitor-enter p0

    .line 521
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 522
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 523
    return-object v9

    .line 525
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 526
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2

    monitor-exit p0

    .line 527
    return-object v9

    .line 529
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 531
    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 530
    invoke-direct {v3, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 532
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 533
    return-object v1

    .line 520
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 482
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 486
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 487
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 489
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 487
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 493
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 494
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    .line 495
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 496
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 497
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    .line 498
    if-nez v8, :cond_3

    .line 499
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    .line 502
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 501
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 503
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    monitor-exit p0

    .line 508
    return-object v7

    .line 485
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 939
    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 941
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 943
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 945
    return-object v0

    .line 939
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2626
    const/4 v0, 0x1

    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1099
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1101
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "resolvedPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1103
    const/4 v0, 0x1

    return v0

    .line 1105
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1080
    .local v2, "proxyUid":I
    invoke-static {v2, p2}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "resolveProxyPackageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1082
    return v6

    .line 1085
    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    .line 1084
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 1086
    .local v8, "proxyMode":I
    if-nez v8, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_2

    .line 1087
    :cond_1
    return v8

    .line 1089
    :cond_2
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    .local v7, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 1091
    return v6

    :cond_3

    invoke-direct/range {p0 .. p4}, Lcom/android/server/AppOpsService;->askFlymeOpsOperation(ILjava/lang/String;ILjava/lang/String;)V

    move-object v4, p0

    move v5, p1

    move v6, p3

    move-object v9, v3

    .line 1093
    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1953
    new-instance v0, Lcom/android/server/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 1952
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    monitor-exit p0

    .line 409
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 415
    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v0, 0x1

    .line 420
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V


    invoke-static/range {p1 .. p1}, Lmeizu/security/FlymePermissionManager;->clearOpsOperation(I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 405
    return-void

    .line 406
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1289
    if-nez p1, :cond_0

    .line 1290
    const/4 v0, -0x1

    return v0

    .line 1292
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 309
    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsServiceState;->init(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1586
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1587
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1589
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1590
    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1591
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1596
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1597
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    :cond_2
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1600
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1599
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1585
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 19

    .prologue
    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1483
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1486
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 1491
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1492
    .local v11, "success":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1494
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1495
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1497
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_1

    .line 1498
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    .line 1502
    :cond_1
    const/4 v15, 0x2

    if-eq v13, v15, :cond_3

    .line 1503
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "no start tag found"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1531
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    .line 1532
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1544
    if-nez v11, :cond_2

    .line 1545
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1548
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v16

    .line 1481
    return-void

    .line 1487
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    .line 1488
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No existing app ops "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "; starting empty"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v16

    .line 1489
    return-void

    .line 1507
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_a
    const-string/jumbo v15, "miui-ver"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v9, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1508
    .local v14, "value":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 1509
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    .line 1512
    :cond_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1513
    .local v8, "outerDepth":I
    :cond_6
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_d

    .line 1514
    const/4 v15, 0x3

    if-ne v13, v15, :cond_7

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_d

    .line 1515
    :cond_7
    const/4 v15, 0x3

    if-eq v13, v15, :cond_6

    const/4 v15, 0x4

    if-eq v13, v15, :cond_6

    .line 1519
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1520
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "pkg"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1521
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1533
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1534
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1544
    if-nez v11, :cond_8

    .line 1545
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1548
    :cond_8
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1522
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_9
    :try_start_e
    const-string/jumbo v15, "uid"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1523
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 1535
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 1536
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1544
    if-nez v11, :cond_a

    .line 1545
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1548
    :cond_a
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1525
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_b
    :try_start_12
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unknown element under <app-ops>: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1526
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1525
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1537
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 1538
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1544
    if-nez v11, :cond_c

    .line 1545
    :try_start_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1548
    :cond_c
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1530
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_d
    const/4 v11, 0x1

    .line 1544
    if-nez v11, :cond_e

    .line 1545
    :try_start_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1548
    :cond_e
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1541
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :catch_9
    move-exception v4

    .line 1542
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1544
    if-nez v11, :cond_f

    .line 1545
    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1548
    :cond_f
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1539
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .line 1540
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    const-string/jumbo v15, "AppOps"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1544
    if-nez v11, :cond_10

    .line 1545
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1548
    :cond_10
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_0

    .line 1549
    :catch_c
    move-exception v2

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1543
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v15

    .line 1544
    if-nez v11, :cond_11

    .line 1545
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 1548
    :cond_11
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 1543
    :goto_2
    :try_start_20
    throw v15
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 1483
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_1
    move-exception v15

    :try_start_21
    monitor-exit p0

    throw v15
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 1482
    :catchall_2
    move-exception v15

    monitor-exit v16

    throw v15

    .line 1549
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1608
    const-string/jumbo v22, "n"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1609
    .local v20, "uid":I
    const-string/jumbo v22, "p"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1610
    .local v8, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1611
    .local v7, "isPrivileged":Z
    if-nez v8, :cond_f

    .line 1613
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1614
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_d

    .line 1615
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 1616
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x0

    .line 1615
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1617
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 1618
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v22, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_c

    const/4 v7, 0x1

    .line 1636
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "isPrivileged":Z
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1638
    .local v12, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    .line 1639
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v12, :cond_11

    .line 1640
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1644
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1645
    .local v17, "tagName":Ljava/lang/String;
    const-string/jumbo v22, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1646
    const-string/jumbo v22, "n"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1647
    .local v14, "parseInt":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const/16 v22, 0x2a

    move/from16 v0, v22

    if-gt v14, v0, :cond_1

    .line 1650
    :cond_3
    new-instance v10, Lcom/android/server/AppOpsService$Op;

    move/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1, v14}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1651
    .local v10, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v22, "m"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1652
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1653
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1655
    :cond_4
    const-string/jumbo v22, "t"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1656
    .local v18, "time":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 1657
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1659
    :cond_5
    const-string/jumbo v22, "r"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1660
    if-eqz v18, :cond_6

    .line 1661
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1663
    :cond_6
    const-string/jumbo v22, "d"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1664
    .local v5, "dur":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 1665
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1667
    :cond_7
    const-string/jumbo v22, "pu"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1668
    .local v16, "proxyUid":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1669
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1671
    :cond_8
    const-string/jumbo v22, "pp"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1672
    .local v15, "proxyPackageName":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1673
    iput-object v15, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1676
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v21

    .line 1677
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 1678
    new-instance v22, Landroid/util/ArrayMap;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1681
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Ops;

    .line 1682
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v11, :cond_b

    .line 1683
    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1684
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    :cond_b
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0, v10}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1618
    .end local v5    # "dur":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v12    # "outerDepth":I
    .end local v14    # "parseInt":I
    .end local v15    # "proxyPackageName":Ljava/lang/String;
    .end local v16    # "proxyUid":Ljava/lang/String;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "isPrivileged":Z
    .restart local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1623
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    move/from16 v22, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v22, :cond_e

    .line 1624
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1627
    :cond_e
    return-void

    .line 1630
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    .line 1631
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v22, "AppOps"

    const-string/jumbo v23, "Could not contact PackageManager"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1634
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_f
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isPrivileged":Z
    goto/16 :goto_0

    .line 1688
    .end local v7    # "isPrivileged":Z
    .restart local v12    # "outerDepth":I
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_10
    const-string/jumbo v22, "AppOps"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown element under <pkg>: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1689
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1688
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1607
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1558
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1559
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1561
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_4

    .line 1562
    if-ne v4, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_4

    .line 1563
    :cond_1
    if-eq v4, v12, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    .line 1567
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1568
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1569
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1570
    .local v0, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1571
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1572
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_2

    .line 1573
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1575
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1577
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1578
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1577
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1557
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsServiceState;->registerCallback(Lcom/android/internal/app/IOpsCallback;)I

    move-result v0

    return v0
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2435
    const-string/jumbo v3, "removeUser"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2436
    monitor-enter p0

    .line 2437
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2438
    .local v2, "tokenCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2439
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$ClientRestrictionState;

    .line 2440
    .local v1, "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    invoke-virtual {v1, p1}, Lcom/android/server/AppOpsService$ClientRestrictionState;->removeUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "opRestrictions":Lcom/android/server/AppOpsService$ClientRestrictionState;
    :cond_0
    monitor-exit p0

    .line 2443
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v3, p1}, Lcom/android/server/AppOpsServiceState;->removeUser(I)V

    .line 2434
    return-void

    .line 2436
    .end local v0    # "i":I
    .end local v2    # "tokenCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 30
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 774
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 775
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 776
    const/4 v6, 0x0

    .line 775
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 778
    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 777
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 780
    const/16 v27, -0x1

    .line 781
    .local v27, "reqUid":I
    if-eqz p2, :cond_0

    .line 783
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 784
    const/16 v5, 0x2000

    .line 783
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v27

    .line 790
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 791
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 792
    const/4 v11, 0x0

    .line 793
    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_d

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    .line 796
    .local v29, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 797
    .local v21, "opModes":Landroid/util/SparseIntArray;
    if-eqz v21, :cond_4

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v27

    if-eq v4, v0, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_4

    .line 798
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v28

    .line 799
    .local v28, "uidOpCount":I
    add-int/lit8 v20, v28, -0x1

    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    .line 800
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 801
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 802
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 803
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 804
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 806
    :cond_2
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v22, v6, v5

    .line 807
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 807
    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 809
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 809
    move-object/from16 v0, v22

    invoke-static {v9, v12, v8, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 806
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 799
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 816
    .end local v12    # "code":I
    .end local v20    # "j":I
    .end local v28    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    .line 793
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 820
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    .line 821
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 826
    :cond_7
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    .line 827
    .local v23, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 828
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 829
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 830
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 831
    .restart local v22    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 835
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    .line 836
    .local v24, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    .line 837
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 838
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 839
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 840
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 841
    const/4 v11, 0x1

    .line 842
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v7, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 842
    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 844
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 844
    move-object/from16 v0, v22

    invoke-static {v9, v5, v6, v0, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 846
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 847
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 836
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    :cond_a
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 851
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 852
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 791
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v20    # "j":I
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v24    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 855
    .restart local v18    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v21    # "opModes":Landroid/util/SparseIntArray;
    .restart local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 860
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    monitor-exit p0

    .line 864
    if-eqz v9, :cond_10

    .line 865
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 866
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    .line 867
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 868
    .local v26, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    const/16 v18, 0x0

    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f

    .line 869
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$ChangeRec;

    .line 871
    .local v25, "rep":Lcom/android/server/AppOpsService$ChangeRec;
    :try_start_3
    iget-object v4, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 868
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 772
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :cond_10
    return-void

    .line 872
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .restart local v17    # "ent$iterator":Ljava/util/Iterator;
    .restart local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .restart local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 785
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v18    # "i":I
    .end local v25    # "rep":Lcom/android/server/AppOpsService$ChangeRec;
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$ChangeRec;>;"
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1035
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1037
    monitor-enter p0

    .line 1038
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1039
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    .line 1040
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1041
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1043
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1044
    if-eqz p4, :cond_3

    .line 1045
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .line 1046
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1047
    if-eqz p5, :cond_2

    .line 1048
    array-length v0, p5

    .line 1049
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1050
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1051
    aget-object v2, p5, v1

    .line 1052
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1053
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->notifyWatchersOfChange(I)V

    .line 1034
    return-void

    .line 1037
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.UPDATE_APP_OPS_STATS"

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 673
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 676
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 677
    const/4 v10, 0x0

    .line 678
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 679
    monitor-enter p0

    .line 680
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v12

    .line 681
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 682
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_2

    .line 683
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v13, v0, :cond_2

    .line 684
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 686
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_7

    .line 688
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 692
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 693
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_6

    .line 694
    if-nez v11, :cond_5

    .line 695
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 697
    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 699
    :goto_2
    iget v13, v7, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 702
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 704
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    monitor-exit p0

    .line 708
    if-eqz v10, :cond_4

    .line 712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 714
    .local v8, "identity":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-ge v6, v13, :cond_3

    .line 716
    :try_start_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 714
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 679
    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .line 721
    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_4
    return-void

    .line 720
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_1
    move-exception v13

    .line 721
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    throw v13

    .line 717
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 679
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v11, v10

    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 27
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.permission.UPDATE_APP_OPS_STATS"

    .line 563
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    const/16 v26, 0x0

    .line 562
    invoke-virtual/range {v22 .. v26}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 565
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 566
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 568
    monitor-enter p0

    .line 569
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    .line 571
    .local v10, "defaultMode":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 572
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v21, :cond_3

    .line 573
    move/from16 v0, p3

    if-ne v0, v10, :cond_1

    monitor-exit p0

    .line 574
    return-void

    .line 576
    :cond_1
    :try_start_1
    new-instance v21, Lcom/android/server/AppOpsService$UidState;

    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 577
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 578
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 603
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 604
    .local v20, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 606
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 607
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 608
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_9

    .line 609
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 610
    .local v5, "callbackCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_1
    if-ge v12, v5, :cond_8

    .line 611
    :try_start_3
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 612
    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 613
    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 614
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 615
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 610
    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 581
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_3
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 582
    move/from16 v0, p3

    if-eq v0, v10, :cond_2

    .line 583
    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 584
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 568
    .end local v10    # "defaultMode":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 588
    .restart local v10    # "defaultMode":I
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_4
    :try_start_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    monitor-exit p0

    .line 589
    return-void

    .line 591
    :cond_5
    move/from16 v0, p3

    if-ne v0, v10, :cond_7

    .line 592
    :try_start_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 593
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v22

    if-gtz v22, :cond_6

    .line 594
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 599
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_0

    .line 597
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .restart local v5    # "callbackCount":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v12    # "i":I
    .restart local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_8
    move-object v6, v7

    .line 619
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "i":I
    :cond_9
    const/16 v22, 0x0

    :try_start_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v6

    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    :try_start_9
    aget-object v19, v20, v22

    .line 620
    .local v19, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 621
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_b

    .line 622
    if-nez v7, :cond_12

    .line 623
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 625
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_4
    :try_start_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 626
    .restart local v5    # "callbackCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v5, :cond_c

    .line 627
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 628
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 629
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_a

    .line 630
    new-instance v9, Landroid/util/ArraySet;

    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 631
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 626
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_b
    move-object v6, v7

    .line 619
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_c
    add-int/lit8 v22, v22, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    .end local v19    # "uidPackageName":Ljava/lang/String;
    :cond_d
    monitor-exit p0

    .line 639
    if-nez v7, :cond_e

    .line 640
    return-void

    .line 606
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v22

    :goto_6
    monitor-exit p0

    throw v22

    .line 646
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 648
    .local v14, "identity":J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    :try_start_b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_11

    .line 649
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 650
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/ArraySet;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 652
    .local v18, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v18, :cond_10

    .line 653
    :try_start_c
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V

    .line 648
    :cond_f
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 655
    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v16

    .line 656
    .local v16, "reportedPackageCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    move/from16 v0, v16

    if-ge v13, v0, :cond_f

    .line 657
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 658
    .local v17, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 656
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 661
    .end local v13    # "j":I
    .end local v16    # "reportedPackageCount":I
    .end local v17    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 662
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string/jumbo v22, "AppOps"

    const-string/jumbo v23, "Error dispatching op op change"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    .line 665
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v18    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    .line 666
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw v22

    .line 666
    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    return-void

    .line 606
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v12    # "i":I
    .end local v14    # "identity":J
    :catchall_3
    move-exception v22

    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageName":Ljava/lang/String;
    :cond_12
    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto/16 :goto_4
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2355
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2356
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 2357
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2356
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2359
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 2360
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2364
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2369
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2354
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2340
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2341
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v0, 0x40

    if-ge v1, v0, :cond_1

    .line 2344
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v6

    .line 2345
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2346
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 2343
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2339
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "doWrite":Z
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    invoke-static {}, Lmeizu/security/FlymePermissionManager;->writeOpAskState()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1188
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1189
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1190
    invoke-static/range {p3 .. p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, "resolvedPackageName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1192
    const/4 v4, 0x1

    return v4

    .line 1194
    :cond_0
    const/16 v16, 0x0

    .line 1195
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v18, 0x0

    .line 1197
    .local v18, "switchOp":Lcom/android/server/AppOpsService$Op;
    const/4 v13, 0x0

    .local v13, "resultMode":I
    move-object/from16 v15, p1

    .line 1199
    check-cast v15, Lcom/android/server/AppOpsService$ClientState;

    .line 1200
    .local v15, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1201
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6, v4}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1202
    .local v17, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v17, :cond_1

    .line 1205
    const/4 v4, 0x2

    monitor-exit p0

    return v4

    .line 1207
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v16

    .line 1208
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 1209
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 1211
    :cond_2
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 1212
    .local v12, "switchCode":I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v19, v0

    .line 1213
    .local v19, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_3

    .line 1214
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1215
    .local v8, "uidMode":I
    if-eqz v8, :cond_3

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1221
    return v8

    .line 1224
    .end local v8    # "uidMode":I
    :cond_3
    move/from16 v0, p2

    if-eq v12, v0, :cond_6

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v18

    .line 1225
    .local v18, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v4, v6}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1230
    const/4 v13, 0x0

    .line 1236
    :cond_4
    :goto_1
    const/4 v4, 0x4

    if-ne v13, v4, :cond_5

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p3

    invoke-virtual {v4, v12, v0, v6}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    .line 1239
    :cond_5
    if-eqz v13, :cond_8

    .line 1240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1256
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x0

    move/from16 v10, p3

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1257
    return v13

    .line 1224
    .local v18, "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_6
    move-object/from16 v18, v16

    .local v18, "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    .line 1200
    .end local v12    # "switchCode":I
    .end local v16    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v18    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v19    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1232
    .restart local v12    # "switchCode":I
    .restart local v16    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .restart local v19    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    .line 1234
    move-object/from16 v0, v18

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_1

    .line 1244
    :cond_8
    monitor-enter p0

    .line 1245
    :try_start_4
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_9

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1247
    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1248
    const/4 v4, -0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1250
    :cond_9
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1251
    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    .line 1252
    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    monitor-exit p0

    goto :goto_2

    .line 1244
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 881
    if-nez p3, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    monitor-enter p0

    .line 885
    if-eq p1, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 886
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 887
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_2

    .line 888
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 889
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_2
    if-eq p1, v4, :cond_4

    .line 892
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 893
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    .line 894
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    if-eqz p2, :cond_6

    .line 900
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 901
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_5

    .line 902
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    monitor-exit p0

    .line 880
    return-void

    .line 884
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 912
    if-nez p1, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    monitor-enter p0

    .line 916
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 917
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_4

    .line 918
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 919
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 920
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 921
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 922
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 923
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 919
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 926
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 927
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 928
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 929
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 930
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_4
    monitor-exit p0

    .line 911
    return-void

    .line 915
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public systemReady()V
    .locals 21

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppOpsServiceState;->systemReady()V

    .line 316
    monitor-enter p0

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, "changed":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 319
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$UidState;

    .line 322
    .local v16, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 323
    .local v14, "packageNames":[Ljava/lang/String;
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 324
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 326
    const/4 v5, 0x1

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 330
    :cond_1
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 331
    .local v15, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v15, :cond_0

    .line 335
    invoke-virtual {v15}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 336
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 337
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .local v12, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v6, -0x1

    .line 340
    .local v6, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 342
    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 341
    const/16 v20, 0x2000

    .line 340
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 345
    :goto_3
    :try_start_2
    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_3

    .line 346
    const-string/jumbo v17, "AppOps"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Pruning old package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 347
    const-string/jumbo v19, "/"

    .line 346
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 347
    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v19, v0

    .line 346
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 347
    const-string/jumbo v19, ": new uid="

    .line 346
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 349
    const/4 v5, 0x1

    goto :goto_2

    .line 350
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    move/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v17, :cond_2

    if-eqz v13, :cond_2

    .line 353
    :try_start_3
    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 354
    iget-object v0, v12, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 353
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 355
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 356
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    iput-boolean v0, v12, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 356
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 360
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v17, "AppOps"

    const-string/jumbo v18, "Could not contact PackageManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 316
    .end local v6    # "curUid":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "i":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 366
    .restart local v8    # "i":I
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v14    # "packageNames":[Ljava/lang/String;
    .restart local v15    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_1

    .line 370
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_6
    if-eqz v5, :cond_7

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 373
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AppOpsService;->mResetOp:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const-class v17, Landroid/os/storage/MountServiceInternal;

    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/MountServiceInternal;

    .local v11, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v17, Lcom/android/server/AppOpsService$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    .line 378
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 313
    return-void

    .line 343
    .end local v11    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v6    # "curUid":I
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v14    # "packageNames":[Ljava/lang/String;
    .restart local v15    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v16    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_1
    move-exception v9

    .local v9, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V


    invoke-static/range {p1 .. p1}, Lmeizu/security/FlymePermissionManager;->clearOpsOperation(I)V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 431
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeState()V
    .locals 30

    .prologue
    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1697
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .line 1701
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v20

    .line 1708
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1709
    .local v16, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1710
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1711
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1712
    const-string/jumbo v26, "miui-ver"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1713
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1714
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1715
    .local v25, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v25

    if-ge v7, v0, :cond_2

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    .line 1717
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v26

    if-lez v26, :cond_1

    .line 1718
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1719
    const-string/jumbo v26, "n"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 1721
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1722
    .local v13, "opCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_0

    .line 1723
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 1724
    .local v11, "op":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1725
    .local v10, "mode":I
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1726
    const-string/jumbo v26, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1727
    const-string/jumbo v26, "m"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1728
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1722
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1702
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "mode":I
    .end local v11    # "op":I
    .end local v13    # "opCount":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v25    # "uidStateCount":I
    :catch_0
    move-exception v6

    .line 1703
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v26, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to write state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v27

    .line 1704
    return-void

    .line 1730
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v13    # "opCount":I
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v25    # "uidStateCount":I
    :cond_0
    :try_start_5
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1715
    .end local v8    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    :try_start_6
    monitor-exit p0

    .line 1734
    if-eqz v4, :cond_e

    .line 1735
    const/4 v9, 0x0

    .line 1736
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .end local v9    # "lastPkg":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 1737
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    .line 1738
    .local v17, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1739
    if-eqz v9, :cond_3

    .line 1740
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1742
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1743
    .local v9, "lastPkg":Ljava/lang/String;
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1744
    const-string/jumbo v26, "n"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1746
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1747
    const-string/jumbo v26, "n"

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1748
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1749
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v14

    .line 1752
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_b

    .line 1753
    const-string/jumbo v26, "p"

    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    :try_start_8
    monitor-exit p0

    .line 1758
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    .line 1759
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_c

    .line 1760
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 1761
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1762
    const-string/jumbo v26, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1763
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v26

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 1764
    const-string/jumbo v26, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1766
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v22

    .line 1767
    .local v22, "time":J
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_6

    .line 1768
    const-string/jumbo v26, "t"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1770
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v22

    .line 1771
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_7

    .line 1772
    const-string/jumbo v26, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1774
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1775
    .local v5, "dur":I
    if-eqz v5, :cond_8

    .line 1776
    const-string/jumbo v26, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1778
    :cond_8
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v19

    .line 1779
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 1780
    const-string/jumbo v26, "pu"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1782
    :cond_9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1783
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 1784
    const-string/jumbo v26, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1786
    :cond_a
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1759
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1713
    .end local v5    # "dur":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v18    # "proxyPackageName":Ljava/lang/String;
    .end local v19    # "proxyUid":I
    .end local v22    # "time":J
    .end local v25    # "uidStateCount":I
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1798
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v6

    .line 1799
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v26, "AppOps"

    const-string/jumbo v28, "Failed to write state, restoring backup."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v27

    .line 1695
    return-void

    .line 1755
    .restart local v7    # "i":I
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "uidStateCount":I
    :cond_b
    :try_start_a
    const-string/jumbo v26, "p"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 1748
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_1
    move-exception v26

    :try_start_b
    monitor-exit p0

    throw v26
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1696
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v25    # "uidStateCount":I
    :catchall_2
    move-exception v26

    monitor-exit v27

    throw v26

    .line 1788
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v25    # "uidStateCount":I
    :cond_c
    :try_start_c
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1736
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1790
    .end local v8    # "j":I
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    .line 1791
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1795
    :cond_e
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1796
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5
.end method

.method private askFlymeOpsOperation(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p3, p4}, Lcom/android/server/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "resolveProxiedPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mFlymeLooper:Landroid/os/Looper;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-static {p3, v0, v1}, Lmeizu/security/FlymePermissionManager;->askOpsOperation(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private initFlymeExtraFields()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFlymeLooper:Landroid/os/Looper;

    return-void
.end method
