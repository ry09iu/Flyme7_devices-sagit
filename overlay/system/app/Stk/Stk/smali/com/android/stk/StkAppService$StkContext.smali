.class public Lcom/android/stk/StkAppService$StkContext;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StkContext"
.end annotation


# instance fields
.field protected lastSelectedItem:Ljava/lang/String;

.field protected launchBrowser:Z

.field private mActivityInstance:Landroid/app/Activity;

.field protected mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mClearSelectItem:Z

.field protected mCmdInProgress:Z

.field protected mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field protected mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDialogInstance:Landroid/app/Activity;

.field private mDisplayTextDlgIsVisibile:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mIsDialogPending:Z

.field protected mIsInputPending:Z

.field protected mIsMenuPending:Z

.field private mMainActivityInstance:Landroid/app/Activity;

.field protected mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field protected mMenuIsVisible:Z

.field protected mMenuState:I

.field protected mOpCode:I

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field protected mSetupMenuState:I

.field private mSlotId:I

.field protected mStkServiceState:I

.field protected responseNeeded:Z

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method static synthetic -get0(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/stk/StkAppService$StkContext;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mMainActivityInstance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/stk/StkAppService$StkContext;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mMainActivityInstance:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/stk/StkAppService$StkContext;I)I
    .locals 0

    iput p1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    return p1
.end method

.method protected constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/stk/StkAppService;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 111
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 112
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 113
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 114
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 115
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService$StkContext;->responseNeeded:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 121
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 122
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    .line 123
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 124
    iput v3, p0, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    .line 125
    iput v3, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    .line 126
    iput v2, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    .line 127
    iput v3, p0, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    .line 128
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    .line 129
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    .line 130
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mMainActivityInstance:Landroid/app/Activity;

    .line 131
    iput v2, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    .line 132
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 133
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mClearSelectItem:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextDlgIsVisibile:Z

    .line 135
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 136
    iput-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 109
    return-void
.end method


# virtual methods
.method final declared-synchronized getPendingActivityInstance()Landroid/app/Activity;
    .locals 2

    .prologue
    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPendingActivityInstance act : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mActivityInstance:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized getPendingDialogInstance()Landroid/app/Activity;
    .locals 2

    .prologue
    monitor-enter p0

    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPendingDialogInstance act : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->mDialogInstance:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setMainActivityInstance(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMainActivityInstance act : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0xa

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-wrap5(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 155
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setPendingActivityInstance(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPendingActivityInstance act : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0x8

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-wrap5(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 137
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setPendingDialogInstance(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPendingDialogInstance act : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/stk/StkAppService$StkContext;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSlotId:I

    const/16 v2, 0x9

    invoke-static {v0, v2, v1, p1}, Lcom/android/stk/StkAppService;->-wrap5(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 146
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
