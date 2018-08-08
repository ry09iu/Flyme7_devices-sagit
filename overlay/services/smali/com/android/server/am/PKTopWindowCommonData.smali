.class public Lcom/android/server/am/PKTopWindowCommonData;
.super Ljava/lang/Object;
.source "PKTopWindowCommonData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PKTopWindowCommonData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 160
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 161
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 162
    .local v4, "width":I
    const/4 v3, 0x1

    .line 164
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 166
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 167
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 171
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    .line 172
    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 173
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 177
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static getDeveloperAdslotId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 297
    const-string/jumbo v0, "default_ro.romer_adslotid"

    .line 299
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "ro.romer_adslotid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const-string/jumbo v1, "185730"

    return-object v1

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeveloperAppkey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    const-string/jumbo v0, "default_ro.romer_appkey"

    .line 317
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "ro.romer_appkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string/jumbo v1, "2XeZ6JR2McPMgqFkW23MX6tDsB4t"

    return-object v1

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFirstFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string/jumbo v2, ""

    return-object v2

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 60
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getImageBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 182
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 183
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 187
    invoke-static {v0, p1, p2}, Lcom/android/server/am/PKTopWindowCommonData;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getImageBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgurl"    # Ljava/lang/String;
    .param p2, "useOriginal"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 205
    const/4 v2, 0x0

    .line 208
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v5

    .line 209
    if-eqz p2, :cond_0

    move p3, v4

    .line 210
    .end local p3    # "width":I
    :cond_0
    if-eqz p2, :cond_1

    move p4, v4

    .line 208
    .end local p4    # "height":I
    :cond_1
    invoke-virtual {v5, p3, p4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v4

    .line 210
    const-wide/16 v6, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    invoke-interface {v4, v6, v7, v5}, Lcom/bumptech/glide/request/FutureTarget;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 211
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getRomer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    const-string/jumbo v0, "ry09iu"

    .line 241
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "rominfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "romer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v1, "ro.romer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string/jumbo v1, ""

    return-object v1

    .line 245
    :cond_0
    const-string/jumbo v1, "\\s*"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRommodel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/android/server/am/PKTopWindowUtils;->getRomModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomtype()Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    const-string/jumbo v0, "flyme"

    .line 277
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "ro.rom_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string/jumbo v1, ""

    return-object v1

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRomvc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    const-string/jumbo v0, "20180807220447"

    .line 259
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "rominfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rom_versioncode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string/jumbo v1, "ro.rom_versioncode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string/jumbo v1, ""

    return-object v1

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecondFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string/jumbo v3, ""

    return-object v3

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 46
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 47
    .local v0, "fieldObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, ""

    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getSignatureParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mdJson"    # Ljava/lang/String;
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string/jumbo v4, ""

    return-object v4

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 79
    .local v2, "mdObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "imei"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const-string/jumbo v1, ""

    .line 83
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/am/PKTopWindowTuiAUtils;->signatureUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "parames":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&device_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 85
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "mdObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "parames":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 88
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public static getSmalivc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string/jumbo v0, "20180802"

    return-object v0
.end method

.method public static getWhitePacksJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 146
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 147
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 148
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_0

    .line 149
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 152
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p0, "jsonObj"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 114
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 115
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 116
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 122
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 123
    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-eqz v4, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 134
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    :cond_1
    :goto_3
    const-string/jumbo v6, ""

    return-object v6

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    if-eqz v5, :cond_3

    .line 127
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 132
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 134
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 121
    :cond_4
    :goto_5
    return-object v6

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_4

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_5

    .line 128
    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v1

    .line 129
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_2

    .line 135
    :catch_4
    move-exception v1

    .line 136
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_3

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 125
    :goto_6
    if-eqz v4, :cond_5

    .line 127
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 132
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 134
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 124
    :cond_6
    :goto_8
    throw v6

    .line 128
    :catch_5
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_7

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_8

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 122
    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 101
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v2, 0x1

    return v2

    .line 103
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    .line 105
    return v3
.end method
