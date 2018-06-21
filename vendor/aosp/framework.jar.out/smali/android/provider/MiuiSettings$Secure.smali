.class public Landroid/provider/MiuiSettings$Secure;
.super Landroid/provider/SystemSettings$Secure;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_CONVENIENT:Ljava/lang/String; = "access_control_lock_convenient"

.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static final ACCESS_CONTROL_LOCK_MODE:Ljava/lang/String; = "access_control_lock_mode"

.field public static final ACCESS_CONTROL_MASK_NOTIFICATION:Ljava/lang/String; = "access_control_mask_notification"

.field public static APP_ENCRYPT_PASSWORD:Ljava/lang/String; = null

.field public static final BATTERY_LIGHT_TURN_ON:Ljava/lang/String; = "battery_light_turn_on"

.field public static final BLUETOOTH_TRACE_LOG:Ljava/lang/String; = "bluetooth_trace_log"

.field public static final CHILDREN_MODE_DENY_SMS_PERMISSION:Ljava/lang/String; = "children_mode_deny_sms_permission"

.field public static final CHILDREN_MODE_ENABLED:Ljava/lang/String; = "children_mode_enabled"

.field public static final CLOUD_MESSAGING_ON:Ljava/lang/String; = "cloud_messaging_on"

.field public static final DEFAULT_EXPERIMENTAL_PERMISSION_ALLOW:I = 0x1

.field public static final DEFAULT_FIND_DEVICE_PIN_LOCK:I = 0x0

.field public static final DEFAULT_INPUT_METHOD_CHOOSED:Ljava/lang/String; = "default_input_method_choosed"

.field public static final DEFAULT_LOCAL_AUTO_BACKUP:I = 0x0

.field public static final DEFAULT_PERMANENTLY_LOCK_SIM_CHANGE:I = 0x0

.field public static final DEFAULT_VPN_ENABLE_PASSWORD:I = 0x0

.field public static final ENABLE_MIKEY_MODE:Ljava/lang/String; = "enable_mikey_mode"

.field public static final EXPERIMENTAL_PERMISSION_ALLOW:Ljava/lang/String; = "experimental_permission_allow"

.field public static FIND_DEVICE_PIN_LOCK:Ljava/lang/String; = null

.field public static FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String; = null

.field public static final HAS_SHOW_GUIDE:Ljava/lang/String; = "has_show_guide"

.field public static final HTTP_INVOKE_APP:Ljava/lang/String; = "http_invoke_app"

.field public static final IS_SECOND_SPACE:Ljava/lang/String; = "is_second_space"

.field public static final KEY_FIRST_ENTER_SECURITY_SPACE:Ljava/lang/String; = "first_enter_security_space"

.field public static final LOCAL_AUTO_BACKUP:Ljava/lang/String; = "local_auto_backup"

.field public static final LOCK_SCREEN_SECURE_AFTER_TIMEOUT:Ljava/lang/String; = "enable_lock_screen_secure_after_timeout"

.field public static final MOBILE_POLICY:Ljava/lang/String; = "mobile_policy"

.field public static final OPEN_CROSS_USER_NOTIFICATION:Ljava/lang/String; = "open_cross_user_notification"

.field public static final OPEN_SWITCH_USER_NOTIFICATION:Ljava/lang/String; = "open_switch_user_notification"

.field public static final PACKAGE_ACCESSIBILITY_SERVICE_IGNORED:Ljava/lang/String; = "package_accessibillity_service_ignored"

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String; = null

.field public static final PRIVACY_PASSWORD_IS_OPEN:Ljava/lang/String; = "privacy_password_is_open"

.field public static final PRIVATE_GALLERY_LOCK_ENABLED:Ljava/lang/String; = "private_gallery_lock_enabled"

.field public static final PRIVATE_GALLERY_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_gallery_lock_pattern_visible_pattern"

.field public static final PRIVATE_SMS_LOCK_ENABLED:Ljava/lang/String; = "private_sms_lock_enabled"

.field public static final PRIVATE_SMS_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_sms_lock_pattern_visible_pattern"

.field public static REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String; = null

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_TURN_ON:Ljava/lang/String; = "screen_buttons_turn_on"

.field public static final SECOND_USER_ID:Ljava/lang/String; = "second_user_id"

.field public static final SSPACE_USED:Ljava/lang/String; = "sSpace_used"

.field public static final SYNC_ON_WIFI_ONLY:Ljava/lang/String; = "sync_on_wifi_only"

.field public static final TIMESTAMP_USER_DISABLE_HYBRID_ICON_TIP:Ljava/lang/String; = "ts_user_disable_hybrid_icon_tip"

.field public static final TST_SUPPORT:Ljava/lang/String; = "tst_support"

.field public static final TST_SUPP_NOT_SUPPORT:I = 0x0

.field public static final TST_SUPP_SUPPORT:I = 0x1

.field public static final TST_SUPP_UNKNOWN:I = -0x1

.field public static UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String; = null

.field public static final UPLOAD_DEBUG_LOG:Ljava/lang/String; = "upload_debug_log_pref"

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field public static final VPN_ENABLE_PASSWORD:Ljava/lang/String; = "vpn_password_enable"

.field public static final XSPACE_ENABLED:Ljava/lang/String; = "xspace_enabled"

.field public static final XSPACE_USED:Ljava/lang/String; = "xSpace_used"


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "businessKey"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->buildNewPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2288
    const-string/jumbo v0, "resister_find_device_sim_number"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    .line 2294
    const-string/jumbo v0, "unlock_failed_attempts"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    .line 2300
    const-string/jumbo v0, "permanently_lock_sim_change"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    .line 2310
    const-string/jumbo v0, "find_device_pin_lock"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    .line 2320
    const-string/jumbo v0, "force_close_dialog_enabled"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    .line 2454
    const-string/jumbo v0, "app_encrypt_password"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    .line 2220
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2220
    invoke-direct {p0}, Landroid/provider/SystemSettings$Secure;-><init>()V

    return-void
.end method

.method private static buildNewPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "businessKey"    # Ljava/lang/String;

    .prologue
    .line 2645
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2646
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "set_keyguard_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2647
    const-string/jumbo v1, "common_password_business_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    return-object v0
.end method

.method public static changeOpenCrossUserNotification(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2805
    const-string/jumbo v1, "open_cross_user_notification"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2804
    return-void

    .line 2805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static changeOpenSwitchUserNotification(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "isOpen"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2791
    const-string/jumbo v1, "open_switch_user_notification"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2790
    return-void

    .line 2791
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableHttpInvokeApp(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "allow"    # Z

    .prologue
    .line 2752
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2753
    .local v0, "enable":I
    :goto_0
    const-string/jumbo v1, "http_invoke_app"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2751
    return-void

    .line 2752
    .end local v0    # "enable":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":I
    goto :goto_0
.end method

.method public static enableUploadDebugLog(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "allow"    # Z

    .prologue
    .line 2736
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2737
    .local v0, "enable":I
    :goto_0
    const-string/jumbo v1, "upload_debug_log_pref"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2735
    return-void

    .line 2736
    .end local v0    # "enable":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":I
    goto :goto_0
.end method

.method public static enableUserExperienceProgram(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "allow"    # Z

    .prologue
    .line 2720
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2721
    .local v0, "enable":I
    :goto_0
    const-string/jumbo v1, "upload_log_pref"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2719
    return-void

    .line 2720
    .end local v0    # "enable":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enable":I
    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2585
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getCtaSupported(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2574
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 2575
    const/4 v0, 0x0

    return v0

    .line 2578
    :cond_0
    const-string/jumbo v0, "tst_support"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDisableHybridIconTipTS(Landroid/content/ContentResolver;)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2777
    const-string/jumbo v0, "ts_user_disable_hybrid_icon_tip"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasCommonPassword(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2599
    invoke-static {p0}, Lmiui/util/LockPatternUtilsWrapper;->getActivePasswordQuality(Landroid/content/Context;)I

    move-result v0

    .line 2600
    .local v0, "quality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCommonPasswordEnabledForBusiness(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2607
    const-string/jumbo v2, "miui_keyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2608
    invoke-static {p0}, Lmiui/util/LockPatternUtilsWrapper;->getActivePasswordQuality(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2611
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isFingerprintEnabledForBusiness(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isForceCloseDialogEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 2326
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2327
    sget-object v3, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    const/4 v4, -0x2

    .line 2326
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2328
    :catch_0
    move-exception v0

    .line 2330
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v2, :cond_1

    .line 2331
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 2330
    if-nez v2, :cond_1

    .line 2331
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 2330
    :cond_1
    return v1
.end method

.method public static isHttpInvokeAppEnable(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 2760
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 2761
    .local v0, "default_value":I
    :goto_0
    const-string/jumbo v2, "http_invoke_app"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    .line 2760
    .end local v0    # "default_value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "default_value":I
    goto :goto_0

    .line 2761
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isOpenCrossUserNotification(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2798
    const-string/jumbo v2, "open_cross_user_notification"

    invoke-static {p0, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isOpenSwitchUserNotification(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2784
    const-string/jumbo v2, "open_switch_user_notification"

    invoke-static {p0, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSecureSpace(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 2555
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "is_second_space"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isUploadDebugLogEnable(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 2744
    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2745
    .local v0, "default_value":I
    :goto_0
    const-string/jumbo v2, "upload_debug_log_pref"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    .line 2744
    .end local v0    # "default_value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "default_value":I
    goto :goto_0

    .line 2745
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 2728
    sget-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2729
    .local v0, "default_value":I
    :goto_0
    const-string/jumbo v2, "upload_log_pref"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    .line 2728
    .end local v0    # "default_value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "default_value":I
    goto :goto_0

    .line 2729
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2592
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2591
    return-void

    .line 2592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCtaSupported(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "ctaSupport"    # I

    .prologue
    .line 2563
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 2564
    return-void

    .line 2567
    :cond_0
    const-string/jumbo v0, "tst_support"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2561
    return-void
.end method

.method public static setDisableHybridIconTipTS(Landroid/content/ContentResolver;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "timeStamp"    # J

    .prologue
    .line 2769
    const-string/jumbo v0, "ts_user_disable_hybrid_icon_tip"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static showApplyPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "businessName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2695
    new-instance v0, Landroid/provider/MiuiSettings$Secure$3;

    invoke-direct {v0, p0, p2, p1}, Landroid/provider/MiuiSettings$Secure$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2707
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2708
    const v2, 0x1010355

    .line 2707
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2709
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    const v3, 0x110700b8

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2707
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2710
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    const v3, 0x110700b9

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2707
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2711
    const v2, 0x110700ba

    .line 2707
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2712
    const v2, 0x110700b4

    .line 2707
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2694
    return-void
.end method

.method private static showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 2653
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2654
    const v1, 0x1010355

    .line 2653
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2655
    const v1, 0x110700b6

    .line 2653
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2656
    const v1, 0x110700b7

    .line 2653
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2657
    const v1, 0x110700b5

    .line 2653
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2658
    const v1, 0x110700b4

    .line 2653
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2652
    return-void
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialogClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "setPasswordRequestCode"    # I

    .prologue
    .line 2670
    :try_start_0
    new-instance v1, Landroid/provider/MiuiSettings$Secure$2;

    invoke-direct {v1, p0, p2, p3, p1}, Landroid/provider/MiuiSettings$Secure$2;-><init>(Landroid/app/Activity;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2682
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$Secure;->showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 2683
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Fragment;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "dialogClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "setPasswordRequestCode"    # I

    .prologue
    .line 2629
    new-instance v0, Landroid/provider/MiuiSettings$Secure$1;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/provider/MiuiSettings$Secure$1;-><init>(Landroid/app/Fragment;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2641
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2628
    return-void
.end method
