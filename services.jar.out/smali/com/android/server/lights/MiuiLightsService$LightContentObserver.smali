.class Lcom/android/server/lights/MiuiLightsService$LightContentObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightContentObserver"
.end annotation


# instance fields
.field public final BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

.field public final BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

.field public final SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

.field public final SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 189
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->-get2(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    const-string/jumbo v0, "screen_buttons_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    .line 181
    const-string/jumbo v0, "single_key_use_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    .line 182
    const-string/jumbo v0, "screen_buttons_turn_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    .line 183
    const-string/jumbo v0, "breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 184
    const-string/jumbo v0, "call_breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 185
    const-string/jumbo v0, "mms_breathing_light_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    .line 186
    const-string/jumbo v0, "battery_light_turn_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    .line 188
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 193
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->-get1(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->-set0(Lcom/android/server/lights/MiuiLightsService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 195
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get4(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get6(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 211
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    :cond_2
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SINGLE_KEY_USE_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->SCREEN_BUTTONS_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 220
    if-eqz v1, :cond_2

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 223
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 218
    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_1
    :goto_0
    return-void

    .line 224
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_2
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->CALL_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 224
    if-nez v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->MMS_BREATHING_LIGHT_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 224
    if-eqz v1, :cond_4

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 228
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :cond_4
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->BATTERY_LIGHT_TURN_ON_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 231
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    goto :goto_0
.end method
