.class public Lcom/android/server/am/PKTopWindowConfig;
.super Ljava/lang/Object;
.source "PKTopWindowConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowConfig$Log;,
        Lcom/android/server/am/PKTopWindowConfig$StackTrace;
    }
.end annotation


# static fields
.field public static final API_PARAMS:Ljava/lang/String; = "v1/params"

.field public static final API_PKICON_MD5:Ljava/lang/String; = "v1/md5?"

.field public static final API_USER:Ljava/lang/String; = "v1/user?"

.field public static final API_WHITEPACKS:Ljava/lang/String; = "v1/whitepacks"

.field public static final BACKUP_MD5:Ljava/lang/String; = "e4fe8eb68682dfc830b8a877af1b259c"

.field public static final DEBUG:Z

.field public static final DEF_PKICON_MD5:Ljava/lang/String; = "00000000000000000000000000000000"

.field public static final FIUI_URL:Ljava/lang/String; = "http://www.fiui.org/"

.field public static final PK_RELEASE_VERSION:Ljava/lang/String; = "v1.5.0"

.field public static final RELEASE_URL:Ljava/lang/String;

.field public static final SECRET_DEBUG:Z

.field public static final SECRET_LOG:Z

.field public static final SMALI_VERSIONCODE:Ljava/lang/String; = "20180802"

.field public static final STAT_DEF_USERID:Ljava/lang/String;

.field public static final STAT_SERVICE_APPKEY:Ljava/lang/String; = "e711cddce9"

.field public static final STAT_SERVICE_CHANNEL:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PKTopWindowConfig"

.field public static final TEST_URL:Ljava/lang/String; = "http://adx.adbubo.com/"

.field public static final TUIA_DEF_ADSLOTID:Ljava/lang/String; = "185730"

.field public static final TUIA_DEF_APPKEY:Ljava/lang/String; = "2XeZ6JR2McPMgqFkW23MX6tDsB4t"

.field public static final USE_FRAMEWORK_WEBVIEW:Z = true

.field public static final YUXI:Ljava/lang/String; = "http://www.fiui.org/yuxi/md5.md"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "other"

    :goto_0
    sput-object v0, Lcom/android/server/am/PKTopWindowConfig;->STAT_SERVICE_CHANNEL:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "other"

    :goto_1
    sput-object v0, Lcom/android/server/am/PKTopWindowConfig;->STAT_DEF_USERID:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "ro.pk.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    .line 40
    const-string/jumbo v0, "ro.pk.secretdebug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    .line 41
    const-string/jumbo v0, "ro.pk.secretlog"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->SECRET_LOG:Z

    .line 42
    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "http://adx.adbubo.com/"

    :goto_2
    sput-object v0, Lcom/android/server/am/PKTopWindowConfig;->RELEASE_URL:Ljava/lang/String;

    .line 21
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData;->getRomer()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 42
    :cond_2
    const-string/jumbo v0, "http://adx.adbubo.com/"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
