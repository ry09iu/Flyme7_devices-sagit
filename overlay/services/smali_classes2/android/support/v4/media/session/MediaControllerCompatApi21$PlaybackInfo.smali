.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 199
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 187
    .local v0, "attrs":Landroid/media/AudioAttributes;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 1
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    .end local p0    # "volumeInfoObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x7

    return v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_1

    .line 215
    const/4 v0, 0x6

    return v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 243
    return v2

    .line 224
    :pswitch_0
    return v2

    .line 226
    :pswitch_1
    return v1

    .line 228
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 230
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 232
    :pswitch_4
    return v3

    .line 234
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 240
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
