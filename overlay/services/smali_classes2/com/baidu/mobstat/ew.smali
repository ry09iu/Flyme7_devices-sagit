.class public abstract Lcom/baidu/mobstat/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    int-to-float v1, p3

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method

.method public putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method public putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public removeString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ew;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
