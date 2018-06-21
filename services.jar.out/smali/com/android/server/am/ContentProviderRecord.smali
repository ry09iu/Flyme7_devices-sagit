.class final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;,
        Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    }
.end annotation


# instance fields
.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field externalProcessNoHandleCount:I

.field externalProcessTokenToHandle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field haveWaitThread:Z

.field public final info:Landroid/content/pm/ProviderInfo;

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field shortStringName:Ljava/lang/String;

.field final singleton:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field waitThreadCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field waitThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "_name"    # Landroid/content/ComponentName;
    .param p5, "_singleton"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadList:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadCache:Ljava/util/LinkedList;

    .line 66
    iput-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->haveWaitThread:Z

    .line 70
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 72
    iget v2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 73
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 75
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 76
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 78
    invoke-static {p3}, Lcom/android/server/am/ContentProviderRecordInjector;->isReleaseNeeded(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iput-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 69
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadCache:Ljava/util/LinkedList;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->haveWaitThread:Z

    .line 85
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 86
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 87
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 88
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 90
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 91
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 84
    return-void
.end method

.method public static newWaitHolder()Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 105
    .local v0, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->waitProcessStart:Z

    .line 106
    return-object v0
.end method

.method private removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 195
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    .line 196
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 155
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 163
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-nez v0, :cond_2

    .line 164
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    .line 165
    .restart local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_2
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-set0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;I)I

    goto :goto_0
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 151
    :cond_1
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z

    .prologue
    .line 211
    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v2, " process="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "proc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "launchingApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 220
    :cond_1
    if-eqz p3, :cond_2

    .line 221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 222
    const-string/jumbo v2, " provider="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "singleton="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 227
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "authority="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    if-eqz p3, :cond_5

    .line 229
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v2, :cond_5

    .line 230
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isSyncable="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 231
    const-string/jumbo v2, " multiprocess="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 232
    const-string/jumbo v2, " initOrder="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 235
    :cond_5
    if-eqz p3, :cond_b

    .line 236
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "externals:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 239
    const-string/jumbo v2, " w/token="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    :cond_6
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v2, :cond_7

    .line 243
    const-string/jumbo v2, " notoken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 246
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 255
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 256
    if-eqz p3, :cond_9

    .line 257
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 260
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 261
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eq v2, p0, :cond_a

    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "    *** WRONG PROVIDER: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 259
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_c

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v2, :cond_8

    .line 250
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 251
    const-string/jumbo v2, " connections, "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 252
    const-string/jumbo v2, " external handles"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_d
    return-void
.end method

.method public hasConnectionOrHandle()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasExternalProcessHandles()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 2
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;

    .prologue
    .line 95
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 96
    .local v0, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 97
    iget-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 98
    iput-object p1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 99
    return-object v0
.end method

.method public notifyAllWaitThread()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .end local v2    # "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 122
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;

    .line 123
    .local v2, "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->caller:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    .line 121
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 127
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_2

    .line 128
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->caller:Landroid/app/IApplicationThread;

    iget-wide v4, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->threadId:J

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IApplicationThread;->notifyProviderReady(JLandroid/app/IActivityManager$ContentProviderHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadCache:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->caller:Landroid/app/IApplicationThread;

    iget-wide v4, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->threadId:J

    iget-object v6, v2, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->conn:Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IApplicationThread;->notifyProviderReady(JLandroid/app/IActivityManager$ContentProviderHolder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/ContentProviderRecord;->haveWaitThread:Z

    if-eqz v3, :cond_4

    .line 138
    iput-boolean v7, p0, Lcom/android/server/am/ContentProviderRecord;->haveWaitThread:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->notifyAll()V

    .line 119
    :cond_4
    return-void
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "hasHandle":Z
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 176
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-set0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;I)I

    .line 179
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 181
    return v4

    .line 185
    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    :cond_0
    if-nez v1, :cond_1

    .line 186
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 187
    return v4

    .line 190
    .end local v1    # "hasHandle":Z
    :cond_1
    return v3
.end method

.method public saveWaitThreadInfo(JLandroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderConnection;)V
    .locals 3
    .param p1, "threadId"    # J
    .param p3, "caller"    # Landroid/app/IApplicationThread;
    .param p4, "conn"    # Lcom/android/server/am/ContentProviderConnection;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;-><init>(Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;)V

    .line 113
    .local v0, "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    :goto_0
    iput-wide p1, v0, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->threadId:J

    .line 114
    iput-object p3, v0, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->caller:Landroid/app/IApplicationThread;

    .line 115
    iput-object p4, v0, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;->conn:Lcom/android/server/am/ContentProviderConnection;

    .line 116
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void

    .line 112
    .end local v0    # "info":Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->waitThreadCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord$WaitThreadInfo;

    move-object v0, v1

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    return-object v1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 291
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    return-object v1

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ContentProviderRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method
