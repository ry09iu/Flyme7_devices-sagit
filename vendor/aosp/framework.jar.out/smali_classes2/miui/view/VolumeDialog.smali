.class public Lmiui/view/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumeDialog$1;,
        Lmiui/view/VolumeDialog$2;,
        Lmiui/view/VolumeDialog$3;,
        Lmiui/view/VolumeDialog$CustomDialog;,
        Lmiui/view/VolumeDialog$H;,
        Lmiui/view/VolumeDialog$SafetyWarningDialog;,
        Lmiui/view/VolumeDialog$StreamState;,
        Lmiui/view/VolumeDialog$VolumeIconRes;,
        Lmiui/view/VolumeDialog$VolumePanelDelegate;,
        Lmiui/view/VolumeDialog$VolumeRow;,
        Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;,
        Lmiui/view/VolumeDialog$VolumeSeekbarProgress;
    }
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_ANIMATION_DURATION:I = 0xc8

.field private static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field private static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final TAG:Ljava/lang/String; = "VolumeDialog"

.field private static final TYPE_FM:I = 0xa

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_DELAY:I = 0x12c

.field private static final VOLUME_ICON_TYPE_ALARM:I = 0x0

.field private static final VOLUME_ICON_TYPE_BLUETOOTH:I = 0x1

.field private static final VOLUME_ICON_TYPE_FM:I = 0x8

.field private static final VOLUME_ICON_TYPE_HEADSET:I = 0x2

.field private static final VOLUME_ICON_TYPE_HIFI:I = 0x7

.field private static final VOLUME_ICON_TYPE_MEDIA:I = 0x3

.field private static final VOLUME_ICON_TYPE_PHONE:I = 0x4

.field private static final VOLUME_ICON_TYPE_RING:I = 0x5

.field private static final VOLUME_ICON_TYPE_SPEAKER:I = 0x6

.field private static final sVolumeIconTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumeDialog$VolumeIconRes;",
            ">;"
        }
    .end annotation
.end field

.field static sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private mActiveStream:I

.field private final mAm:Landroid/media/AudioManager;

.field private mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

.field private mDialog:Lmiui/view/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogShowTime:J

.field private mDialogView:Landroid/view/ViewGroup;

.field public mExpandAnimating:Z

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandButton:Landroid/widget/ImageButton;

.field public mExpanded:Z

.field private final mHandler:Lmiui/view/VolumeDialog$H;

.field private mInScreenshot:Z

.field private mLastStatus:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mRingerMode:I

.field private mRingerModeLayout:Lmiui/view/RingerModeLayout;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Landroid/app/AlertDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowing:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeRowSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/view/VolumeDialog;)I
    .locals 1

    iget v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return v0
.end method

.method static synthetic -get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/view/VolumeDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get13(Lmiui/view/VolumeDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14()Ljava/util/Map;
    .locals 1

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/VolumeDialog;)J
    .locals 2

    iget-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/VolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/view/VolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/VolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/view/VolumeDialog;I)I
    .locals 0

    iput p1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return p1
.end method

.method static synthetic -set3(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->dismissH()V

    return-void
.end method

.method static synthetic -wrap10(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V

    return-void
.end method

.method static synthetic -wrap11(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    return-void
.end method

.method static synthetic -wrap12(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->vibrateH()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/view/VolumeDialog;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog;->stateChangedH(II)V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x1102004c

    const v8, 0x1102004b

    const v7, 0x1102004a

    const/4 v6, 0x0

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    .line 85
    new-instance v0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    .line 86
    const v1, 0x110200ed

    .line 87
    const v2, 0x110200ef

    .line 85
    invoke-direct {v0, v1, v2, v6}, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;-><init>(IILmiui/view/VolumeDialog$VolumeSeekbarProgress;)V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    .line 90
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020036

    .line 91
    const v4, 0x11020037

    .line 92
    const v5, 0x11020035

    .line 90
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102003b

    .line 94
    const v4, 0x1102003c

    .line 95
    const v5, 0x1102003a

    .line 93
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020043

    .line 97
    const v4, 0x11020044

    .line 98
    const v5, 0x11020042

    .line 96
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020051

    .line 103
    const v4, 0x11020052

    .line 104
    const v5, 0x11020050

    .line 102
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020055

    .line 106
    const v4, 0x11020059

    .line 107
    const v5, 0x11020054

    .line 105
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102005c

    .line 109
    const v4, 0x1102005d

    .line 110
    const v5, 0x1102005b

    .line 108
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v0, "scorpio"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v0, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    .line 111
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102003f

    .line 119
    const v4, 0x11020040

    .line 120
    const v5, 0x1102003e

    .line 118
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void

    .line 115
    :cond_1
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020047

    .line 116
    const v4, 0x11020048

    .line 117
    const v5, 0x11020046

    .line 115
    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/VolumeDialog$VolumePanelDelegate;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lmiui/view/VolumeDialog$H;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$H;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    .line 136
    new-instance v0, Lmiui/view/VolumeDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$1;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 403
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 737
    new-instance v0, Lmiui/view/VolumeDialog$2;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$2;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    .line 883
    new-instance v0, Lmiui/view/VolumeDialog$3;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$3;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .line 127
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    .line 129
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    .line 131
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    return-void

    .line 290
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0xa
    .end array-data
.end method

.method private addRow(IIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 153
    .local v2, "row":Lmiui/view/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 156
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110a0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 163
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-boolean v0, v0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    .line 265
    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const/16 v0, 0x1770

    return v0

    .line 269
    :cond_1
    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 413
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iput-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 415
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 420
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lmiui/view/VolumeDialog$CustomDialog;->dismiss()V

    .line 421
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 422
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, v3}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    .line 423
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v0}, Lmiui/view/RingerModeLayout;->cleanUp()V

    .line 424
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    .line 425
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 426
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    .line 427
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 428
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 429
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 430
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private expandVolumeBar(Z)V
    .locals 4
    .param p1, "isExpanded"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$6;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$6;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$7;

    invoke-direct {v1, p0, p1}, Lmiui/view/VolumeDialog$7;-><init>(Lmiui/view/VolumeDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 544
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 546
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 487
    return-void
.end method

.method private findRow(I)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 214
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 215
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    .line 217
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getConservativeCollapseDuration()I
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0x258

    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 821
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 822
    .local v2, "n":I
    if-nez p1, :cond_0

    .line 824
    .local v0, "level":I
    :goto_0
    return v0

    .line 823
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getMappedStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 284
    const/4 v0, 0x3

    return v0

    .line 286
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    aget v0, v0, p1

    return v0
.end method

.method private initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 4
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lmiui/view/VolumeDialog$VolumeRow;-><init>(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 170
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v0, p1}, Lmiui/view/VolumeDialog$VolumeRow;->-set12(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 171
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 172
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set7(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 173
    invoke-static {v0, p3}, Lmiui/view/VolumeDialog$VolumeRow;->-set6(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    .line 174
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030020

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 175
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110b0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SeekBar;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 177
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 178
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v3}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 181
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$4;

    invoke-direct {v2, p0, v0}, Lmiui/view/VolumeDialog$4;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 205
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 206
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private orderVolumeRowsH()V
    .locals 12

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, "volumeRowIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 223
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 224
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 225
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/4 v3, 0x1

    .line 226
    .local v3, "viewShow":Z
    if-nez v0, :cond_0

    .line 227
    iget v6, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0, v6}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    .line 228
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-nez v1, :cond_0

    .line 229
    const-string/jumbo v6, "VolumeDialog"

    const-string/jumbo v7, "terrible thing happens in orderVolumeRowsH"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    if-nez v1, :cond_1

    .line 233
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "volumeRowIdx":I
    .local v5, "volumeRowIdx":I
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 234
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    iget v7, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v6, v7, :cond_6

    .line 235
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 237
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :goto_1
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 238
    const/4 v3, 0x0

    .line 242
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_1
    if-eqz v3, :cond_2

    .line 243
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :goto_2
    invoke-static {v1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 248
    invoke-static {v1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 249
    const v6, 0x110b0061

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 250
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    sget-object v6, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v6, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 251
    const v6, 0x110b0062

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/SeekBar;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 252
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 255
    if-lez v0, :cond_4

    .line 256
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 257
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v3, :cond_3

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 245
    :cond_2
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v7, v9

    .line 257
    goto :goto_3

    .line 259
    :cond_4
    invoke-static {v1, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto :goto_4

    .line 220
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "viewShow":Z
    :cond_5
    return-void

    .end local v4    # "volumeRowIdx":I
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "viewShow":Z
    .restart local v5    # "volumeRowIdx":I
    :cond_6
    move v4, v5

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    goto :goto_1
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 463
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    .line 465
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    .line 466
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    return-void
.end method

.method private recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 587
    .local v0, "r":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 590
    .end local v0    # "r":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 584
    :cond_1
    return-void
.end method

.method private rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 579
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 580
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 581
    .local v0, "timeout":I
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    return-void
.end method

.method private showH(I)V
    .locals 11
    .param p1, "stream"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 306
    new-instance v3, Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lmiui/view/VolumeDialog$CustomDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    .line 308
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 309
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 310
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 312
    const v3, 0x1040128

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 317
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3, v7}, Lmiui/view/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x1103001f

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 319
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 320
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 321
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 322
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 323
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 324
    const-string/jumbo v3, "Volume Control"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 326
    const v3, 0x110c0003

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 327
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 328
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 330
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110b005d

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 331
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110b005f

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 332
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110b005e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 333
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110b0033

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/view/RingerModeLayout;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    .line 336
    filled-new-array {v6, v6}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 338
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 339
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 341
    const/4 v3, 0x5

    invoke-direct {p0, v8, v3, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 342
    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 343
    invoke-direct {p0, v9, v6, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 344
    invoke-direct {p0, v6, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 345
    const/4 v3, 0x6

    invoke-direct {p0, v3, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 346
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 347
    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 352
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 353
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110200eb

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 354
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 355
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110a003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_1

    .line 357
    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    :cond_1
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    .line 362
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v3, :cond_2

    .line 363
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eq v3, v8, :cond_7

    .line 364
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_7

    .line 368
    :goto_0
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3, p0}, Lmiui/view/RingerModeLayout;->setVolumeDialog(Lmiui/view/VolumeDialog;)V

    .line 369
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setLooper(Landroid/os/Looper;)V

    .line 370
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setParentDialog(Landroid/view/ViewGroup;)V

    .line 371
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3}, Lmiui/view/RingerModeLayout;->init()V

    .line 374
    :cond_2
    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result p1

    .line 377
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v7}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 378
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v8}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 379
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-eq v3, p1, :cond_4

    .line 380
    :cond_3
    iput p1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    .line 381
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->orderVolumeRowsH()V

    .line 383
    :cond_4
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 384
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateVolumeRowsH()V

    .line 386
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_8

    .line 387
    :cond_5
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_6

    .line 388
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 389
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 391
    :cond_6
    return-void

    .line 365
    :cond_7
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 394
    :cond_8
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 395
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 396
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 397
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 398
    iput-boolean v7, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 400
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog$CustomDialog;->show()V

    .line 401
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v3, v7}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    .line 304
    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->showSafeVolumeDialogByFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 718
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 720
    return-void

    .line 722
    :cond_1
    :try_start_1
    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    .line 723
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 724
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    new-instance v2, Lmiui/view/VolumeDialog$8;

    invoke-direct {v2, p0}, Lmiui/view/VolumeDialog$8;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 734
    :cond_2
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 716
    return-void

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stateChangedH(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 275
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 273
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string/jumbo v1, "VolumeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateChangedH can not find volume row for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private streamDeviceChanged(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 907
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 436
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 441
    .local v2, "diff":J
    iget-wide v6, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const/4 v0, 0x1

    .line 442
    .local v0, "collapsing":Z
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 443
    .local v1, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 444
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 445
    .local v4, "height":I
    :goto_1
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 446
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    return-void

    .line 441
    .end local v0    # "collapsing":Z
    .end local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .end local v4    # "height":I
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "collapsing":Z
    goto :goto_0

    .line 444
    .restart local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .restart local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v4, -0x2

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget v0, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 458
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_2

    const v0, 0x110200ea

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 459
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 453
    return-void

    :cond_1
    move v0, v1

    .line 457
    goto :goto_0

    .line 458
    :cond_2
    const v0, 0x110200ec

    goto :goto_1

    .line 459
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private updateLayoutDirectionH(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 566
    :cond_0
    return-void
.end method

.method private updateRowsVisibilityByExpandH()V
    .locals 6

    .prologue
    .line 550
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 551
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/16 v2, 0x8

    .line 552
    .local v2, "visibility":I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_2

    .line 553
    const/4 v2, 0x0

    .line 557
    :cond_1
    :goto_1
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRowsVisibilityByExpandH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 559
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 558
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 561
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_2
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    .line 549
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v2    # "visibility":I
    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 18
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lmiui/view/VolumeDialog$StreamState;->getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v12

    .line 596
    .local v12, "ss":Lmiui/view/VolumeDialog$StreamState;
    if-nez v12, :cond_0

    return-void

    .line 597
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lmiui/view/VolumeDialog$VolumeRow;->-set11(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;

    .line 598
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    if-lez v14, :cond_1

    .line 599
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lmiui/view/VolumeDialog$VolumeRow;->-set8(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 601
    :cond_1
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    const/4 v8, 0x1

    .line 602
    .local v8, "isRingStream":Z
    :goto_0
    if-eqz v8, :cond_e

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v9, 0x1

    .line 604
    .local v9, "isRingVibrate":Z
    :goto_1
    if-eqz v8, :cond_10

    .line 605
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    if-nez v14, :cond_f

    const/4 v7, 0x1

    .line 608
    .local v7, "isRingSilent":Z
    :goto_2
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get1(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    mul-int/lit8 v10, v14, 0x64

    .line 609
    .local v10, "max":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Lmiui/widget/SeekBar;->getMax()I

    move-result v14

    if-eq v10, v14, :cond_2

    .line 610
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14, v10}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 613
    :cond_2
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    .line 615
    .local v5, "iconsMapKey":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v14, v15, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    .line 618
    .local v3, "device":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 619
    const/4 v5, 0x6

    .line 623
    :cond_3
    and-int/lit8 v14, v3, 0x4

    if-nez v14, :cond_4

    .line 624
    and-int/lit8 v14, v3, 0x8

    if-eqz v14, :cond_5

    .line 625
    :cond_4
    const/4 v5, 0x2

    .line 629
    :cond_5
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 630
    const/4 v5, 0x7

    .line 633
    .end local v3    # "device":I
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "audio"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 638
    .local v2, "am":Landroid/media/AudioManager;
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    if-nez v14, :cond_11

    const/4 v13, 0x1

    .line 639
    .local v13, "streamMuted":Z
    :goto_3
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_8

    .line 640
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_7

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_8

    .line 641
    :cond_7
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get4(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get3(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v13

    .line 645
    .end local v13    # "streamMuted":Z
    :cond_8
    :goto_4
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    .line 646
    .local v6, "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    if-eqz v13, :cond_13

    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    .line 647
    .local v4, "iconRes":I
    :goto_5
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get2(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v4, v14, :cond_a

    .line 648
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get2(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v9, :cond_9

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 651
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 652
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 654
    :cond_a
    if-eqz v13, :cond_14

    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->silentProgress:I

    .line 655
    .local v11, "progressRes":I
    :goto_6
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get3(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v11, v14, :cond_b

    .line 656
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set3(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 657
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    :cond_b
    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v14

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lmiui/view/VolumeDialog;->updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V

    .line 594
    return-void

    .line 601
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v4    # "iconRes":I
    .end local v5    # "iconsMapKey":I
    .end local v6    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    .end local v7    # "isRingSilent":Z
    .end local v8    # "isRingStream":Z
    .end local v9    # "isRingVibrate":Z
    .end local v10    # "max":I
    .end local v11    # "progressRes":I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 603
    .restart local v8    # "isRingStream":Z
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "isRingVibrate":Z
    goto/16 :goto_1

    .line 602
    .end local v9    # "isRingVibrate":Z
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "isRingVibrate":Z
    goto/16 :goto_1

    .line 605
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "isRingSilent":Z
    goto/16 :goto_2

    .line 604
    .end local v7    # "isRingSilent":Z
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "isRingSilent":Z
    goto/16 :goto_2

    .line 638
    .restart local v2    # "am":Landroid/media/AudioManager;
    .restart local v5    # "iconsMapKey":I
    .restart local v10    # "max":I
    :cond_11
    const/4 v13, 0x0

    .restart local v13    # "streamMuted":Z
    goto/16 :goto_3

    .line 641
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 646
    .end local v13    # "streamMuted":Z
    .restart local v6    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    :cond_13
    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    .restart local v4    # "iconRes":I
    goto :goto_5

    .line 654
    :cond_14
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->normalProgress:I

    .restart local v11    # "progressRes":I
    goto :goto_6

    .line 659
    :cond_15
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v14

    invoke-static {v14}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    goto :goto_7
.end method

.method private updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V
    .locals 12
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p2, "vlevel"    # I

    .prologue
    .line 663
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get12(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 664
    return-void

    .line 667
    :cond_0
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v3

    .line 669
    .local v3, "progress":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 670
    .local v1, "level":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 671
    .local v4, "rowVisible":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 672
    const-wide/16 v8, 0x3e8

    .line 671
    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v0, 0x1

    .line 673
    .local v0, "inGracePeriod":Z
    :goto_1
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lmiui/view/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 674
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 675
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 676
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 675
    invoke-virtual {v6, v7, v8, v9}, Lmiui/view/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 677
    return-void

    .line 670
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "rowVisible":Z
    goto :goto_0

    .line 671
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_1

    .line 679
    :cond_3
    if-ne p2, v1, :cond_4

    .line 680
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 681
    return-void

    .line 684
    :cond_4
    mul-int/lit8 v2, p2, 0x64

    .line 685
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_7

    .line 686
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 688
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 689
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 690
    return-void

    .line 693
    :cond_5
    move v5, v3

    .line 694
    .local v5, "startProgress":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 695
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH cancel animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 697
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    .line 699
    :cond_6
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set0(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 701
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    invoke-static {p1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set1(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 704
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 705
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 662
    .end local v5    # "startProgress":I
    :cond_7
    :goto_2
    return-void

    .line 708
    :cond_8
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 709
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 711
    :cond_9
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method

.method private updateVolumeRowsH()V
    .locals 3

    .prologue
    .line 573
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 574
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 572
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method

.method private vibrateH()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 407
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 405
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1122
    return-void
.end method

.method public dismiss(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 1127
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1126
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    return v0
.end method

.method public masterMuteChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1150
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1147
    return-void
.end method

.method public recheckAll()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 1118
    return-void
.end method

.method public rescheduleTimeout(Z)V
    .locals 3
    .param p1, "needReschedule"    # Z

    .prologue
    const/4 v2, 0x5

    .line 1158
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 1159
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 1160
    if-eqz p1, :cond_0

    .line 1161
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 1157
    :cond_0
    return-void
.end method

.method public setExpandedH(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    .line 470
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 471
    :cond_0
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 472
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 473
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    .line 474
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 475
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V

    .line 477
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v1, Lmiui/view/VolumeDialog$5;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$5;-><init>(Lmiui/view/VolumeDialog;)V

    .line 483
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    .line 477
    invoke-virtual {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 469
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1114
    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    return-void
.end method

.method public showSafeWarningDialog(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 1140
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1139
    return-void
.end method

.method public stateChanged(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/view/VolumeDialog;->stateChanged(II)V

    .line 1130
    return-void
.end method

.method public stateChanged(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 1135
    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1134
    return-void
.end method

.method public updateLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1144
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1143
    return-void
.end method
