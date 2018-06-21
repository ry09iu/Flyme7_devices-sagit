.class final Lcom/android/server/wifi/WifiMonitorInjector;
.super Ljava/lang/Object;
.source "WifiMonitorInjector.java"


# static fields
.field private static final PASSWORD_STR:Ljava/lang/String; = "PASSWORD"

.field private static mRequestPasswordPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "PASSWORD-([0-9]+):Password needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/wifi/WifiMonitorInjector;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handlePasswordRequest(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "requestName"    # Ljava/lang/String;
    .param p2, "eventLogCounter"    # I

    .prologue
    const/4 v7, 0x1

    .line 23
    const-string/jumbo v4, "PASSWORD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "SSID":Ljava/lang/String;
    const/4 v3, -0x2

    .line 26
    .local v3, "reason":I
    sget-object v4, Lcom/android/server/wifi/WifiMonitorInjector;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 27
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "SSID":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 35
    .end local v0    # "SSID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v4

    .line 36
    const/4 v5, 0x0

    const v6, 0x2400f

    invoke-static {v5, v6, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 35
    invoke-virtual {v4, p0, v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 37
    return v7

    .line 31
    .restart local v0    # "SSID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0

    .line 39
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v3    # "reason":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method
