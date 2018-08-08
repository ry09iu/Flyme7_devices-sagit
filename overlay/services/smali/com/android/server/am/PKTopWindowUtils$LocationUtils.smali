.class public Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
.super Ljava/lang/Object;
.source "PKTopWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;
    }
.end annotation


# static fields
.field private static volatile uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;


# instance fields
.field private location:Landroid/location/Location;

.field locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private locationProvider:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/PKTopWindowUtils$LocationUtils;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;-><init>(Lcom/android/server/am/PKTopWindowUtils$LocationUtils;)V

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationListener:Landroid/location/LocationListener;

    .line 825
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->mContext:Landroid/content/Context;

    .line 826
    invoke-direct {p0}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->getLocation()V

    .line 824
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 831
    sget-object v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    if-nez v0, :cond_1

    .line 832
    const-class v1, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    monitor-enter v1

    .line 833
    :try_start_0
    sget-object v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    invoke-direct {v0, p0}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 838
    :cond_1
    sget-object v0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    return-object v0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocation()V
    .locals 8

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    .line 845
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v7

    .line 846
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "network"

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    const-string/jumbo v0, "network"

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationProvider:Ljava/lang/String;

    .line 856
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 857
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_0

    .line 858
    invoke-direct {p0, v6}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->setLocation(Landroid/location/Location;)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationProvider:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x40400000    # 3.0f

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 841
    return-void

    .line 849
    .end local v6    # "location":Landroid/location/Location;
    :cond_1
    const-string/jumbo v0, "gps"

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    const-string/jumbo v0, "gps"

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationProvider:Ljava/lang/String;

    goto :goto_0

    .line 853
    :cond_2
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->location:Landroid/location/Location;

    .line 864
    return-void
.end method


# virtual methods
.method public removeLocationUpdatesListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 875
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 876
    sput-object v1, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->uniqueInstance:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    .line 877
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 874
    :cond_0
    return-void
.end method

.method public showLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->location:Landroid/location/Location;

    return-object v0
.end method
