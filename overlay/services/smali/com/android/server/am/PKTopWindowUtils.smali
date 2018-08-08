.class public Lcom/android/server/am/PKTopWindowUtils;
.super Ljava/lang/Object;
.source "PKTopWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PKTopWindowUtils"

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sput-object p1, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static canShowPKTopWindow(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 160
    if-nez p0, :cond_0

    .line 161
    return v1

    .line 164
    :cond_0
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 165
    .local v0, "orientation":I
    sparse-switch v0, :sswitch_data_0

    .line 172
    const/4 v1, 0x1

    return v1

    .line 170
    :sswitch_0
    return v1

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public static createBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F
    .param p3, "scale"    # F

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 179
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 181
    .local v1, "height":I
    const/4 v7, 0x0

    invoke-static {p1, v6, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    .local v2, "inputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v3

    .line 185
    .local v3, "rs":Landroid/support/v8/renderscript/RenderScript;
    invoke-static {v3}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 188
    .local v0, "blurScript":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    invoke-static {v3, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    .line 189
    .local v4, "tmpIn":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    .line 191
    .local v5, "tmpOut":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 197
    invoke-virtual {v5, v2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 198
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 199
    return-object v2
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 284
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 286
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 287
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 288
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 291
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getOsVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "other"

    .line 224
    .local v0, "version":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v1, :pswitch_data_0

    .line 252
    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    const-string/jumbo v0, "5.0"

    goto :goto_0

    .line 229
    :pswitch_1
    const-string/jumbo v0, "5.1"

    goto :goto_0

    .line 232
    :pswitch_2
    const-string/jumbo v0, "6.0"

    goto :goto_0

    .line 235
    :pswitch_3
    const-string/jumbo v0, "7.0"

    goto :goto_0

    .line 238
    :pswitch_4
    const-string/jumbo v0, "7.1"

    goto :goto_0

    .line 241
    :pswitch_5
    const-string/jumbo v0, "8.0"

    goto :goto_0

    .line 244
    :pswitch_6
    const-string/jumbo v0, "8.1"

    goto :goto_0

    .line 247
    :pswitch_7
    const-string/jumbo v0, "9.0"

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getRomModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 262
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "_"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    .line 265
    :cond_0
    const-string/jumbo v0, "other"

    goto :goto_0
.end method

.method public static getStatusHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/16 v5, 0x18

    invoke-static {p0, v5}, Lcom/android/server/am/PKTopWindowUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 79
    .local v4, "statusHeight":I
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "object":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 86
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "height":I
    .end local v3    # "object":Ljava/lang/Object;
    :goto_0
    return v4

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static hookWebView()V
    .locals 16

    .prologue
    const/16 v14, 0x16

    .line 90
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .local v11, "sdkInt":I
    :try_start_0
    const-string/jumbo v13, "android.webkit.WebViewFactory"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 93
    .local v5, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v13, "sProviderInstance"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 94
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 96
    .local v10, "sProviderInstance":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 97
    const-string/jumbo v13, "PKTopWindowUtils"

    const-string/jumbo v14, "sProviderInstance isn\'t null"

    invoke-static {v13, v14}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 102
    :cond_0
    if-le v11, v14, :cond_2

    .line 103
    const-string/jumbo v13, "getProviderClass"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v5, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 110
    .local v8, "getProviderClassMethod":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 111
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 112
    .local v6, "factoryProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v13, "android.webkit.WebViewDelegate"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 113
    .local v2, "delegateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 114
    .local v3, "delegateConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 115
    const/16 v13, 0x1a

    if-ge v11, v13, :cond_4

    .line 116
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 117
    .local v9, "providerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v9, :cond_1

    .line 118
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 119
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 134
    .end local v9    # "providerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    :goto_1
    if-eqz v10, :cond_6

    .line 135
    const-string/jumbo v13, "sProviderInstance"

    invoke-virtual {v7, v13, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    const-string/jumbo v13, "PKTopWindowUtils"

    const-string/jumbo v14, "Hook success!"

    invoke-static {v13, v14}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2    # "delegateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "delegateConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "factoryProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "getProviderClassMethod":Ljava/lang/reflect/Method;
    .end local v10    # "sProviderInstance":Ljava/lang/Object;
    :goto_2
    return-void

    .line 104
    .restart local v5    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "sProviderInstance":Ljava/lang/Object;
    :cond_2
    if-ne v11, v14, :cond_3

    .line 105
    const-string/jumbo v13, "getFactoryClass"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v5, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .restart local v8    # "getProviderClassMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 107
    .end local v8    # "getProviderClassMethod":Ljava/lang/reflect/Method;
    :cond_3
    const-string/jumbo v13, "PKTopWindowUtils"

    const-string/jumbo v14, "Don\'t need to Hook WebView"

    invoke-static {v13, v14}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 122
    .restart local v2    # "delegateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "delegateConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "factoryProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "getProviderClassMethod":Ljava/lang/reflect/Method;
    :cond_4
    const-string/jumbo v13, "CHROMIUM_WEBVIEW_FACTORY_METHOD"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 123
    .local v0, "chromiumMethodName":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "chromiumMethodNameStr":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 126
    const-string/jumbo v1, "create"

    .line 128
    :cond_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v6, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 129
    .local v12, "staticFactory":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_1

    .line 130
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 138
    .end local v0    # "chromiumMethodName":Ljava/lang/reflect/Field;
    .end local v1    # "chromiumMethodNameStr":Ljava/lang/String;
    .end local v12    # "staticFactory":Ljava/lang/reflect/Method;
    :cond_6
    const-string/jumbo v13, "PKTopWindowUtils"

    const-string/jumbo v14, "Hook failed!"

    invoke-static {v13, v14}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    .end local v2    # "delegateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "delegateConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "factoryProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "getProviderClassMethod":Ljava/lang/reflect/Method;
    .end local v10    # "sProviderInstance":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 154
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 156
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNonSystemApps(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 470
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 471
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 472
    const/4 v2, 0x1

    return v2

    .line 474
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 477
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v3
.end method

.method public static isPortraitScreen(Landroid/view/Display;)Z
    .locals 3
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 213
    return v1

    .line 205
    :pswitch_0
    return v2

    .line 207
    :pswitch_1
    return v1

    .line 209
    :pswitch_2
    return v2

    .line 211
    :pswitch_3
    return v1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static px2dp(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 73
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public bytesToString([B)Ljava/lang/String;
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 559
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 560
    :cond_0
    return-object v4

    .line 562
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-byte v0, p1, v2

    .line 564
    .local v0, "b":B
    const-string/jumbo v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 569
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 660
    sget-object v1, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getAppActiveList()Ljava/lang/String;
    .locals 14

    .prologue
    .line 452
    sget-object v12, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "usagestats"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    .line 453
    .local v3, "mUsageStatsManager":Landroid/app/usage/UsageStatsManager;
    sget-object v12, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 454
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 455
    .local v6, "now":J
    const-wide/32 v12, 0x5265c00

    sub-long v0, v6, v12

    .line 456
    .local v0, "beginTime":J
    invoke-virtual {v3, v0, v1, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    .line 457
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v11, "usageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "stats$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 460
    .local v9, "stats":Landroid/app/usage/UsageStats;
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "packageName":Ljava/lang/String;
    iget v12, v9, Landroid/app/usage/UsageStats;->mLaunchCount:I

    const/4 v13, 0x5

    if-lt v12, v13, :cond_0

    invoke-direct {p0, v8, v5}, Lcom/android/server/am/PKTopWindowUtils;->isNonSystemApps(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 462
    const-string/jumbo v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 465
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "stats":Landroid/app/usage/UsageStats;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, ""

    :goto_1
    return-object v12

    :cond_2
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method public getApps()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 416
    sget-object v10, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 417
    .local v9, "pm":Landroid/content/pm/PackageManager;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_4

    .line 420
    :try_start_0
    const-string/jumbo v10, "package"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 419
    invoke-static {v10}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 421
    .local v3, "mPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v3, :cond_1

    .line 422
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 425
    .local v7, "pkg":Ljava/lang/String;
    invoke-direct {p0, v9, v7}, Lcom/android/server/am/PKTopWindowUtils;->isNonSystemApps(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 426
    const-string/jumbo v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "mPackageManager":Landroid/content/pm/IPackageManager;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 445
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v10, ""

    return-object v10

    .line 429
    .restart local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "mPackageManager":Landroid/content/pm/IPackageManager;
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, ""

    :goto_1
    return-object v10

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 435
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "mPackageManager":Landroid/content/pm/IPackageManager;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 436
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 438
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_5

    .line 439
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 440
    .restart local v7    # "pkg":Ljava/lang/String;
    const-string/jumbo v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 443
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, ""

    :goto_3
    return-object v10

    :cond_7
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method public getBrand()Ljava/lang/String;
    .locals 3

    .prologue
    .line 599
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 600
    .local v0, "brand":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    const-string/jumbo v1, "\\s*"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    .line 603
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getEncodedMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 373
    :cond_0
    return-object p1

    .line 375
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 378
    .local v1, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    if-eqz v2, :cond_2

    .line 385
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v1, v2

    .line 391
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 386
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v0

    .line 381
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    if-eqz v1, :cond_3

    .line 385
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 386
    :catch_2
    move-exception v0

    .line 387
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_1

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 383
    :goto_3
    if-eqz v1, :cond_4

    .line 385
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 382
    :cond_4
    :goto_4
    throw v4

    .line 386
    :catch_3
    move-exception v0

    .line 387
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_4

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v1, "gzip":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 380
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method public getImei()Ljava/lang/String;
    .locals 6

    .prologue
    .line 398
    sget-object v4, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 399
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, ""

    .line 400
    .local v1, "imeis":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "slot":I
    :goto_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 401
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "imei":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "imei":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 409
    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public getIsp()I
    .locals 5

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, "carrier":I
    sget-object v3, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 679
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "IMSI":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 681
    const-string/jumbo v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "46007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    :cond_0
    const/4 v1, 0x1

    .line 690
    :cond_1
    :goto_0
    return v1

    .line 683
    :cond_2
    const-string/jumbo v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "46006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 684
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 685
    :cond_4
    const-string/jumbo v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 744
    sget-object v1, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 746
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    const/4 v2, 0x0

    .line 545
    .local v2, "networkInterface":Ljava/net/NetworkInterface;
    const-string/jumbo v1, "\u672a\u77e5"

    .line 547
    .local v1, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "wlan0"

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 548
    .local v2, "networkInterface":Ljava/net/NetworkInterface;
    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/PKTopWindowUtils;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 555
    .end local v2    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_0
    :goto_0
    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 616
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    const-string/jumbo v1, "\\s*"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 619
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNetWorkClass()Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    sget-object v1, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 509
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 536
    const-string/jumbo v1, "\u672a\u77e5\u79fb\u52a8\u7f51\u7edc"

    return-object v1

    .line 516
    :pswitch_0
    const-string/jumbo v1, "2G"

    return-object v1

    .line 528
    :pswitch_1
    const-string/jumbo v1, "3G"

    return-object v1

    .line 532
    :pswitch_2
    const-string/jumbo v1, "4G"

    return-object v1

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 484
    sget-object v3, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 485
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 486
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 492
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 502
    const-string/jumbo v3, "\u65e0\u7f51\u7edc"

    return-object v3

    .line 488
    .end local v2    # "type":I
    :cond_0
    const-string/jumbo v3, "\u65e0\u7f51\u7edc"

    return-object v3

    .line 494
    .restart local v2    # "type":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/PKTopWindowUtils;->getNetWorkClass()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 497
    :pswitch_1
    const-string/jumbo v3, "wifi"

    return-object v3

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNonce()J
    .locals 5

    .prologue
    .line 771
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public getOsApiVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 651
    .local v0, "sdkInt":I
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootStatus()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 753
    const-string/jumbo v3, "su"

    .line 754
    .local v3, "su":Ljava/lang/String;
    const-string/jumbo v4, "PATH"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 756
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "locations":[Ljava/lang/String;
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 758
    .local v0, "location":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 759
    const/4 v4, 0x1

    return v4

    .line 757
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "locations":[Ljava/lang/String;
    :cond_1
    return v5
.end method

.method public getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 339
    const-string/jumbo v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 340
    .local v1, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 341
    .local v2, "result":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 343
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getScreenDpi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/PKTopWindowUtils;->getSheight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PKTopWindowUtils;->getSwidth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheight()Ljava/lang/String;
    .locals 4

    .prologue
    .line 586
    sget-object v2, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 587
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 588
    .local v0, "point":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 589
    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSwidth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 576
    sget-object v2, Lcom/android/server/am/PKTopWindowUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 577
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 578
    .local v0, "point":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 579
    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
