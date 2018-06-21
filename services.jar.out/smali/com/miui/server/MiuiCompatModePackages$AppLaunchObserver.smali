.class abstract Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;
.super Landroid/app/IMiuiProcessObserver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AppLaunchObserver"
.end annotation


# instance fields
.field private mRunningFgActivityProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    .line 522
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onFirstLaunch(Ljava/lang/String;)V
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 526
    if-eqz p3, :cond_0

    .line 527
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->onFirstLaunch(Ljava/lang/String;)V

    .line 525
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 537
    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;->mRunningFgActivityProcesses:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 546
    return-void
.end method
