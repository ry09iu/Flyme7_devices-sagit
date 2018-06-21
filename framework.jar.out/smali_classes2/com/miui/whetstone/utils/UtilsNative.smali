.class public final Lcom/miui/whetstone/utils/UtilsNative;
.super Ljava/lang/Object;
.source "UtilsNative.java"


# static fields
.field public static final TRIM_DALVIK_CONCURRENT:I = 0x1

.field public static final TRIM_DALVIK_EXPLICIT:I = 0x2

.field public static final TRIM_DALVIK_MALLOC:I = 0x0

.field public static final TRIM_DALVIK_OOM:I = 0x3

.field private static mEndTrimMemory:Ljava/lang/reflect/Method;

.field private static mStartTrimMemory:Ljava/lang/reflect/Method;

.field private static mTrimLocalMemory:Ljava/lang/reflect/Method;

.field private static mWindowManagerGlobal:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mWindowManagerGlobalObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "whetstone_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOpenGLCache()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public static copyObjectFields(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;
    .param p2, "deepCopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    if-eqz p2, :cond_1

    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_9

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v3, v7, v6

    .line 115
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, p1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 120
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_9

    aget-object v3, v6, v5

    .line 121
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 125
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 133
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v4, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_4
    if-ge v6, v8, :cond_3

    aget-object v3, v7, v6

    .line 136
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 134
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 141
    :cond_4
    if-eqz p2, :cond_7

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_6
    if-ge v6, v8, :cond_6

    aget-object v3, v7, v6

    .line 145
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 148
    .local v1, "destField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_5

    .line 149
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, p1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 143
    .end local v1    # "destField":Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 155
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_7
    if-ge v5, v7, :cond_9

    aget-object v3, v6, v5

    .line 156
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 159
    .restart local v1    # "destField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_8

    .line 160
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, p1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 165
    .end local v1    # "destField":Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 167
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 171
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_9
    return-object p1
.end method

.method public static native getIdleTimeInMillis()J
.end method

.method public static native getUpTimeInMillis()J
.end method

.method private static init()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 45
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 46
    sput-object v7, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_0
    const-string/jumbo v5, "android.view.WindowManagerGlobal"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/miui/whetstone/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 53
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 54
    sget-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string/jumbo v6, "getInstance"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 56
    .end local v2    # "e":Ljava/lang/Throwable;
    .local v4, "getInstance":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobalObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_2
    sget-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string/jumbo v6, "startTrimMemory"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mStartTrimMemory:Ljava/lang/reflect/Method;

    .line 65
    sget-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string/jumbo v6, "trimLocalMemory"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mTrimLocalMemory:Ljava/lang/reflect/Method;

    .line 66
    sget-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mWindowManagerGlobal:Ljava/lang/Class;

    const-string/jumbo v6, "endTrimMemory"

    new-array v7, v9, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/miui/whetstone/utils/UtilsNative;->mEndTrimMemory:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 59
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 57
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 50
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "getInstance":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method private static native nativeClearOpenGLCache()V
.end method

.method private static native naviteRestoreBitmap(JJ)Z
.end method

.method public static restoreBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    return-void
.end method

.method public static trimApplication(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 95
    invoke-static {p0}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplicationDalvik(I)V

    .line 94
    return-void
.end method

.method public static native trimApplicationDalvik(I)V
.end method

.method public static native trimDalvikHeapSize()V
.end method
