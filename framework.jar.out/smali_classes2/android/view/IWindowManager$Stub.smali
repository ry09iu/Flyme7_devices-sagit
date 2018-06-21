.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x16

.field static final TRANSACTION_addWindowToken:I = 0x14

.field static final TRANSACTION_cancelMiuiThumbnailAnimation:I = 0x22

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x49

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x48

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xe

.field static final TRANSACTION_clearForcedDisplaySize:I = 0xa

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x5c

.field static final TRANSACTION_closeSystemDialogs:I = 0x3e

.field static final TRANSACTION_createWallpaperInputConsumer:I = 0x66

.field static final TRANSACTION_disableKeyguard:I = 0x36

.field static final TRANSACTION_dismissKeyguard:I = 0x3c

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x5b

.field static final TRANSACTION_endProlongedAnimations:I = 0x30

.field static final TRANSACTION_executeAppTransition:I = 0x28

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x38

.field static final TRANSACTION_freezeRotation:I = 0x4f

.field static final TRANSACTION_getAnimationScale:I = 0x3f

.field static final TRANSACTION_getAnimationScales:I = 0x40

.field static final TRANSACTION_getAppOrientation:I = 0x19

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xc

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getBoundsForNewConfiguration:I = 0x33

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x43

.field static final TRANSACTION_getDockedStackSide:I = 0x5e

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xb

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1c

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x4e

.field static final TRANSACTION_getRotation:I = 0x4b

.field static final TRANSACTION_getStableInsets:I = 0x64

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x5d

.field static final TRANSACTION_hasNavigationBar:I = 0x58

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x3b

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x39

.field static final TRANSACTION_isKeyguardSecure:I = 0x3a

.field static final TRANSACTION_isRotationFrozen:I = 0x51

.field static final TRANSACTION_isSafeModeEnabled:I = 0x5a

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x3d

.field static final TRANSACTION_lockNow:I = 0x59

.field static final TRANSACTION_notifyAppResumed:I = 0x2b

.field static final TRANSACTION_notifyAppStopped:I = 0x2c

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overrideMiuiAnimSupportWinInset:I = 0x21

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x24

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1f

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x26

.field static final TRANSACTION_overridePendingAppTransitionLaunchFromHome:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x25

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x27

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x23

.field static final TRANSACTION_pauseKeyDispatching:I = 0x11

.field static final TRANSACTION_prepareAppTransition:I = 0x1b

.field static final TRANSACTION_reenableKeyguard:I = 0x37

.field static final TRANSACTION_registerDockedStackListener:I = 0x61

.field static final TRANSACTION_registerShortcutKey:I = 0x65

.field static final TRANSACTION_removeAppToken:I = 0x2f

.field static final TRANSACTION_removeRotationWatcher:I = 0x4d

.field static final TRANSACTION_removeWallpaperInputConsumer:I = 0x67

.field static final TRANSACTION_removeWindowToken:I = 0x15

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x63

.field static final TRANSACTION_requestAssistScreenshot:I = 0x53

.field static final TRANSACTION_resumeKeyDispatching:I = 0x12

.field static final TRANSACTION_screenshotApplications:I = 0x54

.field static final TRANSACTION_screenshotWallpaper:I = 0x52

.field static final TRANSACTION_setAnimationScale:I = 0x41

.field static final TRANSACTION_setAnimationScales:I = 0x42

.field static final TRANSACTION_setAppOrientation:I = 0x18

.field static final TRANSACTION_setAppStartingWindow:I = 0x29

.field static final TRANSACTION_setAppTask:I = 0x17

.field static final TRANSACTION_setAppVisibility:I = 0x2a

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x60

.field static final TRANSACTION_setDockedStackResizing:I = 0x5f

.field static final TRANSACTION_setEventDispatching:I = 0x13

.field static final TRANSACTION_setFocusedApp:I = 0x1a

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_setForcedDisplayModeAndDensity:I = 0x9

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xf

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x44

.field static final TRANSACTION_setNewConfiguration:I = 0x32

.field static final TRANSACTION_setOverscan:I = 0x10

.field static final TRANSACTION_setRecentsVisibility:I = 0x56

.field static final TRANSACTION_setResizeDimLayer:I = 0x62

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x47

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x46

.field static final TRANSACTION_setTvPipVisibility:I = 0x57

.field static final TRANSACTION_showStrictModeViolation:I = 0x45

.field static final TRANSACTION_startAppFreezingScreen:I = 0x2d

.field static final TRANSACTION_startFreezingScreen:I = 0x34

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x55

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x2e

.field static final TRANSACTION_stopFreezingScreen:I = 0x35

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x50

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x31

.field static final TRANSACTION_updateRotation:I = 0x4a

.field static final TRANSACTION_watchRotation:I = 0x4c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 105
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x1

    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 55
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v102

    .line 56
    .local v102, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v102, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v6, 0x1

    return v6

    .line 57
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .end local v7    # "_arg0":I
    .end local v102    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v102

    .line 64
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v102, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 65
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    .end local v102    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v102

    .line 72
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v102, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v6, 0x1

    return v6

    .line 73
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 78
    .end local v102    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v73

    .line 82
    .local v73, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v88

    .line 84
    .local v88, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v92

    .line 85
    .local v92, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v88

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v100

    .line 86
    .local v100, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v100, :cond_3

    invoke-interface/range {v100 .. v100}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 87
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 92
    .end local v73    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v88    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v92    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v100    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v77

    .line 95
    .local v77, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v102

    .line 96
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v102, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v6, 0x1

    return v6

    .line 97
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 102
    .end local v77    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v102    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v83, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v83, :cond_5

    .line 110
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 114
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v83    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v83, :cond_6

    .line 128
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 132
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 145
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v6, 0x1

    return v6

    .line 151
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_9
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 155
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 156
    sget-object v6, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/view/Display$Mode;

    .line 162
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 163
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v7, v1, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayModeAndDensity(ILandroid/view/Display$Mode;I)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v6, 0x1

    return v6

    .line 159
    .end local v9    # "_arg2":I
    :cond_7
    const/16 v86, 0x0

    .local v86, "_arg1":Landroid/view/Display$Mode;
    goto :goto_7

    .line 169
    .end local v7    # "_arg0":I
    .end local v86    # "_arg1":Landroid/view/Display$Mode;
    :sswitch_a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 172
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v6, 0x1

    return v6

    .line 178
    .end local v7    # "_arg0":I
    :sswitch_b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 181
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v96

    .line 182
    .local v96, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v6, 0x1

    return v6

    .line 188
    .end local v7    # "_arg0":I
    .end local v96    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 191
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v96

    .line 192
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v6, 0x1

    return v6

    .line 198
    .end local v7    # "_arg0":I
    .end local v96    # "_result":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 202
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 204
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 205
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v6, 0x1

    return v6

    .line 211
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 215
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 216
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v6, 0x1

    return v6

    .line 222
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 226
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 227
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v6, 0x1

    return v6

    .line 233
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 237
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 239
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 241
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 243
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 244
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 250
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 253
    .local v32, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v6, 0x1

    return v6

    .line 259
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 262
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v6, 0x1

    return v6

    .line 268
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v79, 0x1

    .line 271
    .local v79, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v6, 0x1

    return v6

    .line 270
    .end local v79    # "_arg0":Z
    :cond_8
    const/16 v79, 0x0

    goto :goto_8

    .line 277
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 281
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 282
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v6, 0x1

    return v6

    .line 288
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 291
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v6, 0x1

    return v6

    .line 297
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 301
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v14

    .line 303
    .local v14, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 305
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 307
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 309
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v18, 0x1

    .line 311
    .local v18, "_arg5":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v19, 0x1

    .line 313
    .local v19, "_arg6":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 315
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 317
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v22, 0x1

    .line 319
    .local v22, "_arg9":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v23, 0x1

    .line 321
    .local v23, "_arg10":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 322
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 328
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 329
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/res/Configuration;

    .line 335
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 337
    .local v26, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v27, 0x1

    .line 339
    .local v27, "_arg14":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v28, 0x1

    .line 341
    .local v28, "_arg15":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 343
    .local v29, "_arg16":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg17":I
    move-object/from16 v12, p0

    move v13, v7

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    .line 344
    invoke-virtual/range {v12 .. v30}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZII)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v6, 0x1

    return v6

    .line 309
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    .end local v29    # "_arg16":I
    .end local v30    # "_arg17":I
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Z
    goto :goto_9

    .line 311
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Z
    goto :goto_a

    .line 317
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    :cond_b
    const/16 v22, 0x0

    .restart local v22    # "_arg9":Z
    goto :goto_b

    .line 319
    :cond_c
    const/16 v23, 0x0

    .restart local v23    # "_arg10":Z
    goto :goto_c

    .line 325
    :cond_d
    const/16 v24, 0x0

    .local v24, "_arg11":Landroid/graphics/Rect;
    goto :goto_d

    .line 332
    .end local v24    # "_arg11":Landroid/graphics/Rect;
    :cond_e
    const/16 v25, 0x0

    .local v25, "_arg12":Landroid/content/res/Configuration;
    goto :goto_e

    .line 337
    .end local v25    # "_arg12":Landroid/content/res/Configuration;
    .restart local v26    # "_arg13":I
    :cond_f
    const/16 v27, 0x0

    .restart local v27    # "_arg14":Z
    goto :goto_f

    .line 339
    :cond_10
    const/16 v28, 0x0

    .restart local v28    # "_arg15":Z
    goto :goto_10

    .line 350
    .end local v7    # "_arg0":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v14    # "_arg1":Landroid/view/IApplicationToken;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 354
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 356
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 358
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 359
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    .line 365
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 366
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 372
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 374
    .local v37, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_13
    move-object/from16 v31, p0

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v38, v19

    .line 375
    invoke-virtual/range {v31 .. v38}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v6, 0x1

    return v6

    .line 362
    .end local v19    # "_arg6":Z
    .end local v37    # "_arg5":I
    :cond_11
    const/16 v35, 0x0

    .local v35, "_arg3":Landroid/graphics/Rect;
    goto :goto_11

    .line 369
    .end local v35    # "_arg3":Landroid/graphics/Rect;
    :cond_12
    const/16 v36, 0x0

    .local v36, "_arg4":Landroid/content/res/Configuration;
    goto :goto_12

    .line 374
    .end local v36    # "_arg4":Landroid/content/res/Configuration;
    .restart local v37    # "_arg5":I
    :cond_13
    const/16 v19, 0x0

    goto :goto_13

    .line 381
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 385
    .local v69, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 386
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v6, 0x1

    return v6

    .line 392
    .end local v8    # "_arg1":I
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 395
    .restart local v69    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v96

    .line 396
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v6, 0x1

    return v6

    .line 402
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    .end local v96    # "_result":I
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 406
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v89, 0x1

    .line 407
    .local v89, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v6, 0x1

    return v6

    .line 406
    .end local v89    # "_arg1":Z
    :cond_14
    const/16 v89, 0x0

    goto :goto_14

    .line 413
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 417
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/16 v89, 0x1

    .line 418
    .restart local v89    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v6, 0x1

    return v6

    .line 417
    .end local v89    # "_arg1":Z
    :cond_15
    const/16 v89, 0x0

    goto :goto_15

    .line 424
    .end local v7    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v96

    .line 426
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v6, 0x1

    return v6

    .line 432
    .end local v96    # "_result":I
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 436
    .local v78, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 438
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 440
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 441
    .local v42, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v6, 0x1

    return v6

    .line 447
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 451
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 453
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 455
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 456
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v6, 0x1

    return v6

    .line 462
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 466
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 468
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 470
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 471
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v6, 0x1

    return v6

    .line 477
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 481
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 483
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 485
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 486
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionLaunchFromHome(IIII)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v6, 0x1

    return v6

    .line 492
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 495
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 500
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->overrideMiuiAnimSupportWinInset(Landroid/graphics/Rect;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v6, 0x1

    return v6

    .line 498
    :cond_16
    const/16 v66, 0x0

    .local v66, "_arg0":Landroid/graphics/Rect;
    goto :goto_16

    .line 506
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->cancelMiuiThumbnailAnimation()V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v6, 0x1

    return v6

    .line 513
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 516
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 522
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 524
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 526
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 528
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v43, 0x1

    .local v43, "_arg4":Z
    :goto_18
    move-object/from16 v38, p0

    move/from16 v40, v8

    move/from16 v41, v9

    .line 529
    invoke-virtual/range {v38 .. v43}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v6, 0x1

    return v6

    .line 519
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v43    # "_arg4":Z
    :cond_17
    const/16 v39, 0x0

    .local v39, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 528
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_18
    const/16 v43, 0x0

    goto :goto_18

    .line 535
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 538
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 544
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 546
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 548
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 550
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 552
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v50

    .line 554
    .local v50, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v19, 0x1

    .restart local v19    # "_arg6":Z
    :goto_1a
    move-object/from16 v44, p0

    move-object/from16 v45, v39

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v51, v19

    .line 555
    invoke-virtual/range {v44 .. v51}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v6, 0x1

    return v6

    .line 541
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v19    # "_arg6":Z
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_19
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 554
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_1a
    const/16 v19, 0x0

    goto :goto_1a

    .line 561
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v81

    check-cast v81, [Landroid/view/AppTransitionAnimationSpec;

    .line 565
    .local v81, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 567
    .local v85, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v91

    .line 569
    .local v91, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v94, 0x1

    .line 570
    .local v94, "_arg3":Z
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v85

    move-object/from16 v3, v91

    move/from16 v4, v94

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v6, 0x1

    return v6

    .line 569
    .end local v94    # "_arg3":Z
    :cond_1b
    const/16 v94, 0x0

    goto :goto_1b

    .line 576
    .end local v81    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v91    # "_arg2":Landroid/os/IRemoteCallback;
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 580
    .restart local v78    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 581
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v6, 0x1

    return v6

    .line 587
    .end local v8    # "_arg1":I
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v68

    .line 591
    .local v68, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 593
    .restart local v85    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v93, 0x1

    .line 594
    .local v93, "_arg2":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object/from16 v2, v85

    move/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v6, 0x1

    return v6

    .line 593
    .end local v93    # "_arg2":Z
    :cond_1c
    const/16 v93, 0x0

    goto :goto_1c

    .line 600
    .end local v68    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v6, 0x1

    return v6

    .line 607
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 611
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 613
    .local v53, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 615
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 616
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    .line 622
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 623
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/CharSequence;

    .line 629
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 631
    .restart local v37    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 633
    .local v58, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 635
    .restart local v20    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 637
    .restart local v21    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v61

    .line 639
    .local v61, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v23, 0x1

    .local v23, "_arg10":Z
    :goto_1f
    move-object/from16 v51, p0

    move-object/from16 v52, v32

    move/from16 v54, v9

    move/from16 v57, v37

    move/from16 v59, v20

    move/from16 v60, v21

    move/from16 v62, v23

    .line 640
    invoke-virtual/range {v51 .. v62}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    move-result v102

    .line 641
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v102, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v6, 0x1

    return v6

    .line 619
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v37    # "_arg5":I
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :cond_1d
    const/16 v55, 0x0

    .local v55, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_1d

    .line 626
    .end local v55    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_1e
    const/16 v56, 0x0

    .local v56, "_arg4":Ljava/lang/CharSequence;
    goto :goto_1e

    .line 639
    .end local v56    # "_arg4":Ljava/lang/CharSequence;
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    .restart local v37    # "_arg5":I
    .restart local v58    # "_arg6":I
    .restart local v61    # "_arg9":Landroid/os/IBinder;
    :cond_1f
    const/16 v23, 0x0

    goto :goto_1f

    .line 642
    .restart local v23    # "_arg10":Z
    .restart local v102    # "_result":Z
    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    .line 647
    .end local v9    # "_arg2":I
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 651
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v89, 0x1

    .line 652
    .restart local v89    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    const/4 v6, 0x1

    return v6

    .line 651
    .end local v89    # "_arg1":Z
    :cond_21
    const/16 v89, 0x0

    goto :goto_21

    .line 658
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 662
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v89, 0x1

    .line 664
    .local v89, "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v93, 0x1

    .line 665
    .restart local v93    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v89

    move/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->notifyAppResumed(Landroid/os/IBinder;ZZ)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v6, 0x1

    return v6

    .line 662
    .end local v89    # "_arg1":Z
    .end local v93    # "_arg2":Z
    :cond_22
    const/16 v89, 0x0

    .restart local v89    # "_arg1":Z
    goto :goto_22

    .line 664
    :cond_23
    const/16 v93, 0x0

    goto :goto_23

    .line 671
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v89    # "_arg1":Z
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 674
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->notifyAppStopped(Landroid/os/IBinder;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v6, 0x1

    return v6

    .line 680
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 684
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 685
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v6, 0x1

    return v6

    .line 691
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 695
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v89, 0x1

    .line 696
    .local v89, "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v6, 0x1

    return v6

    .line 695
    .end local v89    # "_arg1":Z
    :cond_24
    const/16 v89, 0x0

    goto :goto_24

    .line 702
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 705
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v6, 0x1

    return v6

    .line 711
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v6, 0x1

    return v6

    .line 718
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 721
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 727
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 728
    .local v84, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v97

    .line 729
    .local v97, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v97, :cond_26

    .line 731
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 737
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 724
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v97    # "_result":Landroid/content/res/Configuration;
    :cond_25
    const/16 v63, 0x0

    .local v63, "_arg0":Landroid/content/res/Configuration;
    goto :goto_25

    .line 735
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    .restart local v84    # "_arg1":Landroid/os/IBinder;
    .restart local v97    # "_result":Landroid/content/res/Configuration;
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 741
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v97    # "_result":Landroid/content/res/Configuration;
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    .line 744
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 749
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)[I

    move-result-object v104

    .line 750
    .local v104, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 752
    const/4 v6, 0x1

    return v6

    .line 747
    .end local v104    # "_result":[I
    :cond_27
    const/16 v63, 0x0

    .restart local v63    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_27

    .line 756
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 759
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBoundsForNewConfiguration(I)Landroid/graphics/Rect;

    move-result-object v99

    .line 760
    .local v99, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v99, :cond_28

    .line 762
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v6, 0x1

    move-object/from16 v0, v99

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 768
    :goto_28
    const/4 v6, 0x1

    return v6

    .line 766
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 772
    .end local v7    # "_arg0":I
    .end local v99    # "_result":Landroid/graphics/Rect;
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 776
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 777
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v6, 0x1

    return v6

    .line 783
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v6, 0x1

    return v6

    .line 790
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 794
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 795
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v6, 0x1

    return v6

    .line 801
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 804
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    const/4 v6, 0x1

    return v6

    .line 810
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v71

    .line 813
    .local v71, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v6, 0x1

    return v6

    .line 819
    .end local v71    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v102

    .line 821
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    if-eqz v102, :cond_29

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    const/4 v6, 0x1

    return v6

    .line 822
    :cond_29
    const/4 v6, 0x0

    goto :goto_29

    .line 827
    .end local v102    # "_result":Z
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v102

    .line 829
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    if-eqz v102, :cond_2a

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    const/4 v6, 0x1

    return v6

    .line 830
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2a

    .line 835
    .end local v102    # "_result":Z
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v102

    .line 837
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v102, :cond_2b

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v6, 0x1

    return v6

    .line 838
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2b

    .line 843
    .end local v102    # "_result":Z
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    const/4 v6, 0x1

    return v6

    .line 850
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 853
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(I)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    const/4 v6, 0x1

    return v6

    .line 859
    .end local v7    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 862
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v6, 0x1

    return v6

    .line 868
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 871
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v95

    .line 872
    .local v95, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 874
    const/4 v6, 0x1

    return v6

    .line 878
    .end local v7    # "_arg0":I
    .end local v95    # "_result":F
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v103

    .line 880
    .local v103, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 882
    const/4 v6, 0x1

    return v6

    .line 886
    .end local v103    # "_result":[F
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 890
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v82

    .line 891
    .local v82, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    const/4 v6, 0x1

    return v6

    .line 897
    .end local v7    # "_arg0":I
    .end local v82    # "_arg1":F
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v80

    .line 900
    .local v80, "_arg0":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    const/4 v6, 0x1

    return v6

    .line 906
    .end local v80    # "_arg0":[F
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v95

    .line 908
    .restart local v95    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 910
    const/4 v6, 0x1

    return v6

    .line 914
    .end local v95    # "_result":F
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    const/16 v79, 0x1

    .line 917
    .restart local v79    # "_arg0":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v6, 0x1

    return v6

    .line 916
    .end local v79    # "_arg0":Z
    :cond_2c
    const/16 v79, 0x0

    goto :goto_2c

    .line 923
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v79, 0x1

    .line 926
    .restart local v79    # "_arg0":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v6, 0x1

    return v6

    .line 925
    .end local v79    # "_arg0":Z
    :cond_2d
    const/16 v79, 0x0

    goto :goto_2d

    .line 932
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 935
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    const/4 v6, 0x1

    return v6

    .line 941
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 945
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v89, 0x1

    .line 946
    .restart local v89    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    const/4 v6, 0x1

    return v6

    .line 945
    .end local v89    # "_arg1":Z
    :cond_2e
    const/16 v89, 0x0

    goto :goto_2e

    .line 952
    .end local v7    # "_arg0":I
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 955
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskWindowTransition(I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v6, 0x1

    return v6

    .line 961
    .end local v7    # "_arg0":I
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 964
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskThumbnailTransition(I)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v6, 0x1

    return v6

    .line 970
    .end local v7    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v79, 0x1

    .line 974
    .local v79, "_arg0":Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/16 v89, 0x1

    .line 975
    .restart local v89    # "_arg1":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    const/4 v6, 0x1

    return v6

    .line 972
    .end local v79    # "_arg0":Z
    .end local v89    # "_arg1":Z
    :cond_2f
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_2f

    .line 974
    :cond_30
    const/16 v89, 0x0

    goto :goto_30

    .line 981
    .end local v79    # "_arg0":Z
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v96

    .line 983
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v6, 0x1

    return v6

    .line 989
    .end local v96    # "_result":I
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 992
    .local v72, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v96

    .line 993
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    const/4 v6, 0x1

    return v6

    .line 999
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v96    # "_result":I
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 1002
    .restart local v72    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    const/4 v6, 0x1

    return v6

    .line 1008
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v96

    .line 1010
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    const/4 v6, 0x1

    return v6

    .line 1016
    .end local v96    # "_result":I
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1019
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v6, 0x1

    return v6

    .line 1025
    .end local v7    # "_arg0":I
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    const/4 v6, 0x1

    return v6

    .line 1032
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v102

    .line 1034
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v102, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v6, 0x1

    return v6

    .line 1035
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .line 1040
    .end local v102    # "_result":Z
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v98

    .line 1042
    .local v98, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v98, :cond_32

    .line 1044
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1050
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 1048
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1054
    .end local v98    # "_result":Landroid/graphics/Bitmap;
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v75

    .line 1057
    .local v75, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v102

    .line 1058
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    if-eqz v102, :cond_33

    const/4 v6, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    const/4 v6, 0x1

    return v6

    .line 1059
    :cond_33
    const/4 v6, 0x0

    goto :goto_33

    .line 1064
    .end local v75    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v102    # "_result":Z
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1068
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1070
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1072
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1074
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .local v49, "_arg4":F
    move-object/from16 v44, p0

    move-object/from16 v45, v32

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    .line 1075
    invoke-virtual/range {v44 .. v49}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    move-result-object v98

    .line 1076
    .restart local v98    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    if-eqz v98, :cond_34

    .line 1078
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1084
    :goto_34
    const/4 v6, 0x1

    return v6

    .line 1082
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1088
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v49    # "_arg4":F
    .end local v98    # "_result":Landroid/graphics/Bitmap;
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1091
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 1092
    const/4 v6, 0x1

    return v6

    .line 1096
    .end local v7    # "_arg0":I
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v79, 0x1

    .line 1099
    .local v79, "_arg0":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 1100
    const/4 v6, 0x1

    return v6

    .line 1098
    .end local v79    # "_arg0":Z
    :cond_35
    const/16 v79, 0x0

    goto :goto_35

    .line 1104
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v79, 0x1

    .line 1107
    .restart local v79    # "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setTvPipVisibility(Z)V

    .line 1108
    const/4 v6, 0x1

    return v6

    .line 1106
    .end local v79    # "_arg0":Z
    :cond_36
    const/16 v79, 0x0

    goto :goto_36

    .line 1112
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v102

    .line 1114
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    if-eqz v102, :cond_37

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    const/4 v6, 0x1

    return v6

    .line 1115
    :cond_37
    const/4 v6, 0x0

    goto :goto_37

    .line 1120
    .end local v102    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 1123
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/Bundle;

    .line 1128
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v6, 0x1

    return v6

    .line 1126
    :cond_38
    const/16 v67, 0x0

    .local v67, "_arg0":Landroid/os/Bundle;
    goto :goto_38

    .line 1134
    .end local v67    # "_arg0":Landroid/os/Bundle;
    :sswitch_5a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v102

    .line 1136
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v102, :cond_39

    const/4 v6, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v6, 0x1

    return v6

    .line 1137
    :cond_39
    const/4 v6, 0x0

    goto :goto_39

    .line 1142
    .end local v102    # "_result":Z
    :sswitch_5b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    const/4 v6, 0x1

    return v6

    .line 1149
    :sswitch_5c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1152
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v102

    .line 1153
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    if-eqz v102, :cond_3a

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    const/4 v6, 0x1

    return v6

    .line 1154
    :cond_3a
    const/4 v6, 0x0

    goto :goto_3a

    .line 1159
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :sswitch_5d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1162
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v101

    .line 1163
    .local v101, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    if-eqz v101, :cond_3b

    .line 1165
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1171
    :goto_3b
    const/4 v6, 0x1

    return v6

    .line 1169
    :cond_3b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 1175
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v101    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_5e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v96

    .line 1177
    .restart local v96    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    move-object/from16 v0, p3

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v6, 0x1

    return v6

    .line 1183
    .end local v96    # "_result":I
    :sswitch_5f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v79, 0x1

    .line 1186
    .restart local v79    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    const/4 v6, 0x1

    return v6

    .line 1185
    .end local v79    # "_arg0":Z
    :cond_3c
    const/16 v79, 0x0

    goto :goto_3c

    .line 1192
    :sswitch_60
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 1195
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 1200
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v6, 0x1

    return v6

    .line 1198
    :cond_3d
    const/16 v66, 0x0

    .restart local v66    # "_arg0":Landroid/graphics/Rect;
    goto :goto_3d

    .line 1206
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_61
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    move-result-object v70

    .line 1209
    .local v70, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    const/4 v6, 0x1

    return v6

    .line 1215
    .end local v70    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_62
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v79, 0x1

    .line 1219
    .local v79, "_arg0":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1221
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v90

    .line 1222
    .local v90, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v90

    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    const/4 v6, 0x1

    return v6

    .line 1217
    .end local v8    # "_arg1":I
    .end local v79    # "_arg0":Z
    .end local v90    # "_arg2":F
    :cond_3e
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_3e

    .line 1228
    .end local v79    # "_arg0":Z
    :sswitch_63
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v76

    .line 1232
    .local v76, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1233
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v6, 0x1

    return v6

    .line 1239
    .end local v8    # "_arg1":I
    .end local v76    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_64
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    new-instance v66, Landroid/graphics/Rect;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Rect;-><init>()V

    .line 1242
    .local v66, "_arg0":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v66, :cond_3f

    .line 1245
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    const/4 v6, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1251
    :goto_3f
    const/4 v6, 0x1

    return v6

    .line 1249
    :cond_3f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1255
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_65
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v64

    .line 1259
    .local v64, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v87

    .line 1260
    .local v87, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    move-object/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    const/4 v6, 0x1

    return v6

    .line 1266
    .end local v64    # "_arg0":J
    .end local v87    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_66
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    new-instance v74, Landroid/view/InputChannel;

    invoke-direct/range {v74 .. v74}, Landroid/view/InputChannel;-><init>()V

    .line 1269
    .local v74, "_arg0":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->createWallpaperInputConsumer(Landroid/view/InputChannel;)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    if-eqz v74, :cond_40

    .line 1272
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    const/4 v6, 0x1

    move-object/from16 v0, v74

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1278
    :goto_40
    const/4 v6, 0x1

    return v6

    .line 1276
    :cond_40
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 1282
    .end local v74    # "_arg0":Landroid/view/InputChannel;
    :sswitch_67
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->removeWallpaperInputConsumer()V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    const/4 v6, 0x1

    return v6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
