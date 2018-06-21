.class public Lcom/android/internal/telephony/MiuiIccProvider;
.super Landroid/content/ContentProvider;
.source "MiuiIccProvider.java"


# static fields
.field public static final ADDRESS_BOOK_COLUMN_ANR:I = 0x4

.field public static final ADDRESS_BOOK_COLUMN_EMAILS:I = 0x2

.field public static final ADDRESS_BOOK_COLUMN_ID:I = 0x3

.field public static final ADDRESS_BOOK_COLUMN_NAME:I = 0x0

.field public static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field public static final ADDRESS_BOOK_COLUMN_NUMBER:I = 0x1

.field private static final ADN:I = 0x1

.field private static final ADN_CAPACITY:I = 0x5

.field private static final ADN_STORAGE:I = 0x6

.field static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final FREE_ADN:I = 0x4

.field private static final IS_PHONEBOOK_LOADED:I = 0xa

.field private static final IS_PHONEBOOK_READY:I = 0x7

.field private static final IS_USIM_PHONEBOOK:I = 0x8

.field private static final LAST_ERROR:I = 0x9

.field private static final SDN:I = 0x3

.field public static final STR_ANR:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_ID:Ljava/lang/String; = "_id"

.field public static final STR_NAME:Ljava/lang/String; = "name"

.field public static final STR_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NAME:Ljava/lang/String; = "newName"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    new-array v0, v7, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "emails"

    aput-object v1, v0, v4

    .line 51
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    .line 52
    const-string/jumbo v1, "anr"

    aput-object v1, v0, v6

    .line 47
    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "freeadn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "adncapacity"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "adnstroage"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "isphonebookready"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "isusimphonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "lasterror"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc"

    const-string/jumbo v2, "isphonebookloaded"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAdnCapacity(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "capacity":I
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "count"

    aput-object v6, v5, v8

    invoke-direct {v2, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 374
    .local v2, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v4

    .line 375
    .local v4, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {v4}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    .end local v4    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v1, v7, [Ljava/lang/Object;

    .line 382
    .local v1, "count":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    .line 383
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 384
    return-object v2

    .line 378
    .end local v1    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private getFreeAdn(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 351
    const/4 v3, 0x0

    .line 352
    .local v3, "freeAdn":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "count"

    aput-object v6, v5, v8

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 355
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v4

    .line 356
    .local v4, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {v4}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 363
    .end local v4    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v7, [Ljava/lang/Object;

    .line 364
    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v8

    .line 365
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 366
    return-object v1

    .line 359
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .line 317
    .local v0, "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :goto_0
    return-object v0

    .restart local v0    # "phoneBookManager":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 320
    :cond_1
    return-object v1
.end method

.method private getLastError(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "errno":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "error"

    aput-object v6, v5, v8

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 463
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v4

    .line 464
    .local v4, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v4}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getLastError()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 470
    .end local v4    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v0, v7, [Ljava/lang/Object;

    .line 471
    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v8

    .line 472
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 473
    return-object v1

    .line 467
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private getStorage(I)Landroid/database/Cursor;
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, "freeAdn":I
    const/4 v0, 0x0

    .line 390
    .local v0, "capacity":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "total"

    aput-object v7, v6, v9

    const-string/jumbo v7, "free"

    aput-object v7, v6, v8

    invoke-direct {v1, v6, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 393
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v4

    .line 394
    .local v4, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v4, :cond_0

    .line 395
    invoke-virtual {v4}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnCapacity()I

    move-result v0

    .line 396
    invoke-virtual {v4}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 401
    .end local v4    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :cond_0
    :goto_0
    new-array v5, v10, [Ljava/lang/Object;

    .line 402
    .local v5, "storage":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 404
    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 405
    return-object v1

    .line 398
    .end local v5    # "storage":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private isPhoneBookLoaded(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 426
    const/4 v4, 0x0

    .line 427
    .local v4, "ready":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v7, v5, [Ljava/lang/String;

    const-string/jumbo v8, "loaded"

    aput-object v8, v7, v6

    invoke-direct {v1, v7, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 429
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .line 430
    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookLoaded()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 436
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .end local v4    # "ready":Z
    :cond_0
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 437
    .local v0, "count":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    .line 438
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 439
    return-object v1

    :cond_1
    move v5, v6

    .line 437
    goto :goto_1

    .line 433
    .end local v0    # "count":[Ljava/lang/Object;
    .restart local v4    # "ready":Z
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private isPhoneBookReady(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, "ready":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v7, v5, [Ljava/lang/String;

    const-string/jumbo v8, "ready"

    aput-object v8, v7, v6

    invoke-direct {v1, v7, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 412
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .line 413
    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isPhoneBookReady()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 419
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .end local v4    # "ready":Z
    :cond_0
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 420
    .local v0, "count":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    .line 421
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 422
    return-object v1

    :cond_1
    move v5, v6

    .line 420
    goto :goto_1

    .line 416
    .end local v0    # "count":[Ljava/lang/Object;
    .restart local v4    # "ready":Z
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private isUsimPhoneBook(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 443
    const/4 v4, 0x0

    .line 444
    .local v4, "usim":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v7, v5, [Ljava/lang/String;

    const-string/jumbo v8, "usimphonebook"

    aput-object v8, v7, v6

    invoke-direct {v1, v7, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 446
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v3

    .line 447
    .local v3, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v3, :cond_0

    .line 448
    invoke-virtual {v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->isUsimPhoneBookRecords()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 453
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .end local v4    # "usim":Z
    :cond_0
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 454
    .local v0, "count":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    .line 455
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 456
    return-object v1

    :cond_1
    move v5, v6

    .line 454
    goto :goto_1

    .line 450
    .end local v0    # "count":[Ljava/lang/Object;
    .restart local v4    # "usim":Z
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .param p1, "efid"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 327
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v4

    .line 328
    .local v4, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v5, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    move-object v0, v5

    .line 338
    .end local v0    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    .end local v4    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    .end local v5    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 339
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "selections":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v1, v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 341
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "s":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 342
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {p0, v8, v1, v3, v7}, Lcom/android/internal/telephony/MiuiIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    .end local v6    # "s":I
    .end local v7    # "selections":[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 347
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_2
    return-object v1

    .line 333
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v0    # "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/MiuiAdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V
    .locals 8
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I
    .param p4, "selections"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 526
    sget-object v5, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v5

    .line 527
    .local v3, "length":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p4, p1, v5}, Lcom/android/internal/telephony/MiuiIccProvider;->match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 528
    new-array v1, v3, [Ljava/lang/Object;

    .line 529
    .local v1, "contact":[Ljava/lang/Object;
    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 531
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 537
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 542
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "s":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v1, v6

    .line 543
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 525
    .end local v1    # "contact":[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string/jumbo v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method private match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 4
    .param p1, "selections"    # [Ljava/lang/String;
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "id"    # I

    .prologue
    .line 556
    const/4 v1, 0x1

    .line 557
    .local v1, "match":Z
    if-eqz p1, :cond_2

    .line 558
    const/4 v0, 0x0

    .end local v1    # "match":Z
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 559
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 582
    :goto_1
    if-nez v1, :cond_0

    .line 587
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 565
    .restart local v0    # "i":I
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .local v1, "match":Z
    goto :goto_1

    .line 568
    .end local v1    # "match":Z
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .restart local v1    # "match":Z
    goto :goto_1

    .line 571
    .end local v1    # "match":Z
    :pswitch_2
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    .local v1, "match":Z
    goto :goto_1

    .end local v1    # "match":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "match":Z
    goto :goto_1

    .line 574
    .end local v1    # "match":Z
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "match":Z
    goto :goto_1

    .line 575
    .end local v1    # "match":Z
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .restart local v1    # "match":Z
    goto :goto_1

    .line 578
    .end local v1    # "match":Z
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .restart local v1    # "match":Z
    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    .local v0, "len":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 550
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 552
    :cond_0
    return-object p1
.end method

.method private parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 592
    const/4 v9, 0x0

    return-object v9

    .line 595
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 596
    .local v6, "results":[Ljava/lang/String;
    const-string/jumbo v9, "AND"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 598
    .local v0, "argsIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_a

    .line 599
    aget-object v5, v7, v2

    .line 600
    .local v5, "param":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "keyVal":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 598
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_2
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, "val":Ljava/lang/String;
    const-string/jumbo v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 608
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argsIndex":I
    .local v1, "argsIndex":I
    aget-object v8, p2, v0

    move v0, v1

    .line 611
    .end local v1    # "argsIndex":I
    .restart local v0    # "argsIndex":I
    :cond_3
    const-string/jumbo v9, "tag"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 612
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    goto :goto_1

    .line 613
    :cond_4
    const-string/jumbo v9, "pin2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 614
    sget-object v9, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 615
    :cond_5
    const-string/jumbo v9, "number"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 616
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v6, v10

    goto :goto_1

    .line 617
    :cond_6
    const-string/jumbo v9, "_id"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 618
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    goto :goto_1

    .line 619
    :cond_7
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 620
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    goto/16 :goto_1

    .line 621
    :cond_8
    const-string/jumbo v9, "emails"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 622
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v6, v10

    goto/16 :goto_1

    .line 623
    :cond_9
    const-string/jumbo v9, "anr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 624
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MiuiIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v6, v10

    goto/16 :goto_1

    .line 627
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyVal":[Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_a
    return-object v6
.end method

.method private updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z
    .locals 3
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "index"    # I
    .param p4, "slotId"    # I

    .prologue
    .line 515
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v1

    .line 516
    .local v1, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 519
    .end local v1    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :catch_0
    move-exception v0

    .line 522
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "slotId"    # I

    .prologue
    .line 490
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .line 491
    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 494
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :catch_0
    move-exception v6

    .line 497
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z
    .locals 3
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .param p4, "slotId"    # I

    .prologue
    .line 503
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v1

    .line 504
    .local v1, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 507
    .end local v1    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :catch_0
    move-exception v0

    .line 510
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "slotId"    # I

    .prologue
    .line 478
    :try_start_0
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/MiuiIccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v0

    .line 479
    .local v0, "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 480
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 482
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
    :catch_0
    move-exception v7

    .line 485
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 252
    sget-object v3, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .line 256
    .local v9, "slotId":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 257
    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    .line 265
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v9    # "slotId":I
    .end local v18    # "match":I
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .restart local v9    # "slotId":I
    goto :goto_0

    .line 259
    .restart local v18    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 268
    .local v4, "efid":I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MiuiIccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 269
    .local v19, "selections":[Ljava/lang/String;
    if-nez v19, :cond_1

    .line 270
    const/4 v3, 0x0

    return v3

    .line 262
    .end local v4    # "efid":I
    .end local v19    # "selections":[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 263
    .restart local v4    # "efid":I
    goto :goto_1

    .line 273
    .restart local v19    # "selections":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    aget-object v3, v19, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, "index":I
    :goto_2
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    .line 277
    if-ltz v8, :cond_3

    .line 278
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v7, v19, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v21

    .line 292
    .local v21, "success":Z
    :goto_3
    if-nez v21, :cond_6

    const/4 v3, 0x0

    :goto_4
    return v3

    .line 273
    .end local v8    # "index":I
    .end local v21    # "success":Z
    :cond_2
    const/4 v8, -0x1

    .restart local v8    # "index":I
    goto :goto_2

    .line 280
    :cond_3
    const/4 v3, 0x0

    aget-object v12, v19, v3

    const/4 v3, 0x1

    aget-object v13, v19, v3

    .line 281
    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v16, v19, v3

    move-object/from16 v10, p0

    move v11, v4

    move/from16 v17, v9

    .line 280
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_3

    .line 284
    .end local v21    # "success":Z
    :cond_4
    if-ltz v8, :cond_5

    .line 285
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v10, 0x0

    invoke-direct {v3, v5, v6, v10, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_3

    .line 287
    .end local v21    # "success":Z
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const/4 v5, 0x0

    aget-object v5, v19, v5

    const/4 v6, 0x1

    aget-object v6, v19, v6

    const-string/jumbo v7, ""

    const/4 v10, 0x0

    invoke-direct {v3, v5, v6, v10, v7}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v5, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    invoke-direct {v5, v6, v7, v11, v10}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_3

    .line 292
    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 297
    sget-object v0, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 128
    sget-object v2, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .line 132
    .local v9, "slotId":I
    :goto_0
    const/4 v8, 0x0

    .line 133
    .local v8, "pin2":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 134
    .local v14, "match":I
    packed-switch v14, :pswitch_data_0

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v8    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v14    # "match":I
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .restart local v9    # "slotId":I
    goto :goto_0

    .line 136
    .restart local v8    # "pin2":Ljava/lang/String;
    .restart local v14    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 146
    .end local v8    # "pin2":Ljava/lang/String;
    .local v3, "efid":I
    :goto_1
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    :cond_1
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "number":Ljava/lang/String;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_2

    .line 154
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    .line 166
    .local v18, "success":Z
    :goto_2
    if-nez v18, :cond_4

    .line 167
    const/4 v2, 0x0

    return-object v2

    .line 139
    .end local v3    # "efid":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v18    # "success":Z
    .restart local v8    # "pin2":Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 140
    .restart local v3    # "efid":I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "pin2":Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v8    # "pin2":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, "strEmail":Ljava/lang/String;
    const/4 v13, 0x0

    .line 158
    .local v13, "emails":[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .end local v13    # "emails":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v13, v2

    .line 161
    :cond_3
    const-string/jumbo v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "anr":Ljava/lang/String;
    new-instance v10, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    invoke-direct {v10, v6, v7, v13, v11}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v10, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    new-instance v2, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v19, ""

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v10, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v18

    .restart local v18    # "success":Z
    goto :goto_2

    .line 170
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v11    # "anr":Ljava/lang/String;
    .end local v17    # "strEmail":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content://icc/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v12, "buf":Ljava/lang/StringBuilder;
    packed-switch v14, :pswitch_data_1

    .line 179
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 187
    .local v15, "resultUri":Landroid/net/Uri;
    return-object v15

    .line 173
    .end local v15    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const-string/jumbo v2, "adn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 176
    :pswitch_3
    const-string/jumbo v2, "fdn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 171
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v2, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "slotIdStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 99
    .local v0, "slotId":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v0    # "slotId":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "slotId":I
    goto :goto_0

    .line 101
    :pswitch_0
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 103
    :pswitch_1
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 105
    :pswitch_2
    const/16 v2, 0x6f49

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 107
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getFreeAdn(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 109
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getAdnCapacity(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 111
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getStorage(I)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 113
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->isPhoneBookReady(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 115
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->isUsimPhoneBook(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 117
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->getLastError(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 119
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccProvider;->isPhoneBookLoaded(I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 193
    sget-object v3, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 194
    .local v23, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v9

    .line 197
    .local v9, "slotId":I
    :goto_0
    const/4 v7, 0x0

    .line 198
    .local v7, "pin2":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 199
    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    .line 208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown URI "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v20    # "match":I
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .restart local v9    # "slotId":I
    goto :goto_0

    .line 201
    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v20    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 211
    .end local v7    # "pin2":Ljava/lang/String;
    .local v4, "efid":I
    :goto_1
    const-string/jumbo v3, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "tag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const-string/jumbo v3, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 215
    :cond_1
    const-string/jumbo v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, "number":Ljava/lang/String;
    const-string/jumbo v3, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "newTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    const-string/jumbo v3, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    :cond_2
    const-string/jumbo v3, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "newNumber":Ljava/lang/String;
    const-string/jumbo v3, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 226
    .local v19, "index":Ljava/lang/Integer;
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    .line 227
    if-eqz v19, :cond_3

    .line 228
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v25

    .line 246
    .local v25, "success":Z
    :goto_2
    if-nez v25, :cond_7

    const/4 v3, 0x0

    :goto_3
    return v3

    .line 204
    .end local v4    # "efid":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v19    # "index":Ljava/lang/Integer;
    .end local v25    # "success":Z
    .restart local v7    # "pin2":Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 205
    .restart local v4    # "efid":I
    const-string/jumbo v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "pin2":Ljava/lang/String;
    goto :goto_1

    .end local v7    # "pin2":Ljava/lang/String;
    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v19    # "index":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v10, p0

    move v11, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    .line 230
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 233
    .end local v25    # "success":Z
    :cond_4
    const-string/jumbo v3, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 234
    .local v24, "strEmail":Ljava/lang/String;
    const/16 v22, 0x0

    .line 235
    .local v22, "newEmails":[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 236
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v22    # "newEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v24, v22, v3

    .line 238
    :cond_5
    const-string/jumbo v3, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, "newAnr":Ljava/lang/String;
    new-instance v18, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v18, "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    if-eqz v19, :cond_6

    .line 241
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v3, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;II)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 243
    .end local v25    # "success":Z
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;

    const-string/jumbo v8, ""

    const/4 v10, 0x0

    invoke-direct {v3, v12, v13, v10, v8}, Lcom/android/internal/telephony/uicc/MiuiAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v3, v1, v9}, Lcom/android/internal/telephony/MiuiIccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/MiuiAdnRecord;Lcom/android/internal/telephony/uicc/MiuiAdnRecord;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 246
    .end local v18    # "adn":Lcom/android/internal/telephony/uicc/MiuiAdnRecord;
    .end local v21    # "newAnr":Ljava/lang/String;
    .end local v24    # "strEmail":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
