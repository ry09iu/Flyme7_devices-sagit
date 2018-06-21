.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1694
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1693
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1698
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1700
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "trackball_wake_screen"

    .line 1699
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1702
    const-string/jumbo v1, "camera_key_preferred_action_type"

    .line 1701
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1704
    const-string/jumbo v1, "camera_key_preferred_action_shortcut_id"

    .line 1703
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1706
    const-string/jumbo v1, "volumekey_wake_screen"

    .line 1705
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1708
    const-string/jumbo v1, "volumekey_launch_camera"

    .line 1707
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1710
    const-string/jumbo v1, "auto_test_mode_on"

    .line 1709
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1712
    const-string/jumbo v1, "single_key_use_enable"

    .line 1711
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1714
    const-string/jumbo v1, "key_bank_card_in_ese"

    .line 1713
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1716
    const-string/jumbo v1, "key_trans_card_in_ese"

    .line 1715
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1718
    const-string/jumbo v1, "key_long_press_volume_down"

    .line 1717
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1720
    const-string/jumbo v1, "torch_state"

    .line 1719
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1722
    const-string/jumbo v1, "screen_key_press_app_switch"

    .line 1721
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1724
    const-string/jumbo v1, "vr_mode"

    .line 1723
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1726
    const-string/jumbo v1, "enable_mikey_mode"

    .line 1725
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1729
    const-string/jumbo v1, "double_click_power_key"

    .line 1728
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1731
    const-string/jumbo v1, "three_gesture_down"

    .line 1730
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1733
    const-string/jumbo v1, "long_press_home_key"

    .line 1732
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1735
    const-string/jumbo v1, "long_press_menu_key"

    .line 1734
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1737
    const-string/jumbo v1, "long_press_menu_key_when_lock"

    .line 1736
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1739
    const-string/jumbo v1, "long_press_back_key"

    .line 1738
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1741
    const-string/jumbo v1, "key_combination_power_home"

    .line 1740
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1743
    const-string/jumbo v1, "key_combination_power_menu"

    .line 1742
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1745
    const-string/jumbo v1, "key_combination_power_back"

    .line 1744
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1746
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1697
    return-void
.end method

.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1751
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1752
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1753
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/MiuiSettings$Key;->updateOldKeyFunctionToNew(Landroid/content/Context;)V

    .line 1755
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1756
    const-string/jumbo v8, "double_click_power_key"

    .line 1755
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    .line 1757
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1758
    const-string/jumbo v8, "three_gesture_down"

    .line 1757
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    .line 1759
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1760
    const-string/jumbo v8, "long_press_home_key"

    .line 1759
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    .line 1761
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1762
    const-string/jumbo v8, "long_press_menu_key"

    .line 1761
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    .line 1763
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1764
    const-string/jumbo v8, "long_press_menu_key_when_lock"

    .line 1763
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    .line 1765
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1766
    const-string/jumbo v8, "long_press_back_key"

    .line 1765
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    .line 1767
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1768
    const-string/jumbo v8, "key_combination_power_home"

    .line 1767
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    .line 1769
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1770
    const-string/jumbo v8, "key_combination_power_menu"

    .line 1769
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    .line 1771
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1772
    const-string/jumbo v8, "key_combination_power_back"

    .line 1771
    invoke-static {v7, v8}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    .line 1773
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1774
    const-string/jumbo v5, "screen_key_press_app_switch"

    .line 1775
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x1

    .line 1773
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_0
    invoke-static {v7, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 1777
    const-string/jumbo v5, "screen_shot"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1778
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    if-nez v5, :cond_0

    .line 1779
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v7, Lcom/miui/server/MiuiPointerEventListener;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/miui/server/MiuiPointerEventListener;-><init>(Landroid/content/Context;)V

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    .line 1780
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1789
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    sget-boolean v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    if-nez v5, :cond_5

    .line 1790
    const-string/jumbo v5, "volumekey_wake_screen"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1789
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    :goto_2
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1791
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    sget-boolean v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    if-nez v5, :cond_6

    .line 1792
    const-string/jumbo v5, "volumekey_launch_camera"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1791
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v3

    :goto_3
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    .line 1793
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1794
    const-string/jumbo v5, "trackball_wake_screen"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1793
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_7

    move v5, v3

    :goto_4
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1795
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1796
    const-string/jumbo v5, "enable_mikey_mode"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1795
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    :goto_5
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    .line 1797
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1798
    const-string/jumbo v5, "torch_state"

    const/4 v8, 0x0

    .line 1797
    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_6
    invoke-static {v7, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 1799
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1800
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get10(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1803
    :cond_1
    const-string/jumbo v5, "camera_key_preferred_action_type"

    .line 1804
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    const/4 v8, 0x0

    .line 1802
    invoke-static {v2, v5, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1805
    .local v1, "cameraKeyActionType":I
    if-ne v3, v1, :cond_b

    .line 1806
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1809
    const-string/jumbo v5, "camera_key_preferred_action_shortcut_id"

    .line 1810
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, -0x1

    .line 1808
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1807
    const/4 v8, 0x4

    if-ne v8, v5, :cond_a

    move v5, v3

    .line 1806
    :goto_7
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1814
    :goto_8
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v5, "auto_test_mode_on"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    :goto_9
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    .line 1815
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1816
    const-string/jumbo v5, "single_key_use_enable"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1815
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_d

    move v5, v3

    :goto_a
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    .line 1817
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v5, :cond_e

    .line 1818
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 1822
    :goto_b
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1823
    const-string/jumbo v5, "key_bank_card_in_ese"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1822
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-lez v5, :cond_f

    move v5, v3

    :goto_c
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    .line 1824
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 1825
    const-string/jumbo v5, "key_trans_card_in_ese"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    .line 1824
    invoke-static {v2, v5, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-lez v5, :cond_10

    move v5, v3

    :goto_d
    iput-boolean v5, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    .line 1827
    const-string/jumbo v5, "key_long_press_volume_down"

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v7

    .line 1826
    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1829
    const-string/jumbo v5, "Street-snap"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1830
    const-string/jumbo v5, "Street-snap-picture"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1829
    if-nez v5, :cond_2

    .line 1831
    const-string/jumbo v5, "Street-snap-movie"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1829
    if-eqz v5, :cond_11

    .line 1832
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    .line 1844
    :goto_e
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "vr_mode"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v2, v7, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v3, :cond_14

    :goto_f
    invoke-static {v5, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1750
    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cameraKeyActionType":I
    :cond_3
    move v5, v4

    .line 1773
    goto/16 :goto_0

    .line 1783
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    if-eqz v5, :cond_0

    .line 1784
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1785
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1752
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_5
    move v5, v4

    .line 1789
    goto/16 :goto_2

    :cond_6
    move v5, v4

    .line 1791
    goto/16 :goto_3

    :cond_7
    move v5, v4

    .line 1793
    goto/16 :goto_4

    :cond_8
    move v5, v4

    .line 1795
    goto/16 :goto_5

    :cond_9
    move v5, v4

    .line 1797
    goto/16 :goto_6

    .restart local v1    # "cameraKeyActionType":I
    :cond_a
    move v5, v4

    .line 1807
    goto/16 :goto_7

    .line 1812
    :cond_b
    :try_start_2
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto/16 :goto_8

    :cond_c
    move v5, v4

    .line 1814
    goto/16 :goto_9

    :cond_d
    move v5, v4

    .line 1815
    goto/16 :goto_a

    .line 1820
    :cond_e
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_b

    :cond_f
    move v5, v4

    .line 1822
    goto/16 :goto_c

    :cond_10
    move v5, v4

    .line 1824
    goto/16 :goto_d

    .line 1834
    .restart local v0    # "action":Ljava/lang/String;
    :cond_11
    const-string/jumbo v5, "public_transportation_shortcuts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1835
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_e

    .line 1838
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto :goto_e

    .line 1842
    :cond_13
    const-string/jumbo v5, "key_long_press_volume_down"

    const-string/jumbo v7, "none"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get3(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v8

    .line 1841
    invoke-static {v2, v5, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_e

    :cond_14
    move v3, v4

    .line 1844
    goto :goto_f
.end method
