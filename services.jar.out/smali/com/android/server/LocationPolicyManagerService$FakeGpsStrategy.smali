.class Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeGpsStrategy"
.end annotation


# instance fields
.field private mFakeGpsOn:Z

.field private mGpsBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasLocation:Z

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mPhoneStationary:Z

.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .prologue
    const/4 v1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    .line 1121
    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    .line 1122
    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    .line 1123
    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    .line 1120
    return-void
.end method

.method private notifyListeners(Z)V
    .locals 4
    .param p1, "stationary"    # Z

    .prologue
    .line 1199
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v3

    .line 1200
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 1201
    .local v0, "listener":Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;
    invoke-interface {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;->onStationaryChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1199
    .end local v0    # "listener":Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1198
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1153
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-nez v0, :cond_0

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "miui gps provider info:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string/jumbo v3, "\n            on: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1178
    const-string/jumbo v4, "\n    stationary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1179
    const-string/jumbo v4, "\n  mHasLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1180
    const-string/jumbo v4, "\n     mLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1182
    const-string/jumbo v3, "\n     blacklist:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "        -"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1186
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1174
    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    return-object v0

    .line 1171
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getOnState()Z
    .locals 1

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    return v0
.end method

.method getPhoneStationary()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    return v0
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    monitor-enter v1

    .line 1192
    :try_start_0
    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v2, "register Status in strategy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1189
    :cond_0
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setOnState(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    if-eq v0, p1, :cond_0

    .line 1130
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mFakeGpsOn:Z

    .line 1128
    :cond_0
    return-void
.end method

.method setPhoneStationay(ZLandroid/location/Location;)V
    .locals 1
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    if-eq v0, p1, :cond_0

    .line 1136
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mPhoneStationary:Z

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->notifyListeners(Z)V

    .line 1138
    if-eqz p1, :cond_1

    .line 1139
    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setLocation(Landroid/location/Location;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mHasLocation:Z

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method takeOverGpsProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1215
    if-eqz p1, :cond_0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1218
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateGpsBlackPackages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1209
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->mGpsBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1206
    return-void

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
