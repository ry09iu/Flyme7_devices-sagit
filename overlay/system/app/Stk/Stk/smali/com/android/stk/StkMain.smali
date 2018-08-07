.class public Lcom/android/stk/StkMain;
.super Landroid/app/Activity;
.source "StkMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkMain$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final className:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSingleSimId:I

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/android/stk/StkMain$1;

    invoke-direct {v0}, Lcom/android/stk/StkMain$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkMain;->className:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/stk/StkMain;->className:Ljava/lang/String;

    sget-object v1, Lcom/android/stk/StkMain;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    .line 42
    iput-object v1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    .line 38
    return-void
.end method

.method private isShowSTKListMenu()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 72
    iget-object v5, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 73
    .local v3, "simCount":I
    const/4 v4, 0x0

    .line 74
    .local v4, "simInsertedCount":I
    const/4 v2, -0x1

    .line 76
    .local v2, "insertedSlotId":I
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    .line 78
    .local v0, "appService":Lcom/android/stk/StkAppService;
    sget-object v5, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "simCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 81
    iget-object v5, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    sget-object v5, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is inserted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v5

    if-nez v5, :cond_1

    .line 85
    :cond_0
    sget-object v5, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " main menu of STK in the card is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iput v1, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    :cond_2
    sget-object v5, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not inserted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_3
    if-le v4, v8, :cond_4

    .line 96
    return v8

    .line 99
    :cond_4
    sget-object v5, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "do not show stk list menu."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x0

    return v5
.end method

.method private launchSTKMainMenu(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "launchSTKMainMenu."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string/jumbo v1, "SLOT_ID"

    .line 109
    add-int/lit8 v2, p1, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMain;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object v1, Lcom/android/stk/StkMain;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate+"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/stk/StkMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    .line 52
    iget-object v1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v2, "phone"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    .line 55
    invoke-direct {p0}, Lcom/android/stk/StkMain;->isShowSTKListMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.stk"

    const-string/jumbo v2, "com.android.stk.StkLauncherActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/stk/StkMain;->startActivity(Landroid/content/Intent;)V

    .line 68
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/stk/StkMain;->finish()V

    .line 48
    return-void

    .line 61
    :cond_1
    iget v1, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    if-ltz v1, :cond_0

    .line 65
    iget v1, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkMain;->launchSTKMainMenu(I)V

    goto :goto_0
.end method
