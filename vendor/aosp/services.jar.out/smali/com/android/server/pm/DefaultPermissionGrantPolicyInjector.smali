.class public Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static INCALL_UI:Ljava/lang/String; = null

.field private static final MIUI_APPS:[Ljava/lang/String;

.field private static final MIUI_SYSTEM_APPS:[Ljava/lang/String;

.field private static final RUNTIME_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUNTIME_PERMSSION_PROPTERY:Ljava/lang/String; = "persist.sys.runtime_perm"

.field private static final STATE_DEF:I = -0x1

.field private static final STATE_GRANT:I = 0x0

.field private static final STATE_REVOKE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const-string/jumbo v0, "com.android.incallui"

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    .line 29
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "com.miui.core"

    aput-object v1, v0, v3

    .line 58
    const-string/jumbo v1, "com.android.soundrecorder"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "com.android.fileexplorer"

    aput-object v1, v0, v5

    .line 60
    const-string/jumbo v1, "com.android.calendar"

    aput-object v1, v0, v6

    .line 61
    const-string/jumbo v1, "com.android.deskclock"

    aput-object v1, v0, v7

    .line 62
    const-string/jumbo v1, "com.android.browser"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "com.android.camera"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "com.android.mms"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "com.xiaomi.xmsf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "com.android.quicksearchbox"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "com.miui.home"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "com.miui.securityadd"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "com.miui.guardprovider"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "com.android.providers.downloads"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "com.android.providers.downloads.ui"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "com.miui.cloudservice"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "com.cleanmaster.sdk"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "com.android.incallui"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "com.trafficctr.miui"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "com.opera.max.oem.xiaomi"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "com.xiaomi.account"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "com.android.contacts"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "com.miui.cloudbackup"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "com.miui.voip"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "com.xiaomi.finddevice"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "com.xiaomi.payment"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "com.miui.virtualsim"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "com.miui.gallery"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "com.miui.compass"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "com.miui.bugreport"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "com.miui.mipub"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "com.miui.backup"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "com.xiaomi.midrop"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "com.miui.analytics"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "com.miui.systemAdSolution"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "com.miui.msa.global"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "com.xiaomi.metok"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "com.android.htmlviewer"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "com.xiaomi.simactivate.service"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "com.miui.extraphoto"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "com.miui.packageinstaller"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "com.google.android.packageinstaller"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "com.miui.hybrid"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "com.android.thememanager"

    aput-object v1, v0, v3

    .line 105
    const-string/jumbo v1, "com.miui.barcodescanner"

    aput-object v1, v0, v4

    .line 106
    const-string/jumbo v1, "com.miui.dmregservice"

    aput-object v1, v0, v5

    .line 107
    const-string/jumbo v1, "com.miui.notes"

    aput-object v1, v0, v6

    .line 108
    const-string/jumbo v1, "com.miui.weather2"

    aput-object v1, v0, v7

    .line 109
    const-string/jumbo v1, "com.xiaomi.gamecenter"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "com.miui.fmradio"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "com.android.email"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "com.miui.video"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "com.miui.player"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "com.xiaomi.market"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "com.xiaomi.jr"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "com.xiaomi.vip"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "com.mi.vtalk"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "com.mipay.wallet"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "com.miui.tsmclient"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "org.simalliance.openmobileapi.service"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "com.xiaomi.channel"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "com.miui.yellowpage"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "com.xiaomi.o2o"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "com.miui.miuibbs"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "com.xiaomi.pass"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "com.miui.voiceassist"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "com.xiaomi.mircs"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "com.android.vending"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "com.android.calculator2"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "com.xiaomi.scanner"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "com.milink.service"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "com.miui.sysbase"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "com.miui.calculator"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "com.miui.milivetalk"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "com.miui.smsextra"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "com.xiaomi.oga"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "com.miui.contentextension"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "com.miui.personalassistant"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "com.android.storagemonitor"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "com.xiaomi.gamecenter.pad"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 103
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

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

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static grantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 145
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 146
    .local v3, "international":Z
    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 147
    .local v4, "isCts":Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    .line 149
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v11, "com.baidu.map.location"

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 150
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 151
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 152
    .local v8, "requestedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/SettingBase;

    .line 153
    .local v9, "sb":Lcom/android/server/pm/SettingBase;
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    .line 154
    .local v6, "permissionsState":Lcom/android/server/pm/PermissionsState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 155
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    .local v5, "perm":Ljava/lang/String;
    sget-object v10, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 157
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 158
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_2

    .line 159
    const/16 v10, 0x30

    .line 160
    const/4 v11, 0x0

    .line 159
    invoke-virtual {v6, v0, p1, v10, v11}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    .line 161
    const-string/jumbo v10, "com.baidu.map.location"

    invoke-virtual {p0, v10, v5, p1}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    .end local v5    # "perm":Ljava/lang/String;
    .end local v6    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "requestedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "sb":Lcom/android/server/pm/SettingBase;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v3, :cond_4

    .line 172
    return-void

    .line 174
    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    .line 144
    return-void
.end method

.method private static grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 5
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, "p":Ljava/lang/String;
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v0, v4, p1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 288
    .local v3, "result":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 289
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, p1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    .end local v0    # "p":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_1
    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;I)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 273
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 274
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V

    .line 272
    :cond_0
    return-void
.end method

.method private static grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V
    .locals 17
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemFixed"    # Z
    .param p3, "userFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .line 195
    .local v13, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v16

    .line 196
    return-void

    .line 199
    :cond_1
    :try_start_1
    iget-object v14, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 200
    .local v14, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 202
    .local v11, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 204
    .local v15, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_3

    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v16

    .line 206
    return-void

    .line 208
    :cond_2
    :try_start_2
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v14, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    new-instance v11, Landroid/util/ArraySet;

    .end local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v11, v14}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v11, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 215
    .end local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 216
    .local v10, "grantablePermissionCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_a

    .line 217
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "permission":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    :cond_4
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 234
    .local v9, "flags":I
    if-eqz v9, :cond_5

    if-eqz p4, :cond_6

    .line 236
    :cond_5
    const/16 v8, 0x14

    .line 238
    .local v8, "fixedFlags":I
    and-int/lit8 v2, v9, 0x14

    if-eqz v2, :cond_7

    .line 216
    .end local v8    # "fixedFlags":I
    .end local v9    # "flags":I
    :cond_6
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 242
    .restart local v8    # "fixedFlags":I
    .restart local v9    # "flags":I
    :cond_7
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    const/16 v5, 0x20

    .line 245
    .local v5, "newFlags":I
    if-eqz p2, :cond_9

    .line 246
    const/16 v5, 0x30

    .line 251
    :cond_8
    :goto_2
    iget-object v4, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    move v6, v5

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 193
    .end local v3    # "permission":Ljava/lang/String;
    .end local v5    # "newFlags":I
    .end local v8    # "fixedFlags":I
    .end local v9    # "flags":I
    .end local v10    # "grantablePermissionCount":I
    .end local v12    # "i":I
    .end local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2

    .line 247
    .restart local v3    # "permission":Ljava/lang/String;
    .restart local v5    # "newFlags":I
    .restart local v8    # "fixedFlags":I
    .restart local v9    # "flags":I
    .restart local v10    # "grantablePermissionCount":I
    .restart local v12    # "i":I
    .restart local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v14    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    if-eqz p3, :cond_8

    .line 248
    const/16 v5, 0x22

    goto :goto_2

    .end local v3    # "permission":Ljava/lang/String;
    .end local v5    # "newFlags":I
    .end local v8    # "fixedFlags":I
    .end local v9    # "flags":I
    :cond_a
    monitor-exit v16

    .line 192
    return-void
.end method

.method private static realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 179
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    aget-object v1, v0, v11

    move-object v0, p0

    move v3, v2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const/4 v11, 0x0

    :goto_1
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_1

    .line 183
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    aget-object v6, v0, v11

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v9, v2

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 182
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 178
    :cond_1
    return-void
.end method

.method public static setCoreRuntimePermissionEnabled(ZII)V
    .locals 3
    .param p0, "grant"    # Z
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 260
    if-eqz p2, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 264
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    if-eqz p0, :cond_1

    .line 265
    invoke-static {v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    .line 266
    const-string/jumbo v1, "persist.sys.runtime_perm"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string/jumbo v1, "persist.sys.runtime_perm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
