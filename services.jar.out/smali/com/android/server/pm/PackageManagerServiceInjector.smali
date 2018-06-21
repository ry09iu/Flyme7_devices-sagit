.class Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceInjector$1;,
        Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;,
        Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    }
.end annotation


# static fields
.field private static final APP_LIST_FILE:Ljava/lang/String; = "/system/etc/install_app_filter.xml"

.field private static final BLOCK_APPS:[[Ljava/lang/String;

.field static DEBUG_CHANGE:Z = false

.field static final DELETE_FAILED_FORBIDED_BY_MIUI:I = -0x3e8

.field static final INSTALL_IGNORE_PACKAGE:I = -0x3e8

.field private static final IS_X7_LTE_ALL:Z

.field private static final MSG_INSTALL_APP_GOON:I = 0x0

.field private static final PACKAGE_INSTALLER_NAME:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ADD_APPS:Ljava/lang/String; = "add_apps"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_IGNORE_APPS:Ljava/lang/String; = "ignore_apps"

.field static mHandler:Landroid/os/Handler;

.field private static sAllowPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field static sCrossXSpaceIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsPlatformSignature:Ljava/lang/Boolean;

.field private static sNotDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPrivateXSpaceIntentUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShellCheckPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSilentlyUninstallPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sXSpaceFriendlyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateSystemPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 113
    sput-boolean v3, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    .line 135
    const-string/jumbo v0, "X7-LTE-ALL"

    const-string/jumbo v1, "persist.radio.modem"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    .line 141
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/TSMClient"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/NfcNci"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/priv-app/SmartcardService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    const-string/jumbo v0, "support_fm"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/FM.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/FM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/VirtualSim.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v1, "/system/app/VirtualSim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->readIgnoreApks()V

    .line 158
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string/jumbo v1, "com.sogou.inputmethod.mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.discover"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.gamecenter.pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    .line 171
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_5

    .line 769
    :goto_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    .line 816
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo.action.sdkidentity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sina.weibo.remotessoservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    .line 836
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    .line 846
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.whatsapp.provider.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    .line 870
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    .line 892
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.BACKUP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 908
    const-string/jumbo v0, "ro.secureboot.devicelock"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    const-string/jumbo v0, "unlocked"

    const-string/jumbo v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 907
    if-eqz v0, :cond_4

    .line 910
    :cond_3
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    .line 941
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.backup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.managedprovisioning"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.cloudbackup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.analytics"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.provision"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.discover"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.securespaces.android.ssm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.mihomemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facebook.system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    new-array v0, v5, [[Ljava/lang/String;

    .line 1142
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "com.jeejen.family.miui"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 1143
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.miui.home"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.android.mms"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.contacts"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    .line 1141
    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    .line 106
    return-void

    .line 172
    :cond_5
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.dmregservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    .line 249
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    return-void
.end method

.method static addIgnorePackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 259
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-void
.end method

.method static addLostPackagePropertyForOta(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 722
    const-string/jumbo v0, "com.google.android.setupwizard"

    .line 723
    .local v0, "SetupWizardPkg":Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    .line 725
    if-eqz p0, :cond_2

    .line 726
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 727
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 728
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 729
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 721
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 732
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "pm Argument is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 735
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "context Argument is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/Settings;Z)V
    .locals 5
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "multipleUids"    # Z

    .prologue
    const/16 v1, 0x2710

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 273
    const-string/jumbo v2, "android.uid.backup"

    .line 274
    if-eqz p1, :cond_1

    const/16 v0, 0x2648

    .line 272
    :goto_0
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 277
    const-string/jumbo v2, "android.uid.theme"

    .line 278
    if-eqz p1, :cond_2

    const/16 v0, 0x2649

    .line 276
    :goto_1
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 281
    const-string/jumbo v2, "android.uid.updater"

    .line 282
    if-eqz p1, :cond_3

    const/16 v0, 0x264a

    .line 280
    :goto_2
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 285
    const-string/jumbo v0, "android.uid.finddevice"

    .line 286
    if-eqz p1, :cond_0

    const/16 v1, 0x2652

    .line 284
    :cond_0
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 271
    return-void

    :cond_1
    move v0, v1

    .line 274
    goto :goto_0

    :cond_2
    move v0, v1

    .line 278
    goto :goto_1

    :cond_3
    move v0, v1

    .line 282
    goto :goto_2
.end method

.method static addUpdateSystemApp(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 1209
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;Z)V

    .line 443
    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "forceDexOpt"    # Z
    .param p4, "deferDexOpt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    .line 433
    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "scannedPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "forceDexOpt"    # Z
    .param p4, "deferDexOpt"    # Z
    .param p5, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "packagesForUser":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageSetting;>;"
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 438
    return-void
.end method

.method public static beforeSystemReady(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1113
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->init(Landroid/content/Context;)V

    .line 1115
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->installBlockApps(Landroid/content/Context;)V

    .line 1116
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->hideOrDisplayApp()V

    .line 1112
    return-void
.end method

.method static checkAndResolveFlags(Landroid/content/Intent;Ljava/lang/String;II)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 821
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    or-int/lit16 p2, p2, 0x2000

    .line 827
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return p2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 11
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 744
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "callpkg":Ljava/lang/String;
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v7, :cond_0

    const-string/jumbo v7, "com.xiaomi.market"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eqz v7, :cond_1

    .line 746
    :cond_0
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callingpackage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return v10

    .line 749
    :cond_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 750
    .local v5, "param":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "apkPath":Ljava/lang/String;
    const-string/jumbo v7, "security"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService;

    .line 752
    .local v6, "service":Lcom/miui/server/SecurityManagerService;
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "check if need preinstall apps"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :try_start_0
    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService;->getGoogleBaseService()Lmiui/security/ISecurityCallback;

    move-result-object v3

    .line 755
    .local v3, "ism":Lmiui/security/ISecurityCallback;
    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Lmiui/security/ISecurityCallback;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 756
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pending installation for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v4, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;-><init>(Landroid/os/Handler;Landroid/os/Message;)V

    .line 758
    .local v4, "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Lcom/miui/server/SecurityManagerService;->registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 759
    invoke-interface {v3}, Lmiui/security/ISecurityCallback;->preInstallApps()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const/4 v7, 0x1

    return v7

    .line 762
    .end local v3    # "ism":Lmiui/security/ISecurityCallback;
    .end local v4    # "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "googlebase remote error\uff01"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return v10
.end method

.method static checkGetInstalledAppsPermission(IILjava/lang/String;)Z
    .locals 8
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1254
    sget-boolean v3, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v3, :cond_0

    .line 1255
    return v6

    .line 1258
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    .line 1259
    return v6

    .line 1262
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1263
    .local v0, "callingAppId":I
    const/16 v3, 0x2710

    if-ge v0, v3, :cond_2

    .line 1264
    return v6

    .line 1267
    :cond_2
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "callingPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1269
    return v6

    .line 1273
    :cond_3
    :try_start_0
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v3, :cond_4

    .line 1274
    const-string/jumbo v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    sput-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1276
    :cond_4
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v4, 0x2726

    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1277
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUILOG- Permission Denied "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    return v7

    .line 1280
    :catch_0
    move-exception v2

    .line 1281
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkGetInstalledAppsPermission"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    return v6
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 356
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v1

    .line 356
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 359
    const-string/jumbo v1, "com.jeejen.family.miui"

    const-string/jumbo v2, "com.jeejen.home.launcher.Launcher"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 361
    :cond_3
    const-string/jumbo v1, "com.miui.home"

    const-string/jumbo v2, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 363
    :cond_4
    const-string/jumbo v1, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 364
    :cond_5
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 363
    if-eqz v1, :cond_7

    .line 365
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 367
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_6

    .line 368
    return-object v10

    .line 372
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 373
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 374
    if-eqz v10, :cond_2

    .line 375
    return-object v10

    .line 378
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    const-string/jumbo v1, "mimarket"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "market"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 379
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 378
    if-eqz v1, :cond_a

    .line 381
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 382
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_2

    .line 383
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "host":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string/jumbo v1, "details"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "search"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    :cond_9
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 386
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_2

    .line 387
    return-object v10

    .line 392
    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_a
    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_d

    .line 395
    :cond_b
    const-string/jumbo v9, "com.google.android.packageinstaller"

    .line 396
    .local v9, "realPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 398
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "realPkgName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v9    # "realPkgName":Ljava/lang/String;
    :cond_c
    monitor-exit v2

    .line 404
    :goto_1
    const-string/jumbo v1, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 396
    .end local v9    # "realPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 402
    :cond_d
    const-string/jumbo v9, "com.miui.packageinstaller"

    .restart local v9    # "realPkgName":Ljava/lang/String;
    goto :goto_1
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    return v0
.end method

.method static checkPackageState(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 6
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1336
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1337
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 1339
    return v2

    .line 1341
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 1342
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-boolean v4, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Landroid/content/pm/PackageUserState;->hidden:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    monitor-exit v3

    return v2

    .line 1343
    :cond_2
    :try_start_2
    iget v4, v1, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1344
    iget v4, v1, Landroid/content/pm/PackageUserState;->enabled:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 1336
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "state":Landroid/content/pm/PackageUserState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static cleanupUpdateFailedSystemPackage(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1226
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v1

    .line 1226
    if-eqz v1, :cond_0

    .line 1228
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1229
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->cleanupUpdateFailedSystemPackage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)V

    .line 1225
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    return-void
.end method

.method static clearUpdateSystemApps()V
    .locals 1

    .prologue
    .line 1234
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1233
    return-void
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p0, "origin"    # Ljava/io/File;
    .param p1, "codeFile"    # Ljava/io/File;

    .prologue
    .line 681
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    .line 680
    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 567
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x1

    .line 568
    .local v2, "success":Z
    if-eqz v1, :cond_2

    .line 569
    const/4 v3, 0x0

    array-length v4, v1

    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 570
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 571
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 574
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v2, 0x0

    .line 569
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return v2
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 582
    return-void
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "originName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I

    .prologue
    .line 685
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerProxy;->doRenameApk(Ljava/io/File;Ljava/lang/String;I)V

    .line 684
    return-void
.end method

.method private static existsApkFileUnderDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 596
    .local v0, "apkStuff":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 597
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 598
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    const/4 v2, 0x1

    return v2

    .line 597
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return v3
.end method

.method static filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V

    .line 830
    return-void
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 318
    const-string/jumbo v3, "CN"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    return-object v4

    .line 321
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 324
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    .line 325
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ri$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v3, "com.android.browser"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    iget-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_1

    .line 328
    move-object v0, v1

    .line 333
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "ri$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method static getInstalledApplicationsWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1287
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1288
    :cond_0
    return-object p1

    .line 1291
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1292
    .local v2, "uid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1293
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1294
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 1295
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1292
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1298
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-object p1
.end method

.method static getInstalledPackagesWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1303
    :cond_0
    return-object p1

    .line 1306
    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1307
    .local v2, "uid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1308
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1309
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 1310
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1307
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1313
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-object p1
.end method

.method static getInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 425
    const-string/jumbo v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    return-object v1

    .line 428
    :cond_0
    return-object p1
.end method

.method static getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ri$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v3, "com.xiaomi.market"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_0

    .line 344
    move-object v0, v1

    .line 348
    .end local v0    # "ret":Landroid/content/pm/ResolveInfo;
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 562
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method static getSystemPackageFilePath(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1217
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v0

    .line 1217
    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    return-object v0

    .line 1222
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v0, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 293
    .local v0, "match":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 294
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "ret":Landroid/content/pm/ResolveInfo;
    .local v4, "ri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 295
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v5, :cond_2

    .line 314
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v2

    .line 299
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget v5, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v0, :cond_4

    .line 300
    iget v0, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 301
    const/4 v2, 0x0

    .line 310
    :cond_3
    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    move-object v2, v3

    .local v2, "ret":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 302
    .end local v2    # "ret":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget v5, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v0, :cond_0

    .line 305
    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private static hideOrDisplayApp()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1120
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v8, v10, :cond_0

    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_1

    .line 1119
    .local v0, "appHide":Z
    .local v1, "ignoreApkPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "phm":Landroid/content/pm/PackageHideManager;
    .local v5, "pkgName$iterator":Ljava/util/Iterator;
    .local v6, "pms":Lcom/android/server/pm/PackageManagerService;
    .local v7, "settings":Lcom/android/server/pm/Settings;
    :cond_0
    return-void

    .line 1120
    .end local v0    # "appHide":Z
    .end local v1    # "ignoreApkPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "phm":Landroid/content/pm/PackageHideManager;
    .end local v5    # "pkgName$iterator":Ljava/util/Iterator;
    .end local v6    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v7    # "settings":Lcom/android/server/pm/Settings;
    :cond_1
    sget-boolean v8, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v8, :cond_0

    .line 1121
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    .line 1122
    .restart local v6    # "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v8

    invoke-static {v8}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v3

    .line 1123
    .restart local v3    # "phm":Landroid/content/pm/PackageHideManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPkgNameList()Ljava/util/List;

    move-result-object v1

    .line 1124
    .restart local v1    # "ignoreApkPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 1125
    return-void

    .line 1127
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    .line 1128
    .restart local v0    # "appHide":Z
    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appHide: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1130
    .restart local v7    # "settings":Lcom/android/server/pm/Settings;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1131
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v10, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1132
    :try_start_0
    iget-object v8, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1133
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_3

    .line 1134
    if-eqz v0, :cond_4

    move v8, v9

    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v10

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 1131
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static ignorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static initTempInitApk(Z)V
    .locals 4
    .param p0, "isFirstBoot"    # Z

    .prologue
    .line 659
    invoke-static {p0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPathList()Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "ignorePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "path$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 662
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->addIgnoreApk(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "path$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static installBlockApps(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1147
    const-string/jumbo v5, "support_oldman_mode"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1148
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 1149
    .local v3, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1150
    .local v4, "settings":Lcom/android/server/pm/Settings;
    const/4 v0, 0x0

    .local v0, "mode":I
    :goto_0
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 1151
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v7, v5, v0

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v2, v7, v5

    .line 1152
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v9, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1153
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 1154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1151
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1150
    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "mode":I
    .end local v3    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v4    # "settings":Lcom/android/server/pm/Settings;
    :cond_2
    return-void
.end method

.method private static installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V
    .locals 3
    .param p0, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p1, "code"    # I
    .param p2, "session"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 1080
    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    .line 1082
    :try_start_0
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, p3, v2}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1087
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, p1, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1079
    :cond_1
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .local v0, "re":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static isAllowedDisable(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 879
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 880
    :cond_0
    return v1

    .line 882
    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static isAllowedHideApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .locals 5
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 926
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 927
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 928
    .local v1, "isSystem":Z
    :goto_0
    const-string/jumbo v2, "com.android.browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.android.chrome"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    :cond_1
    const/4 v1, 0x0

    .line 931
    :cond_2
    if-eqz p2, :cond_3

    if-nez v1, :cond_5

    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_5

    .line 935
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 927
    .end local v1    # "isSystem":Z
    :cond_4
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .restart local v1    # "isSystem":Z
    goto :goto_0

    .line 932
    :cond_5
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MIUILOG- Not Support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return v4
.end method

.method public static isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originPath"    # Ljava/io/File;
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 974
    if-nez p1, :cond_0

    .line 975
    return v5

    .line 977
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z

    move-result v0

    return v0
.end method

.method static isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;

    .prologue
    .line 966
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 967
    :catch_0
    move-exception v6

    .line 970
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    const/4 v0, 0x1

    return v0
.end method

.method private static isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originPath"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "session"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 982
    move-object/from16 v8, p3

    .line 983
    .local v8, "pkg":Ljava/lang/String;
    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 984
    const/4 v9, -0x1

    .line 986
    .local v9, "result":I
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/commands/pm/PmInjector;->installVerify(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 990
    :goto_0
    const/4 v14, 0x2

    if-eq v9, v14, :cond_0

    .line 991
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-static {v9}, Lcom/android/commands/pm/PmInjector;->statusToString(I)Ljava/lang/String;

    move-result-object v7

    .line 993
    .local v7, "msg":Ljava/lang/String;
    const/16 v14, -0x6f

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v14, v1, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    .line 994
    const/4 v14, 0x0

    return v14

    .line 987
    .end local v7    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 988
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Error"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 998
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v9    # "result":I
    :cond_0
    if-eqz p2, :cond_1

    sget-boolean v14, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v14, :cond_2

    .line 999
    :cond_1
    const/4 v14, 0x1

    return v14

    .line 1002
    :cond_2
    if-nez p5, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    if-ne v14, v15, :cond_3

    .line 1003
    const/4 v14, 0x1

    return v14

    .line 1006
    :cond_3
    if-nez p5, :cond_4

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {v14}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    .line 1010
    :cond_4
    const-string/jumbo v14, "com.android.vending"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1011
    const-string/jumbo v14, "com.xiaomi.market"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1010
    if-nez v14, :cond_5

    .line 1012
    const-string/jumbo v14, "com.xiaomi.gamecenter"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1010
    if-nez v14, :cond_5

    .line 1013
    const-string/jumbo v14, "com.miui.securitycenter"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1010
    if-eqz v14, :cond_6

    .line 1014
    :cond_5
    const/4 v14, 0x1

    return v14

    .line 1018
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->isReleaseRom(Landroid/content/pm/PackageManager;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1019
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v14, "com.miui.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v12, "verification":Landroid/content/Intent;
    const-string/jumbo v14, "com.miui.securitycenter"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const/high16 v14, 0x10000000

    invoke-virtual {v12, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1022
    const-string/jumbo v14, "path"

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string/jumbo v14, "installerPackage"

    invoke-virtual {v12, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v14, -0x64

    invoke-direct {v10, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1025
    .local v10, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v14, 0x1

    invoke-direct {v3, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1026
    .local v3, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$2;

    invoke-direct {v6, v10, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1034
    .local v6, "messenger":Landroid/os/IMessenger$Stub;
    const-string/jumbo v14, "observer"

    invoke-virtual {v12, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 1035
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1036
    .local v11, "userId":I
    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 1037
    const/4 v11, 0x0

    .line 1039
    :cond_7
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 1040
    .local v13, "verifierUser":Landroid/os/UserHandle;
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Package verify start"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string/jumbo v14, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1043
    const-wide/16 v14, 0x258

    :try_start_1
    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1047
    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1048
    .local v2, "code":I
    const/16 v14, -0x64

    if-ne v2, v14, :cond_8

    .line 1049
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_VERIFICATION time out  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_8
    if-nez v2, :cond_9

    .line 1052
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_VERIFICATION_FAILURE  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string/jumbo v14, "FAILED_VERIFICATION_FAILURE MIUI"

    const/16 v15, -0x16

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    .line 1054
    const/4 v14, 0x0

    return v14

    .line 1057
    .end local v2    # "code":I
    .end local v3    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "messenger":Landroid/os/IMessenger$Stub;
    .end local v10    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v11    # "userId":I
    .end local v12    # "verification":Landroid/content/Intent;
    .end local v13    # "verifierUser":Landroid/os/UserHandle;
    :cond_9
    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-eq v0, v14, :cond_a

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1058
    :cond_a
    const/4 v14, 0x1

    return v14

    .line 1061
    :cond_b
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- Install Reject uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string/jumbo v14, "Permission Denied"

    const/16 v15, -0x6e

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    .line 1063
    const/4 v14, 0x0

    return v14

    .line 1044
    .restart local v3    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v6    # "messenger":Landroid/os/IMessenger$Stub;
    .restart local v10    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v11    # "userId":I
    .restart local v12    # "verification":Landroid/content/Intent;
    .restart local v13    # "verifierUser":Landroid/os/UserHandle;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_1
.end method

.method static isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1332
    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method static isCallerAllowedToSilentlyUninstall(ILcom/android/server/pm/PackageManagerService;)Z
    .locals 6
    .param p0, "callingUid"    # I
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1238
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "pkgs":[Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1241
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    aget-object v5, v2, v0

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1242
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1243
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_0

    .line 1244
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 1240
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 1250
    const/4 v3, 0x0

    return v3

    .line 1239
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z
    .locals 2
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 591
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isReleaseRom(Landroid/content/pm/PackageManager;)Z
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const-class v7, Lcom/android/server/pm/PackageManagerServiceInjector;

    monitor-enter v7

    .line 1092
    :try_start_0
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 1093
    const/4 v1, 0x0

    .line 1095
    .local v1, "isPlatform":Z
    :try_start_1
    const-string/jumbo v6, "android"

    const/16 v8, 0x40

    invoke-virtual {p0, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1096
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1097
    .local v4, "platformSignature":[Landroid/content/pm/Signature;
    new-instance v3, Landroid/content/pm/Signature;

    const-string/jumbo v6, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v3, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v3, "platformSig":Landroid/content/pm/Signature;
    const/4 v6, 0x0

    array-length v8, v4

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v5, v4, v6

    .line 1099
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 1100
    const/4 v1, 0x1

    .line 1107
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "platformSig":Landroid/content/pm/Signature;
    .end local v4    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    .line 1109
    .end local v1    # "isPlatform":Z
    :cond_1
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    .line 1098
    .restart local v1    # "isPlatform":Z
    .restart local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "platformSig":Landroid/content/pm/Signature;
    .restart local v4    # "platformSignature":[Landroid/content/pm/Signature;
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1104
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "platformSig":Landroid/content/pm/Signature;
    .end local v4    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isPlatform":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method static isSecuritySpace(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p0, "um"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 1162
    invoke-static {p0, p1}, Lcom/miui/server/SecSpaceManagerService;->isSecuritySpace(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v0

    return v0
.end method

.method static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v0, 0x0

    .line 694
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isTrueSystemPackage(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "codePath"    # Ljava/lang/String;

    .prologue
    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, "ret":Z
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 709
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    .line 710
    const/4 v1, 0x1

    .end local v1    # "ret":Z
    :goto_0
    monitor-exit v3

    .line 716
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " a true system package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    return v1

    .line 712
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "ret":Z
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "ret":Z
    goto :goto_0

    .line 707
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v1, "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 717
    .end local v1    # "ret":Z
    :cond_3
    const-string/jumbo v2, "not"

    goto :goto_1
.end method

.method static isUpdateSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1213
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static logComponentStateChanged(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1068
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    if-eqz v0, :cond_0

    .line 1069
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "component state changed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1070
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1072
    const-string/jumbo v2, " new state : "

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1072
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1073
    const-string/jumbo v2, " calling uid: "

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1073
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1074
    const-string/jumbo v2, " calling pid: "

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1074
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1075
    if-eqz p5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " calling package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    return-void

    .line 1070
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1071
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 1075
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method static markCoreAppDexopt(JJ)V
    .locals 4
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 1405
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setCoreAppDexopt(J)V

    .line 1404
    return-void
.end method

.method static markPmsScanDetail(Lcom/android/server/pm/PackageManagerService;)V
    .locals 9
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1349
    const/4 v4, 0x0

    .line 1350
    .local v4, "thirdAppCount":I
    const/4 v3, 0x0

    .line 1351
    .local v3, "systemAppCount":I
    const/4 v0, 0x0

    .line 1353
    .local v0, "persistAppCount":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1354
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1355
    .local v2, "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1358
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 1359
    add-int/lit8 v3, v3, 0x1

    .line 1360
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1361
    add-int/lit8 v4, v4, 0x1

    .line 1367
    :cond_1
    :goto_1
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_0

    .line 1368
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v6, :cond_2

    .line 1369
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 1370
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    monitor-exit v7

    .line 1375
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmiui/mqsas/sdk/BootEventManager;->setSystemAppCount(I)V

    .line 1376
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lmiui/mqsas/sdk/BootEventManager;->setThirdAppCount(I)V

    .line 1377
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/BootEventManager;->setPersistAppCount(I)V

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    .line 1380
    .local v5, "type":I
    :goto_2
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmiui/mqsas/sdk/BootEventManager;->setBootType(I)V

    .line 1348
    return-void

    .line 1353
    .end local v2    # "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1379
    .restart local v2    # "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x3

    .restart local v5    # "type":I
    goto :goto_2

    .end local v5    # "type":I
    :cond_6
    const/4 v5, 0x1

    .restart local v5    # "type":I
    goto :goto_2
.end method

.method public static onPackageDeleted(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I

    .prologue
    .line 1190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 1189
    return-void
.end method

.method public static onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 1194
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1195
    return-void

    .line 1197
    :cond_0
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    .line 1198
    .local v0, "event":Lmiui/mqsas/sdk/event/PackageEvent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    .line 1200
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    .line 1201
    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    .line 1203
    if-eqz p2, :cond_1

    .end local p2    # "retMsg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    .line 1204
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-onPackageDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 1193
    return-void

    .line 1203
    .restart local p2    # "retMsg":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method public static onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;
    .param p3, "update"    # Z
    .param p4, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p5, "installerPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1172
    if-ne p1, v1, :cond_0

    .line 1173
    return-void

    .line 1175
    :cond_0
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    .line 1176
    .local v0, "event":Lmiui/mqsas/sdk/event/PackageEvent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    .line 1178
    if-eqz p3, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    .line 1179
    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    .line 1181
    if-eqz p2, :cond_2

    .end local p2    # "retMsg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    .line 1182
    if-eqz p4, :cond_3

    iget v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionCode(I)V

    .line 1183
    if-eqz p4, :cond_4

    iget-object v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionName(Ljava/lang/String;)V

    .line 1184
    if-eqz p5, :cond_5

    .end local p5    # "installerPkgName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, p5}, Lmiui/mqsas/sdk/event/PackageEvent;->setInstallerPkgName(Ljava/lang/String;)V

    .line 1185
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-onPackageInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 1171
    return-void

    .line 1181
    .restart local p2    # "retMsg":Ljava/lang/String;
    .restart local p5    # "installerPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo p2, ""

    goto :goto_0

    .line 1182
    .end local p2    # "retMsg":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1183
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_2

    .line 1184
    :cond_5
    const-string/jumbo p5, ""

    goto :goto_3
.end method

.method public static onPackageInstalled(Ljava/lang/String;IZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "update"    # Z
    .param p3, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "installerPkgName"    # Ljava/lang/String;

    .prologue
    .line 1167
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "curPkgSettings"    # Lcom/android/server/pm/Settings;

    .prologue
    const/4 v5, 0x0

    .line 448
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 450
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v4, v6, :cond_0

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v4, :cond_0

    .line 451
    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v6, "com.miui.packageinstaller"

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 452
    .local v3, "miuiInstaller":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v6, "com.google.android.packageinstaller"

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 453
    .local v1, "googleInstaller":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v6, "com.android.packageinstaller"

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 454
    .local v0, "androidInstaller":Lcom/android/server/pm/PackageSetting;
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 455
    .local v2, "isCtsBuild":Z
    if-eqz v3, :cond_2

    .line 456
    if-eqz v2, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 458
    :cond_2
    if-eqz v1, :cond_3

    .line 459
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 461
    :cond_3
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_0

    .line 456
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method static preCheckUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 916
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string/jumbo v0, "persist.security.adbinput"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    :cond_0
    const/16 v0, -0x64

    return v0

    .line 918
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUILOG- permission\u3000denied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, -0x1

    return v0
.end method

.method static protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;I)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Ljava/lang/Object;
    .param p3, "callingUid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 476
    const/4 v7, 0x0

    .line 477
    .local v7, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 478
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "p":Landroid/content/pm/PackageParser$Package;
    check-cast v7, Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v7, "p":Landroid/content/pm/PackageParser$Package;
    monitor-exit v9

    .line 481
    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1

    .line 482
    :cond_0
    return v10

    .line 477
    .end local v7    # "p":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 486
    .restart local v7    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 487
    if-eqz p3, :cond_2

    .line 488
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_2

    .line 489
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v10}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    .line 486
    if-eqz v8, :cond_2

    .line 490
    sget-boolean v8, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v8, :cond_3

    .line 502
    :cond_2
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_8

    .line 503
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v8, :cond_8

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v9, "com.miui.sdk.module"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 502
    if-eqz v8, :cond_8

    .line 505
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 506
    const-string/jumbo v9, "keyguard"

    .line 505
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 507
    .local v5, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 511
    const/16 v8, -0x3e8

    .line 509
    :try_start_1
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 516
    return v11

    .line 492
    .end local v5    # "km":Landroid/app/KeyguardManager;
    :cond_3
    :try_start_2
    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MIUILOG- can\'t uninstall pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " callingUid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 v8, -0x3e8

    .line 493
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 499
    :goto_0
    return v11

    .line 512
    .restart local v5    # "km":Landroid/app/KeyguardManager;
    :catch_0
    move-exception v3

    .line 513
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 514
    return v10

    .line 520
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 521
    .local v0, "am":Landroid/app/IActivityManager;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;-><init>()V

    .line 522
    .local v6, "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.miui.action.PACKAGE_DELETE_CONFIRM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string/jumbo v8, "extra_pkgname"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v8, "observer"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 526
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    :try_start_3
    const-string/jumbo v8, "pm"

    invoke-static {v0, v8, v4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 531
    return v10

    .line 533
    :cond_5
    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 534
    :goto_1
    :try_start_4
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_6

    .line 536
    :try_start_5
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 537
    :catch_1
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 539
    return v10

    .line 542
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_8
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    if-nez v8, :cond_7

    .line 547
    const/16 v8, -0x3e8

    .line 544
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v6

    .line 548
    return v11

    :cond_7
    monitor-exit v6

    .line 557
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "km":Landroid/app/KeyguardManager;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :cond_8
    return v10

    .line 533
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "km":Landroid/app/KeyguardManager;
    .restart local v6    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :catchall_1
    move-exception v8

    monitor-exit v6

    throw v8
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 551
    :catch_2
    move-exception v3

    .line 552
    .restart local v3    # "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 553
    return v10

    .line 496
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "e1":Landroid/os/RemoteException;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "km":Landroid/app/KeyguardManager;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :catch_3
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static readIgnoreApks()V
    .locals 17

    .prologue
    .line 177
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "custVariant":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    const/4 v7, 0x0

    .line 183
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/etc/install_app_filter.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 185
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 186
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v15, "UTF-8"

    invoke-interface {v11, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 187
    const/4 v13, 0x0

    .line 188
    .local v13, "tagName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "appPath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 190
    .local v9, "is_add_apps":Z
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .line 191
    .end local v0    # "appPath":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .local v14, "type":I
    :goto_0
    const/4 v15, 0x1

    if-eq v15, v14, :cond_c

    .line 192
    packed-switch v14, :pswitch_data_0

    .line 231
    :cond_1
    :goto_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "tagName":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-lez v15, :cond_2

    .line 196
    const/4 v15, 0x0

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    const-string/jumbo v15, "add_apps"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 199
    const/4 v9, 0x1

    goto :goto_1

    .line 200
    :cond_3
    const-string/jumbo v15, "ignore_apps"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 201
    const/4 v9, 0x0

    goto :goto_1

    .line 202
    :cond_4
    const-string/jumbo v15, "app"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 203
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "ss":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 205
    .local v10, "is_current_cust":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v15, v12

    if-ge v6, v15, :cond_5

    .line 206
    aget-object v15, v12, v6

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 207
    const/4 v10, 0x1

    .line 211
    :cond_5
    if-eqz v9, :cond_6

    if-eqz v10, :cond_7

    :cond_6
    if-nez v9, :cond_a

    if-eqz v10, :cond_a

    .line 212
    :cond_7
    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 234
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "i":I
    .end local v9    # "is_add_apps":Z
    .end local v10    # "is_current_cust":Z
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "ss":[Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v7, v8

    .line 237
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :goto_3
    if-eqz v7, :cond_8

    .line 239
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 176
    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    :goto_4
    return-void

    .line 205
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "i":I
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "is_add_apps":Z
    .restart local v10    # "is_current_cust":Z
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "ss":[Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 213
    :cond_a
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    .line 214
    :try_start_3
    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 215
    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 235
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "i":I
    .end local v9    # "is_add_apps":Z
    .end local v10    # "is_current_cust":Z
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "ss":[Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v3

    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v7, v8

    .line 237
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :goto_5
    if-eqz v7, :cond_8

    .line 239
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 240
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "is_add_apps":Z
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :pswitch_1
    :try_start_5
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "end_tag_name":Ljava/lang/String;
    const-string/jumbo v15, "add_apps"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 223
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 224
    :cond_b
    const-string/jumbo v15, "ignore_apps"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v15

    if-eqz v15, :cond_1

    .line 225
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 237
    .end local v4    # "end_tag_name":Ljava/lang/String;
    :cond_c
    if-eqz v8, :cond_d

    .line 239
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_d
    :goto_6
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 240
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "is_add_apps":Z
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    :catch_4
    move-exception v2

    goto :goto_4

    .line 236
    .end local v2    # "e":Ljava/io/IOException;
    .local v7, "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v15

    .line 237
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :goto_7
    if-eqz v7, :cond_e

    .line 239
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 236
    :cond_e
    :goto_8
    throw v15

    .line 240
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 236
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    goto :goto_7

    .line 234
    .local v7, "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 235
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_5

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static removeFromPreinstallList(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1317
    invoke-static {p0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1322
    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    monitor-exit v2

    .line 1324
    return-void

    :cond_1
    monitor-exit v2

    .line 1328
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 1316
    return-void

    .line 1321
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 467
    :cond_0
    return-void
.end method

.method static resolveUserId(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 851
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 853
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 851
    if-eqz v1, :cond_1

    .line 854
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 854
    if-eqz v1, :cond_0

    .line 857
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 854
    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p2}, Lmiui/securityspace/CrossUserUtils;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 859
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 861
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0, p2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 862
    const/4 v1, 0x0

    return v1

    .line 864
    :cond_1
    return p2
.end method

.method static setExtraRestoreconFlag()V
    .locals 0

    .prologue
    .line 886
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->setExtraRestoreconFlag()V

    .line 885
    return-void
.end method

.method private static shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/pm/Settings;
    .param p2, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Settings;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    return v3

    .line 612
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->existsApkFileUnderDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 617
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".+-[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 621
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    return v3

    .line 631
    :cond_2
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static tryDeleteInvalidOrDuplicatePackages(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    if-nez v6, :cond_2

    .line 638
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 640
    .local v5, "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 641
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/data/app"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v2, "appDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 646
    .local v1, "apks":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 647
    const/4 v6, 0x0

    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 648
    .local v0, "apk":Ljava/io/File;
    invoke-static {v5, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Try to delete invalid or duplicate package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 649
    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 651
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 647
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 635
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "apks":[Ljava/io/File;
    .end local v2    # "appDir":Ljava/io/File;
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "keepedFilePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method static updatePsTimestamp(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Z)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "writeSettings"    # Z

    .prologue
    .line 1384
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1385
    const/4 v1, 0x0

    .line 1387
    .local v1, "result":Z
    if-eqz p0, :cond_1

    .line 1388
    :try_start_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1389
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1390
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 1392
    if-eqz p2, :cond_0

    .line 1393
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    :cond_0
    const/4 v1, 0x1

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    monitor-exit v3

    .line 1400
    return v1

    .line 1384
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
