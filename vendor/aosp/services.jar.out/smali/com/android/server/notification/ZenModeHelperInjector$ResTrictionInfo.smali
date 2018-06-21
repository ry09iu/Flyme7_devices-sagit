.class Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelperInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResTrictionInfo"
.end annotation


# static fields
.field static final defaultException:[Ljava/lang/String;

.field static final exceptionPackages:[Ljava/lang/String;


# instance fields
.field allowAudio:Z

.field allowVibrate:Z

.field appOps:Landroid/app/AppOpsManager;

.field exception:Z

.field usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.cellbroadcastreceiver"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->defaultException:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "com.android.systemui"

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "android"

    aput-object v1, v0, v3

    .line 74
    const-string/jumbo v1, "com.android.server.telecom"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "com.android.cellbroadcastreceiver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    sput-object v0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exceptionPackages:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>(ILandroid/app/AppOpsManager;)V
    .locals 1
    .param p1, "u"    # I
    .param p2, "appops"    # Landroid/app/AppOpsManager;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->usage:I

    .line 79
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowAudio:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowVibrate:Z

    .line 81
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->appOps:Landroid/app/AppOpsManager;

    .line 82
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exception:Z

    .line 77
    return-void
.end method

.method synthetic constructor <init>(ILandroid/app/AppOpsManager;Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;)V
    .locals 0
    .param p1, "u"    # I
    .param p2, "appops"    # Landroid/app/AppOpsManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;-><init>(ILandroid/app/AppOpsManager;)V

    return-void
.end method


# virtual methods
.method public applyRestriction()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->appOps:Landroid/app/AppOpsManager;

    iget v5, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->usage:I

    .line 87
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowVibrate:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 88
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exception:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exceptionPackages:[Ljava/lang/String;

    .line 86
    :goto_1
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5, v0, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->appOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->usage:I

    .line 90
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowAudio:Z

    if-eqz v0, :cond_2

    .line 91
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exception:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exceptionPackages:[Ljava/lang/String;

    .line 89
    :goto_3
    const/16 v2, 0x1c

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sget-object v3, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->defaultException:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    sget-object v0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->defaultException:[Ljava/lang/String;

    goto :goto_3
.end method

.method public hasException(Z)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->exception:Z

    .line 102
    return-object p0
.end method

.method public setRestriction(II[Ljava/lang/String;)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .locals 2
    .param p1, "code"    # I
    .param p2, "mode"    # I
    .param p3, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->appOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->usage:I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 107
    return-object p0
.end method

.method public setRestriction(ZZ)Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;
    .locals 0
    .param p1, "v"    # Z
    .param p2, "a"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowVibrate:Z

    .line 96
    iput-boolean p2, p0, Lcom/android/server/notification/ZenModeHelperInjector$ResTrictionInfo;->allowAudio:Z

    .line 97
    return-object p0
.end method
