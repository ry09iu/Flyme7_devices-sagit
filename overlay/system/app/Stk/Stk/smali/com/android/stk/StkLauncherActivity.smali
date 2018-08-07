.class public Lcom/android/stk/StkLauncherActivity;
.super Lmiui/app/ListActivity;
.source "StkLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkLauncherActivity$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final className:Ljava/lang/String;


# instance fields
.field private mAcceptUsersInput:Z

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mSingleSimId:I

.field private mStkMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/android/stk/StkLauncherActivity$1;

    invoke-direct {v0}, Lcom/android/stk/StkLauncherActivity$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkLauncherActivity;->className:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->className:Ljava/lang/String;

    sget-object v1, Lcom/android/stk/StkLauncherActivity;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 54
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    .line 56
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    .line 57
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    .line 58
    iput-object v1, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    .line 49
    return-void
.end method

.method private addStkMenuListItems()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 171
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f060000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "appName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 173
    .local v6, "stkItemName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 174
    .local v5, "simCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    .line 175
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    .line 177
    .local v2, "appService":Lcom/android/stk/StkAppService;
    sget-object v7, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x0

    .end local v6    # "stkItemName":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 180
    invoke-static {p0, v3, v1}, Lcom/android/stk/MiuiStkUtils;->getAppName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 183
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v7

    if-nez v7, :cond_1

    .line 184
    :cond_0
    sget-object v7, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " main menu of STK in the card is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    sget-object v7, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " add to menu."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput v3, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 190
    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "stkItemName":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/cat/Item;

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v7, v6, v8}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 192
    .local v4, "item":Lcom/android/internal/telephony/cat/Item;
    iput v3, v4, Lcom/android/internal/telephony/cat/Item;->id:I

    .line 193
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v4    # "item":Lcom/android/internal/telephony/cat/Item;
    .end local v6    # "stkItemName":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not inserted."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 199
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    .line 200
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    .line 201
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    .line 200
    invoke-direct {v0, p0, v7, v10}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 203
    .local v0, "adapter":Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    .end local v0    # "adapter":Lcom/android/stk/StkMenuAdapter;
    :cond_4
    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    return v7

    .line 207
    :cond_5
    sget-object v7, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "No stk menu item add."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v10
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v4, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 156
    :try_start_0
    iget-object v4, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    :goto_0
    return-object v3

    .line 161
    .restart local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "NPE Invalid menu"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "IOOBE Invalid menu"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSTKMainMenu(I)V
    .locals 3
    .param p1, "slodId"    # I

    .prologue
    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "launchSTKMainMenu."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string/jumbo v1, "SLOT_ID"

    .line 216
    add-int/lit8 v2, p1, 0x0

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkLauncherActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate+"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v1, "phone"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    .line 72
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity;->setContentView(I)V

    .line 73
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/stk/StkLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lmiui/app/ListActivity;->onDestroy()V

    .line 149
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 109
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAcceptUsersInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_0

    .line 111
    return v3

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1, p2}, Lmiui/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 115
    :pswitch_0
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "KEYCODE_BACK."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->finish()V

    .line 118
    return v3

    .line 113
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 90
    iget-boolean v2, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    if-nez v2, :cond_0

    .line 91
    sget-object v2, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "mAcceptUsersInput:false"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 95
    .local v1, "simCount":I
    invoke-direct {p0, p3}, Lcom/android/stk/StkLauncherActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 96
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    if-nez v0, :cond_1

    .line 97
    sget-object v2, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Item is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_1
    sget-object v2, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch stk menu id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ltz v2, :cond_2

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ge v2, v1, :cond_2

    .line 102
    iput-boolean v5, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    .line 103
    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v2}, Lcom/android/stk/StkLauncherActivity;->launchSTKMainMenu(I)V

    .line 88
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lmiui/app/ListActivity;->onPause()V

    .line 143
    sget-object v0, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-super {p0}, Lmiui/app/ListActivity;->onResume()V

    .line 126
    sget-object v1, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-boolean v3, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    .line 128
    invoke-direct {p0}, Lcom/android/stk/StkLauncherActivity;->addStkMenuListItems()I

    move-result v0

    .line 129
    .local v0, "itemSize":I
    if-nez v0, :cond_0

    .line 130
    sget-object v1, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "item size = 0 so finish."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->finish()V

    .line 124
    :goto_0
    return-void

    .line 132
    :cond_0
    if-ne v0, v3, :cond_1

    .line 133
    iget v1, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkLauncherActivity;->launchSTKMainMenu(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->finish()V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v1, Lcom/android/stk/StkLauncherActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resume to show multiple stk list."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
