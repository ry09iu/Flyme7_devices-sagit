.class public Lcom/android/server/am/PKTopWindow;
.super Ljava/lang/Object;
.source "PKTopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindow$1;,
        Lcom/android/server/am/PKTopWindow$2;,
        Lcom/android/server/am/PKTopWindow$3;,
        Lcom/android/server/am/PKTopWindow$DissmissListener;,
        Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PKTopWindow"

.field private static params_acturl:Ljava/lang/String;

.field private static params_ad_type:Ljava/lang/String;

.field private static params_adswitch:Ljava/lang/String;

.field private static params_adurl:Ljava/lang/String;

.field private static params_clickTrackUrl:Ljava/lang/String;

.field private static params_freq:Ljava/lang/String;

.field private static params_secret:Ljava/lang/String;

.field private static params_viewTrackUrl:Ljava/lang/String;

.field private static tuia_acturl:Ljava/lang/String;

.field private static tuia_adurl:Ljava/lang/String;


# instance fields
.field private adText:Landroid/widget/TextView;

.field private adTextLp:Landroid/widget/FrameLayout$LayoutParams;

.field public fullJson:Ljava/lang/String;

.field private mADBitmapDrawable:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mADImageView:Landroid/widget/ImageView;

.field private mADUrlBitmap:Landroid/graphics/Bitmap;

.field private mADWebView:Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

.field private mAdTextListener:Landroid/view/View$OnClickListener;

.field public mBackupURLEnabled:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDissmissListener:Lcom/android/server/am/PKTopWindow$DissmissListener;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

.field private mFirstWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mFreqMin:I

.field private mFreqTimes:I

.field private mLogoBitmap:Landroid/graphics/Bitmap;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

.field private mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

.field private mPKTopWindowHandler:Landroid/os/Handler;

.field private mPKTopWindowSync:Lcom/android/server/am/PKTopWindowSync;

.field private mPackageName:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

.field private mPreviewImageBitmap:Landroid/graphics/Bitmap;

.field private mRemainTime:J

.field private mSecondWindow:Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

.field private mSecondWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipTextListener:Landroid/view/View$OnClickListener;

.field public mUpdateUIHandler:Landroid/os/Handler;

.field private mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

.field private mWebviewHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mdJson:Ljava/lang/String;

.field private skipText:Landroid/widget/TextView;

.field private skipTextLp:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mADImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/am/PKTopWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPreviewImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/am/PKTopWindow;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/PKTopWindow;->mRemainTime:J

    return-wide v0
.end method

.method static synthetic -get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mSecondWindow:Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mSecondWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mADUrlBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/am/PKTopWindow;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mSkipTextListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get24()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/PKTopWindow;->params_clickTrackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/PKTopWindow;->params_viewTrackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->skipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/am/PKTopWindow;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->skipTextLp:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic -get28()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/PKTopWindow;->tuia_acturl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mADWebView:Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindow$DissmissListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mDissmissListener:Lcom/android/server/am/PKTopWindow$DissmissListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/PKTopWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/am/PKTopWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/PKTopWindow;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mADImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;)Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mADWebView:Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$Preview;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mSecondWindow:Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/am/PKTopWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mSecondWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/am/PKTopWindow;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mdJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/PKTopWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/PKTopWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->destroyADWebview()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/PKTopWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->showFirstWindow()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/PKTopWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->showSecondWindow()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/PKTopWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->startFirstWindow()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;JLandroid/content/ComponentName;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "time"    # J
    .param p5, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/PKTopWindow;->mBackupURLEnabled:Z

    .line 67
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    .line 68
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    .line 101
    new-instance v30, Lcom/android/server/am/PKTopWindow$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow$1;-><init>(Lcom/android/server/am/PKTopWindow;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 114
    new-instance v30, Lcom/android/server/am/PKTopWindow$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow$2;-><init>(Lcom/android/server/am/PKTopWindow;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mAdTextListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v30, Lcom/android/server/am/PKTopWindow$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow$3;-><init>(Lcom/android/server/am/PKTopWindow;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mSkipTextListener:Landroid/view/View$OnClickListener;

    .line 133
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    .line 134
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 135
    const-wide/16 v30, 0xbb8

    cmp-long v30, p3, v30

    if-gez v30, :cond_0

    const-wide/16 p3, 0xbb8

    .end local p3    # "time":J
    :cond_0
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/PKTopWindow;->mRemainTime:J

    .line 136
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 137
    const-string/jumbo v30, "PKTopWindow"

    const-string/jumbo v31, "pk version: v1.5.0"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x18

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string/jumbo v31, "webview_multiprocess"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    .line 142
    .local v19, "multiprocess":I
    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string/jumbo v31, "webview_multiprocess"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v19    # "multiprocess":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/am/PKTopWindowUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 151
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 152
    return-void

    .line 145
    :catch_0
    move-exception v8

    .line 146
    .local v8, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v8}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    .end local v8    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityManagerService;->getSystemThreadLooper()Landroid/os/Looper;

    move-result-object v18

    .line 156
    .local v18, "looper":Landroid/os/Looper;
    if-nez v18, :cond_3

    .line 157
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 158
    return-void

    .line 162
    :cond_3
    new-instance v30, Landroid/os/Handler;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mWebviewHandler:Landroid/os/Handler;

    .line 165
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    .line 168
    new-instance v30, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;-><init>(Lcom/android/server/am/PKTopWindow;Landroid/os/Looper;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    .line 170
    new-instance v30, Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowData;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_backupserver.dat"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "e4fe8eb68682dfc830b8a877af1b259c"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/PKTopWindow;->mBackupURLEnabled:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/am/PKTopWindowSync;->getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowSync;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPKTopWindowSync:Lcom/android/server/am/PKTopWindowSync;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowSync:Lcom/android/server/am/PKTopWindowSync;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowSync;->getPKTopWindow(Lcom/android/server/am/PKTopWindow;)V

    .line 178
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "window"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/WindowManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "display"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mConfiguration:Landroid/content/res/Configuration;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "power"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/PowerManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 184
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 185
    .local v6, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mDefaultDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 186
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 187
    .local v25, "screenWidthPx":I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    .line 204
    .local v24, "screenHeightPx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v30

    if-nez v30, :cond_4

    .line 205
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 206
    return-void

    .line 209
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mDefaultDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/am/PKTopWindowUtils;->isPortraitScreen(Landroid/view/Display;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 210
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 211
    return-void

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_prefs"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 217
    new-instance v30, Lcom/android/server/am/PKTopWindowEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/PKTopWindowEvent;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacks.dat"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "localWhitePacks":Ljava/lang/String;
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "read localWhitePacks: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 225
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->uploadUserStat(Ljava/lang/String;)V

    .line 227
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 229
    return-void

    .line 233
    :cond_6
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->uploadUserStat(Ljava/lang/String;)V

    .line 236
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 238
    return-void

    .line 244
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacksswitch.dat"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 245
    .local v17, "localWhitePacksSwith":Ljava/lang/String;
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "read localWhitePacksSwith: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_b

    const-string/jumbo v30, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_freq.dat"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowCommonData;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "\\s*"

    const-string/jumbo v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "freqFromFile":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_c

    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_c

    const-string/jumbo v30, "t"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    .line 260
    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    .line 261
    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    const-string/jumbo v31, "t"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    move/from16 v30, v0

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_lastsuccess_time"

    const-wide/16 v32, 0x0

    invoke-interface/range {v30 .. v33}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 264
    .local v14, "lastSuccessTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_successtimes"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 265
    .local v26, "successTimes":J
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "lastSuccessTime: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", successTimes: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-wide/16 v30, 0x0

    cmp-long v30, v14, v30

    if-nez v30, :cond_9

    .line 269
    :cond_9
    const-wide/16 v30, 0x0

    cmp-long v30, v14, v30

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x3c

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-gez v30, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_lastsuccess_time"

    invoke-interface/range {v30 .. v31}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_successtimes"

    invoke-interface/range {v30 .. v31}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    :cond_a
    const-wide/16 v30, 0x0

    cmp-long v30, v14, v30

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x3c

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-lez v30, :cond_c

    .line 278
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "\u7cfb\u7edf\u5df2\u5f00\u673a"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/32 v34, 0xea60

    div-long v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\u5206\u949f\uff0c\u5c06\u5728"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x3c

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v32, v32, v14

    const-wide/32 v34, 0xea60

    div-long v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\u5206\u949f\u5f00\u542f\u5e7f\u544a"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->uploadUserStat(Ljava/lang/String;)V

    .line 281
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 283
    return-void

    .line 249
    .end local v9    # "freqFromFile":Ljava/lang/String;
    .end local v14    # "lastSuccessTime":J
    .end local v26    # "successTimes":J
    :cond_b
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_8

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->uploadUserStat(Ljava/lang/String;)V

    .line 251
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 253
    return-void

    .line 293
    .restart local v9    # "freqFromFile":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v30, v0

    const-string/jumbo v31, "ADVIEW_VIEWED"

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowData;->mtjPageStart(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v30, v0

    const-string/jumbo v31, "ADVIEW_CLICKED"

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowData;->mtjPageStart(Ljava/lang/String;)V

    .line 297
    new-instance v22, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "/system/media/preview/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/util/Random;

    invoke-direct/range {v31 .. v31}, Ljava/util/Random;-><init>()V

    const/16 v32, 0x5

    invoke-virtual/range {v31 .. v32}, Ljava/util/Random;->nextInt(I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ".jpg"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v22, "previewImageFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 304
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    div-int/lit8 v31, v25, 0xa

    div-int/lit8 v32, v24, 0xa

    invoke-static/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowCommonData;->getImageBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPreviewImageBitmap:Landroid/graphics/Bitmap;

    .line 310
    :cond_d
    new-instance v13, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/server/am/PKTopWindowFile;->PK_ICON_DIR:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v13, "iconFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_e

    .line 312
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 315
    :cond_e
    new-instance v30, Lcom/android/server/am/PKTopWindowViewFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowViewFactory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/server/am/PKTopWindow$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow$4;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mdJson:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_10

    .line 359
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PKTopWindowData;->requestJson(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 360
    .local v23, "requestJsonArray":[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v23, v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    .line 361
    const/16 v30, 0x1

    aget-object v30, v23, v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mdJson:Ljava/lang/String;

    .line 383
    .end local v23    # "requestJsonArray":[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->getURL()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "v1/params"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowData;->postDataSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "fullResult":Ljava/lang/String;
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "fullJson: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", fullResult: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_13

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 388
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_failtimes"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 394
    .local v5, "currentFailTimes":I
    add-int/lit8 v20, v5, 0x1

    .line 397
    .local v20, "newFailTimes":I
    const/16 v30, 0x9

    move/from16 v0, v20

    move/from16 v1, v30

    if-le v0, v1, :cond_12

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacksswitch.dat"

    const-string/jumbo v32, "0"

    invoke-static/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 399
    const-string/jumbo v30, "PKTopWindow"

    const-string/jumbo v31, "\u8bf7\u6c42\u670d\u52a1\u5668\u5931\u8d25\u5df2\u8d85\u8fc710\u6b21\uff0c\u5df2\u5173\u95ed\u5e7f\u544a"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_11
    :goto_1
    return-void

    .line 403
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_failtimes"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 408
    .end local v5    # "currentFailTimes":I
    .end local v20    # "newFailTimes":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v30, v0

    const-string/jumbo v31, "key_failtimes"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "adurl"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    .line 411
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "acturl"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_acturl:Ljava/lang/String;

    .line 412
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "secret"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_secret:Ljava/lang/String;

    .line 413
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "ad_type"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_ad_type:Ljava/lang/String;

    .line 414
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "viewTrackUrl"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_viewTrackUrl:Ljava/lang/String;

    .line 415
    const-string/jumbo v30, "data"

    const-string/jumbo v31, "clickTrackUrl"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v11, v0, v1}, Lcom/android/server/am/PKTopWindowCommonData;->getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_clickTrackUrl:Ljava/lang/String;

    .line 416
    const-string/jumbo v30, "freq"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_freq:Ljava/lang/String;

    .line 419
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_1b

    .line 420
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_freq:Ljava/lang/String;

    const-string/jumbo v31, "\\s*"

    const-string/jumbo v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, "freqFromRemote":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_15

    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_15

    const-string/jumbo v30, "t"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_15

    .line 422
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v30, :cond_18

    const/16 v30, 0x3

    :goto_2
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    .line 423
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v30, :cond_19

    const/16 v30, 0x14

    :goto_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "pk_freq.dat"

    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v30, :cond_1a

    const-string/jumbo v30, "3m20t"

    :goto_4
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 425
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "\u5e7f\u544a\u5c55\u793a\u9891\u7387\u5199\u5165pk_freq.dat: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-boolean v32, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v32, :cond_14

    const-string/jumbo v10, "3m20t"

    .end local v10    # "freqFromRemote":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_15
    :goto_5
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_16

    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v30, :cond_1c

    .line 452
    :cond_16
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_17

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_acturl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_17

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_viewTrackUrl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_17

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_clickTrackUrl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_17

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_secret:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 453
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 454
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 456
    return-void

    .line 422
    .restart local v10    # "freqFromRemote":Ljava/lang/String;
    :cond_18
    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_2

    .line 423
    :cond_19
    const-string/jumbo v30, "m"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    const-string/jumbo v31, "t"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v30, v10

    .line 424
    goto/16 :goto_4

    .line 429
    .end local v10    # "freqFromRemote":Ljava/lang/String;
    :cond_1b
    const/16 v30, 0x14

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqTimes:I

    .line 430
    const/16 v30, 0x3

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/PKTopWindow;->mFreqMin:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_freq.dat"

    const-string/jumbo v32, "3m20t"

    invoke-static/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 432
    const-string/jumbo v30, "PKTopWindow"

    const-string/jumbo v31, "\u6d4b\u8bd5\u5e7f\u544a\u5c55\u793a\u9891\u7387\u5199\u5165pk_freq.dat: 3m20t"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 439
    :cond_1c
    const-string/jumbo v30, "on"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->params_adswitch:Ljava/lang/String;

    .line 440
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adswitch:Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_16

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adswitch:Ljava/lang/String;

    const-string/jumbo v31, "1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_16

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacksswitch.dat"

    const-string/jumbo v32, "0"

    invoke-static/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 442
    const-string/jumbo v30, "PKTopWindow"

    const-string/jumbo v31, "\u670d\u52a1\u5668\u8981\u6c42\u5173\u95ed\uff0c\u5df2\u5173\u95ed\u5e7f\u544a"

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 445
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 447
    return-void

    .line 460
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mdJson:Ljava/lang/String;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/server/am/PKTopWindow;->params_secret:Ljava/lang/String;

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowCommonData;->getSignatureParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 461
    .local v21, "params_signature":Ljava/lang/String;
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    const-string/jumbo v31, "appKey"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1f

    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    const-string/jumbo v31, "adslotId"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 462
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->tuia_adurl:Ljava/lang/String;

    .line 466
    :goto_6
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_acturl:Ljava/lang/String;

    const-string/jumbo v31, "appKey"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 467
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v31, Lcom/android/server/am/PKTopWindow;->params_acturl:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/android/server/am/PKTopWindow;->tuia_acturl:Ljava/lang/String;

    .line 477
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/server/am/PKTopWindow;->tuia_adurl:Ljava/lang/String;

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v30 .. v34}, Lcom/android/server/am/PKTopWindowCommonData;->getImageBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mADUrlBitmap:Landroid/graphics/Bitmap;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mADUrlBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    if-nez v30, :cond_21

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 482
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 484
    return-void

    .line 464
    :cond_1f
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_adurl:Ljava/lang/String;

    sput-object v30, Lcom/android/server/am/PKTopWindow;->tuia_adurl:Ljava/lang/String;

    goto :goto_6

    .line 469
    :cond_20
    sget-object v30, Lcom/android/server/am/PKTopWindow;->params_acturl:Ljava/lang/String;

    sput-object v30, Lcom/android/server/am/PKTopWindow;->tuia_acturl:Ljava/lang/String;

    goto :goto_7

    .line 487
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    new-instance v31, Lcom/android/server/am/PKTopWindow$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow$5;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_26

    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v30, :cond_26

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowData:Lcom/android/server/am/PKTopWindowData;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->getURL()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "v1/whitepacks"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/android/server/am/PKTopWindowData;->postDataSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 572
    .local v29, "whitepacksJson":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/PKTopWindowCommonData;->getWhitePacksJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 573
    .local v28, "whitepacks":Ljava/lang/String;
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "whitepacksJson: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", whitepacks: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_22

    .line 576
    const-string/jumbo v30, "com.xiaomi.market,com.oneplus.market"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_27

    .line 577
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_27

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 579
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 580
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 582
    return-void

    .line 587
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacks.dat"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_23

    .line 591
    :try_start_1
    const-string/jumbo v30, "package"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 592
    .local v12, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_23

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/android/server/am/PKTopWindow$6;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/PKTopWindow$6;-><init>(Lcom/android/server/am/PKTopWindow;Ljava/lang/String;)V

    .line 605
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    .line 593
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v12, v0, v1, v2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    .end local v12    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :cond_23
    :goto_8
    const-string/jumbo v30, "freq"

    invoke-static/range {v29 .. v30}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "adFreq":Ljava/lang/String;
    const-string/jumbo v30, "on"

    invoke-static/range {v29 .. v30}, Lcom/android/server/am/PKTopWindowCommonData;->getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 615
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_24

    .line 616
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "adFreq: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_24
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_25

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "pk_whitepacksswitch.dat"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 620
    const-string/jumbo v30, "PKTopWindow"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "write suc, localWhitePacksSwith: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_27

    .line 625
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_27

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 627
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 628
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 630
    return-void

    .line 607
    .end local v4    # "adFreq":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 608
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {v7}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 636
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v28    # "whitepacks":Ljava/lang/String;
    .end local v29    # "whitepacksJson":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_27

    .line 637
    sget-boolean v30, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-nez v30, :cond_27

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 639
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 640
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 641
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 642
    return-void

    .line 131
    :cond_27
    return-void
.end method

.method private clearPKTopWindowEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1070
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindowEvent;->clearEvent()V

    .line 1073
    iput-object v1, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    .line 1069
    :cond_0
    return-void
.end method

.method private destroyADWebview()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWebviewHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 988
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWebviewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$12;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$12;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method

.method private dismissWindowsAfter(JI)V
    .locals 3
    .param p1, "remaintime"    # J
    .param p3, "windowIndex"    # I

    .prologue
    .line 1147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1148
    const-wide/16 p1, 0x0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$15;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/PKTopWindow$15;-><init>(Lcom/android/server/am/PKTopWindow;I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    return-void
.end method

.method private getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/server/am/PKTopWindow;->mBackupURLEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.fiui.org/"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/am/PKTopWindowConfig;->RELEASE_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method private removeWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1079
    :cond_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindow$14;-><init>(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1077
    return-void
.end method

.method private showFirstWindow()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowUtils;->isPortraitScreen(Landroid/view/Display;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPreview:Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    invoke-direct {p0, v0}, Lcom/android/server/am/PKTopWindow;->removeWindow(Landroid/view/View;)V

    .line 662
    iput-object v1, p0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    .line 663
    invoke-direct {p0}, Lcom/android/server/am/PKTopWindow;->clearPKTopWindowEvent()V

    .line 664
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPreviewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PKTopWindow;->mPreviewImageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    iget-object v2, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$7;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$7;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    new-instance v0, Lcom/android/server/am/PKTopWindow$8;

    iget-wide v2, p0, Lcom/android/server/am/PKTopWindow;->mRemainTime:J

    add-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/PKTopWindow$8;-><init>(Lcom/android/server/am/PKTopWindow;JJ)V

    invoke-virtual {v0}, Lcom/android/server/am/PKTopWindow$8;->start()Landroid/os/CountDownTimer;

    .line 714
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow;->mAdTextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 657
    :cond_3
    return-void
.end method

.method private showSecondWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->skipText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->skipText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    if-nez v0, :cond_3

    .line 735
    const-string/jumbo v0, "PKTopWindow"

    const-string/jumbo v1, "\u7981\u6b62\u975e\u6cd5\u521b\u5efaSecondWindow"

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWebviewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$9;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$9;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mWebviewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$10;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$10;-><init>(Lcom/android/server/am/PKTopWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowEvent:Lcom/android/server/am/PKTopWindowEvent;

    if-nez v0, :cond_4

    .line 971
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 972
    const-string/jumbo v0, "PKTopWindow"

    const-string/jumbo v1, "\u975e\u6cd5\u521b\u5efaSecondWindow\uff0c\u5df2\u79fb\u9664"

    invoke-static {v0, v1}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void

    .line 976
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$11;

    invoke-direct {v1, p0}, Lcom/android/server/am/PKTopWindow$11;-><init>(Lcom/android/server/am/PKTopWindow;)V

    .line 982
    const-wide/16 v2, 0x3e8

    .line 976
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method

.method private startFirstWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1115
    iget-object v3, p0, Lcom/android/server/am/PKTopWindow;->mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

    invoke-virtual {v3}, Lcom/android/server/am/PKTopWindowViewFactory;->createFirstWindow()Ljava/util/List;

    move-result-object v1

    .line 1116
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindow:Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    .line 1117
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->mFirstWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1133
    iget-object v3, p0, Lcom/android/server/am/PKTopWindow;->mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

    invoke-virtual {v3}, Lcom/android/server/am/PKTopWindowViewFactory;->createSkipText()Ljava/util/List;

    move-result-object v2

    .line 1134
    .local v2, "skipList":Ljava/util/List;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->skipText:Landroid/widget/TextView;

    .line 1135
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->skipTextLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 1137
    iget-object v3, p0, Lcom/android/server/am/PKTopWindow;->mViewFactory:Lcom/android/server/am/PKTopWindowViewFactory;

    invoke-virtual {v3}, Lcom/android/server/am/PKTopWindowViewFactory;->createADText()Ljava/util/List;

    move-result-object v0

    .line 1138
    .local v0, "adList":Ljava/util/List;
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->adText:Landroid/widget/TextView;

    .line 1139
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/android/server/am/PKTopWindow;->adTextLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 1114
    return-void
.end method

.method private uploadUserStat(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPKTopWindowHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindow$16;-><init>(Lcom/android/server/am/PKTopWindow;Ljava/lang/String;)V

    .line 1203
    const-wide/16 v2, 0x7d0

    .line 1183
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1167
    return-void
.end method


# virtual methods
.method public dismissWindowsAt(I)V
    .locals 2
    .param p1, "windowIndex"    # I

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    return-void

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PKTopWindow$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/PKTopWindow$13;-><init>(Lcom/android/server/am/PKTopWindow;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void
.end method

.method public setOnDissmissListener(Lcom/android/server/am/PKTopWindow$DissmissListener;)V
    .locals 0
    .param p1, "dissmissListener"    # Lcom/android/server/am/PKTopWindow$DissmissListener;

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow;->mDissmissListener:Lcom/android/server/am/PKTopWindow$DissmissListener;

    .line 1163
    return-void
.end method
