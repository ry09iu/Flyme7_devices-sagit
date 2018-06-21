.class final synthetic Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$deferPackages:Ljava/util/List;

.field private synthetic val$storageFlags:I

.field private synthetic val$this:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$this:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$deferPackages:Ljava/util/List;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$storageFlags:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$this:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$deferPackages:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$-void__init__android_content_Context_context_com_android_server_pm_Installer_installer_boolean_factoryTest_boolean_onlyCore_LambdaImpl0;->val$storageFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-com_android_server_pm_PackageManagerService_lambda$1(Ljava/util/List;I)V

    return-void
.end method
