.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field private static class_ManyToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z

.field private static class_OneToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z

.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 79
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 81
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 82
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 83
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 85
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 87
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 89
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 92
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 93
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 94
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 95
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 97
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 98
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 111
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    :try_start_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "fastjson.compatibleWithJavaBean"

    .line 115
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "fastjson.compatibleWithFieldName"

    .line 116
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1053
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "byte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "short"

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "int"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "long"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "float"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "double"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "boolean"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "char"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[byte"

    const-class v3, [B

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[short"

    const-class v3, [S

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[int"

    const-class v3, [I

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[long"

    const-class v3, [J

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[float"

    const-class v3, [F

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[double"

    const-class v3, [D

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[boolean"

    const-class v3, [Z

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[char"

    const-class v3, [C

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[B"

    const-class v3, [B

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[S"

    const-class v3, [S

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[I"

    const-class v3, [I

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[J"

    const-class v3, [J

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[F"

    const-class v3, [F

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[D"

    const-class v3, [D

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[C"

    const-class v3, [C

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "[Z"

    const-class v3, [Z

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a

    .line 1077
    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v0

    const-class v1, Ljava/lang/Cloneable;

    aput-object v1, v2, v7

    const-string/jumbo v1, "java.lang.AutoCloseable"

    .line 1080
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v2, v8

    const-class v1, Ljava/lang/Exception;

    aput-object v1, v2, v9

    const-class v1, Ljava/lang/RuntimeException;

    aput-object v1, v2, v10

    const/4 v1, 0x5

    const-class v3, Ljava/lang/IllegalAccessError;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-class v3, Ljava/lang/IllegalAccessException;

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-class v3, Ljava/lang/IllegalArgumentException;

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-class v3, Ljava/lang/IllegalMonitorStateException;

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-class v3, Ljava/lang/IllegalStateException;

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-class v3, Ljava/lang/IllegalThreadStateException;

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-class v3, Ljava/lang/InstantiationError;

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-class v3, Ljava/lang/InstantiationException;

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-class v3, Ljava/lang/InternalError;

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-class v3, Ljava/lang/InterruptedException;

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-class v3, Ljava/lang/LinkageError;

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-class v3, Ljava/lang/NegativeArraySizeException;

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-class v3, Ljava/lang/NoClassDefFoundError;

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-class v3, Ljava/lang/NoSuchFieldError;

    aput-object v3, v2, v1

    const/16 v1, 0x14

    const-class v3, Ljava/lang/NoSuchFieldException;

    aput-object v3, v2, v1

    const/16 v1, 0x15

    const-class v3, Ljava/lang/NoSuchMethodError;

    aput-object v3, v2, v1

    const/16 v1, 0x16

    const-class v3, Ljava/lang/NoSuchMethodException;

    aput-object v3, v2, v1

    const/16 v1, 0x17

    const-class v3, Ljava/lang/NullPointerException;

    aput-object v3, v2, v1

    const/16 v1, 0x18

    const-class v3, Ljava/lang/NumberFormatException;

    aput-object v3, v2, v1

    const/16 v1, 0x19

    const-class v3, Ljava/lang/OutOfMemoryError;

    aput-object v3, v2, v1

    const/16 v1, 0x1a

    const-class v3, Ljava/lang/SecurityException;

    aput-object v3, v2, v1

    const/16 v1, 0x1b

    const-class v3, Ljava/lang/StackOverflowError;

    aput-object v3, v2, v1

    const/16 v1, 0x1c

    const-class v3, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v3, v2, v1

    const/16 v1, 0x1d

    const-class v3, Ljava/lang/TypeNotPresentException;

    aput-object v3, v2, v1

    const/16 v1, 0x1e

    const-class v3, Ljava/lang/VerifyError;

    aput-object v3, v2, v1

    const/16 v1, 0x1f

    const-class v3, Ljava/lang/StackTraceElement;

    aput-object v3, v2, v1

    const/16 v1, 0x20

    const-class v3, Ljava/util/HashMap;

    aput-object v3, v2, v1

    const/16 v1, 0x21

    const-class v3, Ljava/util/Hashtable;

    aput-object v3, v2, v1

    const/16 v1, 0x22

    const-class v3, Ljava/util/TreeMap;

    aput-object v3, v2, v1

    const/16 v1, 0x23

    const-class v3, Ljava/util/IdentityHashMap;

    aput-object v3, v2, v1

    const/16 v1, 0x24

    const-class v3, Ljava/util/WeakHashMap;

    aput-object v3, v2, v1

    const/16 v1, 0x25

    const-class v3, Ljava/util/LinkedHashMap;

    aput-object v3, v2, v1

    const/16 v1, 0x26

    const-class v3, Ljava/util/HashSet;

    aput-object v3, v2, v1

    const/16 v1, 0x27

    const-class v3, Ljava/util/LinkedHashSet;

    aput-object v3, v2, v1

    const/16 v1, 0x28

    const-class v3, Ljava/util/TreeSet;

    aput-object v3, v2, v1

    const/16 v1, 0x29

    const-class v3, Ljava/util/concurrent/TimeUnit;

    aput-object v3, v2, v1

    const/16 v1, 0x2a

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v3, v2, v1

    const/16 v1, 0x2b

    const-string/jumbo v3, "java.util.concurrent.ConcurrentSkipListMap"

    .line 1121
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x2c

    const-string/jumbo v3, "java.util.concurrent.ConcurrentSkipListSet"

    .line 1122
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x2d

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v3, v2, v1

    const/16 v1, 0x2e

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v3, v2, v1

    const/16 v1, 0x2f

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x30

    const-class v3, Ljava/util/BitSet;

    aput-object v3, v2, v1

    const/16 v1, 0x31

    const-class v3, Ljava/util/Calendar;

    aput-object v3, v2, v1

    const/16 v1, 0x32

    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v1

    const/16 v1, 0x33

    const-class v3, Ljava/util/Locale;

    aput-object v3, v2, v1

    const/16 v1, 0x34

    const-class v3, Ljava/util/UUID;

    aput-object v3, v2, v1

    const/16 v1, 0x35

    const-class v3, Ljava/sql/Time;

    aput-object v3, v2, v1

    const/16 v1, 0x36

    const-class v3, Ljava/sql/Date;

    aput-object v3, v2, v1

    const/16 v1, 0x37

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v2, v1

    const/16 v1, 0x38

    const-class v3, Ljava/text/SimpleDateFormat;

    aput-object v3, v2, v1

    const/16 v1, 0x39

    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    aput-object v3, v2, v1

    .line 1137
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 1143
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v1, "java.awt.Rectangle"

    aput-object v1, v2, v0

    const-string/jumbo v1, "java.awt.Point"

    aput-object v1, v2, v7

    const-string/jumbo v1, "java.awt.Font"

    aput-object v1, v2, v8

    const-string/jumbo v1, "java.awt.Color"

    aput-object v1, v2, v9

    .line 1148
    array-length v3, v2

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_4

    :cond_0
    const/16 v1, 0xc

    .line 1155
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "org.springframework.util.LinkedMultiValueMap"

    aput-object v2, v1, v0

    const-string/jumbo v2, "org.springframework.util.LinkedCaseInsensitiveMap"

    aput-object v2, v1, v7

    const-string/jumbo v2, "org.springframework.remoting.support.RemoteInvocation"

    aput-object v2, v1, v8

    const-string/jumbo v2, "org.springframework.remoting.support.RemoteInvocationResult"

    aput-object v2, v1, v9

    const-string/jumbo v2, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string/jumbo v3, "org.springframework.security.web.savedrequest.SavedCookie"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "org.springframework.security.web.csrf.DefaultCsrfToken"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "org.springframework.security.core.context.SecurityContextImpl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "org.springframework.security.core.userdetails.User"

    aput-object v3, v1, v2

    .line 1169
    array-length v2, v1

    :goto_2
    if-lt v0, v2, :cond_5

    .line 1176
    :cond_1
    return-void

    .line 1137
    :cond_2
    aget-object v4, v2, v1

    .line 1138
    if-eqz v4, :cond_3

    .line 1141
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1148
    :cond_4
    aget-object v4, v2, v1

    .line 1149
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1150
    if-eqz v4, :cond_0

    .line 1153
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1169
    :cond_5
    aget-object v3, v1, v0

    .line 1170
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1171
    if-eqz v3, :cond_1

    .line 1174
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1270
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1274
    if-nez v1, :cond_1

    const/4 v7, 0x0

    move-object v10, v2

    move-object v9, v0

    move-object v5, p2

    .line 1318
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1319
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1320
    if-nez p3, :cond_d

    .line 1322
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    .line 1323
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1324
    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1327
    if-nez v9, :cond_e

    .line 1332
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1333
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v2

    .line 1335
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1336
    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1337
    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1340
    :goto_3
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v3, p0

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v2

    .line 1275
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v4

    .line 1277
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 1282
    :goto_4
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 1283
    sget-object v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-ne v0, v3, :cond_7

    .line 1287
    :goto_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 1288
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v5, v0

    move-object v3, v6

    .line 1289
    :goto_6
    if-nez v5, :cond_8

    :cond_2
    move-object v0, v3

    .line 1301
    :cond_3
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    array-length v8, v6

    const/4 v3, 0x0

    move v5, v3

    move-object v3, v0

    :goto_8
    if-lt v5, v8, :cond_a

    move-object v0, v3

    .line 1311
    :cond_4
    if-nez v0, :cond_c

    :cond_5
    :goto_9
    move-object v6, v0

    move-object v10, v2

    move-object v9, v4

    move-object v5, p2

    .line 1314
    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    move-object v2, v0

    .line 1279
    goto :goto_4

    :cond_7
    move-object p2, v0

    .line 1284
    goto :goto_5

    :cond_8
    const-class v0, Ljava/lang/Object;

    .line 1289
    if-eq v5, v0, :cond_2

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1291
    invoke-static {v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1292
    if-eqz v0, :cond_9

    .line 1295
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1290
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    goto :goto_6

    :cond_9
    move-object v0, v3

    .line 1293
    goto :goto_7

    .line 1301
    :cond_a
    aget-object v0, v6, v5

    const-class v9, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1302
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1303
    if-nez v0, :cond_b

    move-object v0, v3

    .line 1301
    :goto_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v0

    goto :goto_8

    .line 1304
    :cond_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_a

    .line 1311
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    .line 1312
    goto :goto_9

    .line 1321
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 1327
    :cond_e
    array-length v2, v9

    if-eqz v2, :cond_0

    .line 1328
    if-nez p3, :cond_f

    .line 1330
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    .line 1329
    :cond_f
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    move-object v9, v8

    .line 1338
    goto/16 :goto_3
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 660
    if-eqz p0, :cond_2

    .line 678
    if-eqz p1, :cond_a

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_b

    .line 684
    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_c

    .line 694
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_10

    .line 710
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 713
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 714
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 661
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_3

    .line 663
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_4

    .line 665
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_5

    .line 667
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_6

    .line 669
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_7

    .line 671
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8

    .line 673
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_9

    .line 676
    return-object v2

    .line 662
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v0, 0x0

    .line 664
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 666
    :cond_5
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 668
    :cond_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 670
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_8
    const-wide/16 v0, 0x0

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 674
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 679
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_b
    return-object p0

    :cond_c
    const-class v0, Ljava/util/Map;

    .line 685
    if-eq p1, v0, :cond_e

    move-object v0, p0

    .line 688
    check-cast v0, Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    .line 689
    if-eq p1, v1, :cond_f

    .line 692
    :cond_d
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 686
    :cond_e
    return-object p0

    .line 689
    :cond_f
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 690
    return-object p0

    .line 695
    :cond_10
    instance-of v1, p0, Ljava/util/Collection;

    if-nez v1, :cond_11

    const-class v0, [B

    .line 706
    if-ne p1, v0, :cond_0

    .line 707
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 696
    :cond_11
    check-cast p0, Ljava/util/Collection;

    .line 698
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 699
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 704
    return-object v1

    .line 699
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 700
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 701
    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_13
    return-object p0

    :cond_14
    const-class v0, Ljava/lang/Boolean;

    .line 713
    if-eq p1, v0, :cond_1

    .line 716
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_16

    .line 717
    :cond_15
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_16
    const-class v0, Ljava/lang/Byte;

    .line 716
    if-eq p1, v0, :cond_15

    .line 719
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_18

    .line 720
    :cond_17
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_18
    const-class v0, Ljava/lang/Character;

    .line 719
    if-eq p1, v0, :cond_17

    .line 722
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1a

    .line 723
    :cond_19
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_1a
    const-class v0, Ljava/lang/Short;

    .line 722
    if-eq p1, v0, :cond_19

    .line 725
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 726
    :cond_1b
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1c
    const-class v0, Ljava/lang/Integer;

    .line 725
    if-eq p1, v0, :cond_1b

    .line 728
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 729
    :cond_1d
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1e
    const-class v0, Ljava/lang/Long;

    .line 728
    if-eq p1, v0, :cond_1d

    .line 731
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_20

    .line 732
    :cond_1f
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_20
    const-class v0, Ljava/lang/Float;

    .line 731
    if-eq p1, v0, :cond_1f

    .line 734
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_22

    .line 735
    :cond_21
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_22
    const-class v0, Ljava/lang/Double;

    .line 734
    if-eq p1, v0, :cond_21

    const-class v0, Ljava/lang/String;

    .line 737
    if-eq p1, v0, :cond_24

    const-class v0, Ljava/math/BigDecimal;

    .line 740
    if-eq p1, v0, :cond_25

    const-class v0, Ljava/math/BigInteger;

    .line 743
    if-eq p1, v0, :cond_26

    const-class v0, Ljava/util/Date;

    .line 746
    if-eq p1, v0, :cond_27

    const-class v0, Ljava/sql/Date;

    .line 749
    if-eq p1, v0, :cond_28

    const-class v0, Ljava/sql/Time;

    .line 752
    if-eq p1, v0, :cond_29

    const-class v0, Ljava/sql/Timestamp;

    .line 755
    if-eq p1, v0, :cond_2a

    .line 758
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2b

    const-class v0, Ljava/util/Calendar;

    .line 761
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 777
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "javax.xml.datatype.XMLGregorianCalendar"

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 785
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_2f

    .line 804
    :cond_23
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_24
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 741
    :cond_25
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 744
    :cond_26
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 747
    :cond_27
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 750
    :cond_28
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 753
    :cond_29
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 756
    :cond_2a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 759
    :cond_2b
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 762
    :cond_2c
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    const-class v0, Ljava/util/Calendar;

    .line 764
    if-eq p1, v0, :cond_2d

    .line 768
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 774
    return-object v0

    .line 765
    :cond_2d
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    .line 771
    :catch_0
    move-exception v0

    .line 770
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 779
    :cond_2e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 780
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 781
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 782
    sget-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    .line 786
    :cond_2f
    check-cast p0, Ljava/lang/String;

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_31

    .line 790
    :cond_30
    return-object v2

    :cond_31
    const-string/jumbo v1, "null"

    .line 788
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "NULL"

    .line 789
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-class v1, Ljava/util/Currency;

    .line 792
    if-eq p1, v1, :cond_32

    const-class v1, Ljava/util/Locale;

    .line 795
    if-eq p1, v1, :cond_33

    const-string/jumbo v1, "java.time."

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 800
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 793
    :cond_32
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 796
    :cond_33
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 879
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v0, Ljava/util/Set;

    .line 880
    if-ne v1, v0, :cond_6

    .line 885
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    .line 886
    instance-of v0, p0, Ljava/lang/Iterable;

    if-nez v0, :cond_7

    :goto_0
    const-class v0, Ljava/util/Map;

    .line 902
    if-ne v1, v0, :cond_c

    .line 903
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v2, v0, v4

    .line 904
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v3, v0, v6

    .line 905
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_d

    .line 915
    :goto_1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    .line 921
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-eq v0, v6, :cond_10

    :cond_3
    const-class v0, Ljava/util/Map$Entry;

    .line 928
    if-eq v1, v0, :cond_11

    .line 933
    :cond_4
    instance-of v0, v1, Ljava/lang/Class;

    if-nez v0, :cond_12

    .line 945
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-class v0, Ljava/util/HashSet;

    .line 880
    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/TreeSet;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/Collection;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/List;

    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_7
    const-class v0, Ljava/util/Set;

    .line 888
    if-ne v1, v0, :cond_9

    .line 889
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 895
    :goto_2
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 899
    return-object v0

    :cond_9
    const-class v0, Ljava/util/HashSet;

    .line 888
    if-eq v1, v0, :cond_8

    const-class v0, Ljava/util/TreeSet;

    .line 890
    if-eq v1, v0, :cond_a

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 891
    :cond_a
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_2

    .line 896
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 897
    invoke-static {v3, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-class v0, Ljava/util/HashMap;

    .line 902
    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 906
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 907
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 912
    return-object v1

    .line 907
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 908
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 909
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 910
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    move-object v0, p0

    .line 916
    check-cast v0, Ljava/lang/String;

    .line 917
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 918
    return-object v5

    .line 922
    :cond_10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    .line 923
    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 924
    invoke-static {p0, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 928
    :cond_11
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 929
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    return-object v0

    .line 934
    :cond_12
    if-eqz p2, :cond_13

    .line 937
    :goto_5
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_5

    .line 939
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 940
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v2, v1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 941
    invoke-interface {v0, v2, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 935
    :cond_13
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    goto :goto_5
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 854
    if-eqz p0, :cond_0

    .line 857
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 860
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2

    .line 863
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 871
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_6

    .line 874
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    return-object v2

    .line 858
    :cond_1
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 861
    :cond_2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, p0

    .line 864
    check-cast v0, Ljava/lang/String;

    .line 865
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 868
    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v1, "null"

    .line 866
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NULL"

    .line 867
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 872
    :cond_6
    return-object p0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p0, :cond_1

    .line 195
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_2

    .line 198
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_3

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    instance-of v1, p0, Ljava/util/Map;

    if-nez v1, :cond_5

    .line 208
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 193
    :cond_1
    return-object v2

    .line 196
    :cond_2
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 199
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 203
    :cond_4
    return-object v2

    .line 205
    :cond_5
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 206
    return-object v2
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    if-eqz p0, :cond_1

    .line 215
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_2

    .line 218
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 219
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 213
    :cond_1
    return-object v2

    .line 216
    :cond_2
    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 218
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 225
    :cond_4
    return-object v2

    :cond_5
    const-string/jumbo v1, "null"

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "NULL"

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 227
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 618
    if-eqz p0, :cond_0

    .line 621
    instance-of v2, p0, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 624
    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_2

    .line 627
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 651
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    return-object v3

    .line 622
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 625
    :cond_2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    .line 628
    check-cast v0, Ljava/lang/String;

    .line 629
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 632
    :cond_5
    return-object v3

    :cond_6
    const-string/jumbo v1, "null"

    .line 630
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "NULL"

    .line 631
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "true"

    .line 634
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 636
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    const-string/jumbo v1, "1"

    .line 635
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "false"

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 640
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_a
    const-string/jumbo v1, "0"

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "Y"

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 644
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_c
    const-string/jumbo v1, "T"

    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "F"

    .line 646
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 648
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_e
    const-string/jumbo v1, "N"

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 134
    if-eqz p0, :cond_0

    .line 137
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 140
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 149
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-object v1

    .line 138
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 141
    :cond_2
    check-cast p0, Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 145
    :cond_3
    return-object v1

    :cond_4
    const-string/jumbo v0, "null"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "NULL"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3

    .prologue
    .line 608
    instance-of v0, p0, [B

    if-nez v0, :cond_0

    .line 611
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 614
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    .line 612
    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 153
    if-eqz p0, :cond_0

    .line 156
    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    .line 159
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to char, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    return-object v2

    .line 157
    :cond_1
    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_2
    move-object v0, p0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 162
    :cond_3
    return-object v2

    .line 165
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to char, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    if-eqz p0, :cond_0

    .line 282
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_1

    .line 285
    instance-of v0, p0, Ljava/util/Calendar;

    if-nez v0, :cond_2

    const-wide/16 v4, -0x1

    .line 289
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_3

    .line 293
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_4

    :goto_0
    const-wide/16 v6, 0x0

    .line 338
    cmp-long v0, v4, v6

    if-ltz v0, :cond_12

    move v0, v1

    :goto_1
    if-nez v0, :cond_19

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "oracle.sql.TIMESTAMP"

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "oracle.sql.DATE"

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 376
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    return-object v6

    .line 283
    :cond_1
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 286
    :cond_2
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 290
    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 291
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    :cond_4
    move-object v0, p0

    .line 294
    check-cast v0, Ljava/lang/String;

    .line 295
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 297
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_6

    .line 302
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    const-string/jumbo v3, "/Date("

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    :goto_2
    const/16 v3, 0x2d

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 336
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_0

    .line 298
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 302
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 299
    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    .line 302
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    :cond_7
    const-string/jumbo v3, ")/"

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 308
    :cond_8
    if-eqz p1, :cond_9

    .line 325
    :goto_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 326
    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 328
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    .line 309
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 311
    :cond_a
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_3

    .line 310
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_d

    .line 312
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_e

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_10

    :cond_c
    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_3

    .line 310
    :cond_d
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string/jumbo v2, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_e
    const-string/jumbo p1, "yyyy-MM-dd"

    goto :goto_3

    :cond_f
    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_3

    :cond_10
    const/16 v1, 0x1a

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_c

    const/16 v1, 0x1c

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_c

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_3

    .line 328
    :catch_0
    move-exception v1

    .line 330
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to Date, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_11
    return-object v6

    :cond_12
    move v0, v2

    .line 338
    goto/16 :goto_1

    .line 341
    :cond_13
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_15

    .line 352
    :cond_14
    :goto_5
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 356
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 341
    :cond_15
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v2, :cond_14

    :try_start_4
    const-string/jumbo v2, "toJdbc"

    const/4 v3, 0x0

    .line 343
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    :goto_6
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    goto :goto_5

    .line 348
    :catchall_1
    move-exception v0

    .line 347
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v0

    .line 355
    :catch_1
    move-exception v0

    .line 354
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 359
    :cond_16
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    .line 370
    :cond_17
    :goto_7
    :try_start_5
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 374
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 359
    :cond_18
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v2, :cond_17

    :try_start_6
    const-string/jumbo v2, "toJdbc"

    const/4 v3, 0x0

    .line 361
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 365
    :goto_8
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    goto :goto_7

    .line 366
    :catchall_2
    move-exception v0

    .line 365
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v0

    .line 373
    :catch_2
    move-exception v0

    .line 372
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 378
    :cond_19
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 366
    :catch_3
    move-exception v0

    goto :goto_8

    .line 348
    :catch_4
    move-exception v0

    goto :goto_6
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    if-eqz p0, :cond_0

    .line 256
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 259
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 271
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    return-object v2

    .line 257
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 260
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 264
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2c

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 269
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v1, ","

    const-string/jumbo v2, ""

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 821
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 839
    instance-of v0, p0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    .line 849
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    :try_start_1
    check-cast p0, Ljava/lang/String;

    .line 823
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    if-eqz p2, :cond_3

    .line 831
    :goto_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 832
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-nez v1, :cond_4

    .line 837
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 824
    :cond_2
    return-object v1

    .line 828
    :cond_3
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    goto :goto_0

    .line 833
    :cond_4
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 834
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 840
    :cond_5
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 841
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 842
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 843
    aget-object v0, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 848
    :catch_0
    move-exception v0

    .line 847
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    if-eqz p0, :cond_0

    .line 234
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 237
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    return-object v2

    .line 235
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 238
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 242
    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo v1, "null"

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2c

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 247
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v1, ","

    const-string/jumbo v2, ""

    .line 245
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 569
    if-eqz p0, :cond_1

    .line 572
    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 575
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_3

    .line 578
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 590
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 593
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_a

    .line 604
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_1
    return-object v2

    .line 573
    :cond_2
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 576
    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 579
    :cond_4
    check-cast p0, Ljava/lang/String;

    .line 580
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 583
    :cond_5
    return-object v2

    :cond_6
    const-string/jumbo v0, "null"

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "NULL"

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x2c

    .line 585
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 588
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, ","

    const-string/jumbo v1, ""

    .line 586
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 591
    :cond_8
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    move-object v0, p0

    .line 594
    check-cast v0, Ljava/util/Map;

    .line 595
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "andIncrement"

    .line 596
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "andDecrement"

    .line 597
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 601
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-class v1, Ljava/lang/StackTraceElement;

    .line 951
    if-eq p1, v1, :cond_4

    .line 968
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 969
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_6

    move-object v3, p2

    .line 985
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_9

    const-class v1, Ljava/util/Locale;

    .line 1004
    if-eq p1, v1, :cond_d

    :cond_1
    const-class v1, Ljava/lang/String;

    .line 1018
    if-eq p1, v1, :cond_f

    :cond_2
    const-class v1, Ljava/util/LinkedHashMap;

    .line 1022
    if-eq p1, v1, :cond_10

    .line 1033
    :cond_3
    :goto_0
    if-eqz v3, :cond_12

    move-object v2, v3

    .line 1038
    :goto_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1039
    instance-of v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v3, :cond_13

    move-object v1, v4

    .line 1043
    :goto_2
    if-eqz v1, :cond_14

    .line 1046
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4
    const-string/jumbo v1, "className"

    .line 952
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "methodName"

    .line 953
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "fileName"

    .line 954
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "lineNumber"

    .line 957
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 958
    if-eqz v4, :cond_5

    .line 961
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 964
    :goto_3
    new-instance v5, Ljava/lang/StackTraceElement;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5

    :cond_5
    move v4, v5

    .line 959
    goto :goto_3

    .line 970
    :cond_6
    check-cast v1, Ljava/lang/String;

    .line 972
    if-eqz p2, :cond_7

    move-object v3, p2

    :goto_4
    const/4 v2, 0x0

    .line 975
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 976
    if-eqz v2, :cond_8

    .line 979
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    invoke-static {p0, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 973
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    goto :goto_4

    .line 977
    :cond_8
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :catch_0
    move-exception v1

    .line 1048
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 987
    :cond_9
    :try_start_1
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_a

    .line 990
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v1

    .line 992
    :goto_5
    if-eqz v3, :cond_b

    .line 995
    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 996
    if-nez v1, :cond_c

    .line 1000
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 988
    :cond_a
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_5

    .line 993
    :cond_b
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    goto :goto_6

    .line 997
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 998
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_d
    const-string/jumbo v1, "language"

    .line 1005
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "country"

    .line 1006
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1007
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1008
    check-cast v1, Ljava/lang/String;

    .line 1009
    instance-of v5, v2, Ljava/lang/String;

    if-nez v5, :cond_e

    .line 1012
    if-nez v2, :cond_1

    .line 1013
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 1010
    :cond_e
    check-cast v2, Ljava/lang/String;

    .line 1011
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1018
    :cond_f
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_2

    .line 1019
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1022
    :cond_10
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 1023
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v1, v0

    .line 1024
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    .line 1025
    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_11

    .line 1028
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1029
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1026
    :cond_11
    return-object v1

    .line 1034
    :cond_12
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 1040
    :cond_13
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto/16 :goto_2

    .line 1044
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not get javaBeanDeserializer. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 523
    if-eqz p0, :cond_2

    .line 526
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_3

    .line 529
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 554
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_9

    .line 565
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_2
    return-object v1

    .line 527
    :cond_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, p0

    .line 530
    check-cast v0, Ljava/lang/String;

    .line 531
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 534
    :cond_5
    return-object v1

    :cond_6
    const-string/jumbo v2, "null"

    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "NULL"

    .line 533
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x2c

    .line 536
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 540
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v2, ","

    const-string/jumbo v3, ""

    .line 537
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v2

    .line 544
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    .line 549
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 550
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 547
    :cond_8
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, p0

    .line 555
    check-cast v0, Ljava/util/Map;

    .line 556
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "andIncrement"

    .line 557
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "andDecrement"

    .line 558
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 560
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 562
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    if-eqz p0, :cond_0

    .line 176
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 179
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-object v1

    .line 177
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 180
    :cond_2
    check-cast p0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 184
    :cond_3
    return-object v1

    :cond_4
    const-string/jumbo v0, "null"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "NULL"

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 382
    if-eqz p0, :cond_0

    .line 385
    instance-of v0, p0, Ljava/sql/Date;

    if-nez v0, :cond_1

    .line 388
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_2

    .line 391
    instance-of v0, p0, Ljava/util/Calendar;

    if-nez v0, :cond_3

    .line 395
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 398
    :goto_0
    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_5

    move-wide v6, v0

    .line 416
    :goto_1
    cmp-long v0, v6, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_b

    .line 417
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    return-object v6

    .line 386
    :cond_1
    check-cast p0, Ljava/sql/Date;

    return-object p0

    .line 389
    :cond_2
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 392
    :cond_3
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    :cond_4
    move-object v0, p0

    .line 396
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    .line 399
    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 403
    :cond_6
    return-object v6

    :cond_7
    const-string/jumbo v1, "null"

    .line 401
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "NULL"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 405
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 408
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-nez v5, :cond_9

    .line 412
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to Timestamp, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    .line 410
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    :cond_a
    move v0, v4

    .line 416
    goto/16 :goto_2

    .line 419
    :cond_b
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v6, v7}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 423
    if-eqz p0, :cond_0

    .line 426
    instance-of v0, p0, Ljava/sql/Time;

    if-nez v0, :cond_1

    .line 429
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_2

    .line 432
    instance-of v0, p0, Ljava/util/Calendar;

    if-nez v0, :cond_3

    .line 436
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 439
    :goto_0
    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_5

    move-wide v6, v0

    .line 456
    :goto_1
    cmp-long v0, v6, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_b

    .line 457
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    return-object v6

    .line 427
    :cond_1
    check-cast p0, Ljava/sql/Time;

    return-object p0

    .line 430
    :cond_2
    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 433
    :cond_3
    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    :cond_4
    move-object v0, p0

    .line 437
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    .line 440
    check-cast v0, Ljava/lang/String;

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 443
    :cond_6
    return-object v6

    :cond_7
    const-string/jumbo v1, "null"

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 445
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 448
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-nez v5, :cond_9

    .line 452
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to Timestamp, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    .line 450
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    :cond_a
    move v0, v4

    .line 456
    goto/16 :goto_2

    .line 459
    :cond_b
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, v6, v7}, Ljava/sql/Time;-><init>(J)V

    return-object v0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 463
    if-eqz p0, :cond_0

    .line 466
    instance-of v0, p0, Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 469
    instance-of v0, p0, Ljava/sql/Timestamp;

    if-nez v0, :cond_2

    .line 472
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_3

    .line 476
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 479
    :goto_0
    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_5

    move-wide v6, v0

    .line 502
    :goto_1
    cmp-long v0, v6, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_d

    .line 503
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not cast to Timestamp, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    return-object v6

    .line 467
    :cond_1
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 470
    :cond_2
    check-cast p0, Ljava/sql/Timestamp;

    return-object p0

    .line 473
    :cond_3
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_4
    move-object v0, p0

    .line 477
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    .line 480
    check-cast v0, Ljava/lang/String;

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 484
    :cond_6
    return-object v6

    :cond_7
    const-string/jumbo v1, "null"

    .line 482
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "NULL"

    .line 483
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, ".000000000"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, ".000000"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 491
    :goto_3
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 494
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-nez v5, :cond_b

    .line 498
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to Timestamp, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 489
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 492
    :cond_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    .line 496
    :cond_b
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-wide v6, v0

    goto/16 :goto_1

    :cond_c
    move v0, v4

    .line 502
    goto/16 :goto_2

    .line 505
    :cond_d
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .line 2017
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string/jumbo v0, "["

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 2020
    :goto_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_1

    .line 2026
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 2052
    :cond_0
    :goto_1
    return-object p0

    .line 2021
    :cond_1
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 2022
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 2027
    :cond_2
    check-cast v0, Ljava/lang/Class;

    .line 2028
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2030
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_3

    .line 2032
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    .line 2034
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_5

    .line 2036
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_6

    .line 2038
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_7

    .line 2040
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_8

    .line 2042
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    .line 2044
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 2031
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 2033
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_1

    .line 2035
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_1

    .line 2037
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_1

    .line 2039
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_1

    .line 2041
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_1

    .line 2043
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_1

    .line 2048
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public static clearClassMapping()V
    .locals 1

    .prologue
    .line 1179
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1180
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 1181
    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1695
    move-object/from16 v0, p4

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_0

    .line 1732
    return-void

    .line 1695
    :cond_0
    aget-object v4, p4, v13

    .line 1696
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1699
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1701
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    .line 1703
    if-nez v11, :cond_2

    move-object v2, v1

    .line 1717
    :goto_1
    if-nez p1, :cond_5

    .line 1723
    :goto_2
    if-nez p2, :cond_6

    .line 1726
    :goto_3
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1695
    :cond_1
    :goto_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 1704
    :cond_2
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1707
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 1708
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 1709
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 1710
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1713
    :goto_5
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_1

    .line 1711
    :cond_3
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1714
    :cond_4
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v12

    move-object v2, v1

    goto :goto_1

    .line 1718
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1719
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_2

    .line 1724
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1727
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1729
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    new-instance v21, Ljava/util/LinkedHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1375
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v22

    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 1378
    check-cast v4, [[Ljava/lang/annotation/Annotation;

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1381
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v23

    .line 1382
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/4 v5, 0x0

    move/from16 v20, v5

    move-object v9, v4

    move-object v5, v6

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 1650
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1651
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1652
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1382
    :cond_0
    aget-object v6, v23, v20

    .line 1383
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v25

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 1386
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1389
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1392
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_8

    .line 1395
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/ClassLoader;

    if-eq v4, v8, :cond_9

    const-string/jumbo v4, "getMetaClass"

    .line 1399
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_1
    const-string/jumbo v4, "getSuppressed"

    .line 1403
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1408
    :cond_2
    if-nez v22, :cond_c

    .line 1414
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1415
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1416
    if-eqz v4, :cond_d

    move-object v14, v4

    .line 1419
    :goto_1
    if-eqz v14, :cond_e

    :cond_4
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v13

    move-object v13, v14

    .line 1471
    :goto_2
    if-nez v13, :cond_1e

    :cond_5
    :goto_3
    const-string/jumbo v4, "get"

    .line 1495
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    :goto_4
    const-string/jumbo v4, "is"

    .line 1576
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1382
    :goto_5
    add-int/lit8 v8, v20, 0x1

    move/from16 v20, v8

    move-object v9, v6

    move-object v13, v7

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_0

    :cond_6
    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1387
    goto :goto_5

    :cond_7
    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1390
    goto :goto_5

    :cond_8
    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1393
    goto :goto_5

    :cond_9
    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1396
    goto :goto_5

    .line 1400
    :cond_a
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1401
    goto :goto_5

    .line 1404
    :cond_b
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Throwable;

    if-ne v4, v8, :cond_2

    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1405
    goto :goto_5

    .line 1408
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    move-object v6, v9

    move-object v5, v7

    move-object v7, v13

    .line 1409
    goto :goto_5

    .line 1417
    :cond_d
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v14

    goto/16 :goto_1

    .line 1419
    :cond_e
    if-eqz v22, :cond_4

    .line 1420
    if-eqz v13, :cond_11

    move-object/from16 v19, v13

    .line 1440
    :cond_f
    :goto_6
    if-nez v7, :cond_14

    :cond_10
    move-object v13, v14

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_2

    .line 1421
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 1422
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1423
    if-eqz v4, :cond_f

    .line 1424
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    .line 1425
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v7

    .line 1426
    if-nez v7, :cond_12

    move-object v9, v13

    goto :goto_6

    .line 1427
    :cond_12
    array-length v4, v7

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1428
    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v4, v9, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1430
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1431
    array-length v4, v7

    new-array v5, v4, [S

    .line 1432
    const/4 v4, 0x0

    :goto_7
    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v4, v0, :cond_13

    move-object v7, v9

    move-object v9, v13

    .line 1436
    goto :goto_6

    .line 1433
    :cond_13
    aget-object v16, v7, v4

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    .line 1434
    int-to-short v0, v4

    move/from16 v17, v0

    aput-short v17, v5, v16

    .line 1432
    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_7

    .line 1440
    :cond_14
    if-eqz v5, :cond_10

    const-string/jumbo v4, "get"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x3

    .line 1441
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1442
    move-object/from16 v0, v16

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 1443
    if-ltz v13, :cond_16

    move v4, v13

    .line 1451
    :cond_15
    :goto_8
    if-gez v4, :cond_18

    move-object v13, v14

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x0

    .line 1444
    :goto_9
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_17

    move v4, v13

    goto :goto_8

    .line 1445
    :cond_17
    aget-object v17, v7, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 1444
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1452
    :cond_18
    aget-short v4, v5, v4

    .line 1453
    aget-object v17, v9, v4

    .line 1454
    if-nez v17, :cond_19

    move-object v13, v14

    .line 1462
    :goto_a
    if-eqz v13, :cond_1c

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_2

    .line 1455
    :cond_19
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_b
    move/from16 v0, v18

    if-lt v13, v0, :cond_1a

    move-object v13, v14

    goto :goto_a

    :cond_1a
    aget-object v4, v17, v13

    .line 1456
    instance-of v0, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v26, v0

    if-nez v26, :cond_1b

    .line 1455
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_b

    .line 1457
    :cond_1b
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1458
    goto :goto_a

    .line 1463
    :cond_1c
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1464
    if-nez v4, :cond_1d

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_2

    :cond_1d
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1465
    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    goto/16 :goto_2

    .line 1472
    :cond_1e
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1475
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1476
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1477
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 1478
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    .line 1491
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1492
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1473
    goto/16 :goto_5

    .line 1479
    :cond_20
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1480
    if-nez p2, :cond_21

    .line 1486
    :goto_c
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v15}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1489
    goto/16 :goto_5

    .line 1481
    :cond_21
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1482
    if-eqz v4, :cond_22

    move-object v5, v4

    goto :goto_c

    :cond_22
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1483
    goto/16 :goto_5

    .line 1496
    :cond_23
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_28

    const-string/jumbo v4, "getClass"

    .line 1499
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "getDeclaringClass"

    .line 1502
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_24
    const/4 v4, 0x3

    .line 1505
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1507
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1510
    :cond_25
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-nez v4, :cond_2d

    .line 1513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_d
    const/4 v5, 0x3

    .line 1515
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1525
    :goto_e
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    .line 1526
    if-nez v4, :cond_31

    .line 1530
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1531
    if-eqz v7, :cond_32

    :cond_26
    :goto_f
    const/4 v4, 0x0

    .line 1539
    if-nez v7, :cond_33

    move-object v14, v4

    .line 1563
    :goto_10
    if-nez p2, :cond_39

    .line 1569
    :goto_11
    if-nez p5, :cond_3b

    .line 1572
    :cond_27
    :goto_12
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v15}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_28
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1497
    goto/16 :goto_5

    :cond_29
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1500
    goto/16 :goto_5

    .line 1502
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1503
    goto/16 :goto_5

    :cond_2b
    const/16 v5, 0x200

    .line 1507
    if-gt v4, v5, :cond_25

    const/16 v5, 0x5f

    .line 1516
    if-eq v4, v5, :cond_2e

    const/16 v5, 0x66

    .line 1518
    if-eq v4, v5, :cond_2f

    .line 1520
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_30

    :cond_2c
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_5

    :cond_2d
    const/4 v4, 0x3

    .line 1511
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_2e
    const/4 v4, 0x4

    .line 1517
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_e

    :cond_2f
    const/4 v4, 0x3

    .line 1519
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_e

    :cond_30
    const/4 v4, 0x4

    .line 1520
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x3

    .line 1521
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_e

    :cond_31
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1527
    goto/16 :goto_5

    .line 1531
    :cond_32
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_26

    const/4 v4, 0x1

    .line 1532
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x41

    .line 1533
    if-lt v4, v9, :cond_26

    const/16 v9, 0x5a

    if-gt v4, v9, :cond_26

    const/4 v4, 0x3

    .line 1534
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1535
    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    goto/16 :goto_f

    :cond_33
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1540
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1541
    if-nez v4, :cond_34

    move-object v14, v4

    goto/16 :goto_10

    .line 1542
    :cond_34
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1545
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1546
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1547
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 1548
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_37

    .line 1558
    :cond_35
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_38

    move-object v14, v4

    goto/16 :goto_10

    :cond_36
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1543
    goto/16 :goto_5

    .line 1549
    :cond_37
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1550
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1551
    if-eqz p2, :cond_35

    .line 1552
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1553
    if-nez v5, :cond_35

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1554
    goto/16 :goto_5

    .line 1559
    :cond_38
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v15

    move-object v14, v4

    goto/16 :goto_10

    .line 1564
    :cond_39
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1565
    if-eqz v4, :cond_3a

    move-object v5, v4

    goto/16 :goto_11

    :cond_3a
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1566
    goto/16 :goto_5

    .line 1569
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1570
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_12

    .line 1577
    :cond_3c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3e

    .line 1580
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3f

    :cond_3d
    const/4 v4, 0x2

    .line 1584
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1586
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_40

    const/16 v5, 0x5f

    .line 1593
    if-eq v4, v5, :cond_42

    const/16 v5, 0x66

    .line 1595
    if-eq v4, v5, :cond_43

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_5

    :cond_3e
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1578
    goto/16 :goto_5

    .line 1581
    :cond_3f
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    if-eq v4, v5, :cond_3d

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1582
    goto/16 :goto_5

    .line 1587
    :cond_40
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-nez v4, :cond_41

    .line 1590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13
    const/4 v5, 0x2

    .line 1592
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1600
    :goto_14
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    .line 1601
    if-nez v4, :cond_44

    .line 1604
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1605
    if-eqz v7, :cond_45

    :goto_15
    const/4 v4, 0x0

    .line 1609
    if-nez v7, :cond_46

    move-object v14, v4

    .line 1632
    :goto_16
    if-nez p2, :cond_4c

    .line 1638
    :goto_17
    if-nez p5, :cond_4e

    .line 1642
    :goto_18
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1645
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v15}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_5

    :cond_41
    const/4 v4, 0x2

    .line 1588
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_42
    const/4 v4, 0x3

    .line 1594
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_14

    :cond_43
    const/4 v4, 0x2

    .line 1596
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_14

    :cond_44
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1602
    goto/16 :goto_5

    .line 1606
    :cond_45
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    goto :goto_15

    :cond_46
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1610
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1611
    if-nez v4, :cond_47

    move-object v14, v4

    goto :goto_16

    .line 1612
    :cond_47
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 1615
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1616
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1617
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 1618
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4a

    .line 1627
    :cond_48
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4b

    move-object v14, v4

    goto/16 :goto_16

    :cond_49
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1613
    goto/16 :goto_5

    .line 1619
    :cond_4a
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1620
    if-eqz p2, :cond_48

    .line 1621
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1622
    if-nez v5, :cond_48

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1623
    goto/16 :goto_5

    .line 1628
    :cond_4b
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v15

    move-object v14, v4

    goto/16 :goto_16

    .line 1633
    :cond_4c
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1634
    if-eqz v4, :cond_4d

    move-object v5, v4

    goto/16 :goto_17

    :cond_4d
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1635
    goto/16 :goto_5

    .line 1639
    :cond_4e
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_18

    :cond_4f
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .line 1643
    goto/16 :goto_5
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1357
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1361
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1362
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1363
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1364
    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, p0

    .line 1349
    :goto_0
    if-nez v0, :cond_0

    .line 1353
    invoke-static {p0, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1350
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1351
    invoke-static {v0, p1, p3, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1349
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2057
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/util/AbstractCollection;

    .line 2059
    if-ne v1, v0, :cond_1

    .line 2061
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    :goto_0
    return-object v0

    :cond_1
    const-class v0, Ljava/util/Collection;

    .line 2059
    if-eq v1, v0, :cond_0

    const-class v0, Ljava/util/HashSet;

    .line 2062
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/util/LinkedHashSet;

    .line 2064
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/util/TreeSet;

    .line 2066
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Ljava/util/ArrayList;

    .line 2068
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/util/EnumSet;

    .line 2070
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2080
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2063
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 2065
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    .line 2067
    :cond_4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_0

    .line 2069
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2072
    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_7

    const-class v0, Ljava/lang/Object;

    .line 2077
    :goto_1
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 2073
    :cond_7
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_1

    .line 2083
    :catch_0
    move-exception v0

    .line 2082
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1942
    if-nez p0, :cond_1

    .line 1943
    :cond_0
    return-object p0

    .line 1942
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 1948
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1949
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 1950
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1945
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1946
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v0, 0x0

    .line 2210
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2215
    return-wide v2

    .line 2211
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2212
    int-to-long v4, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    .line 2213
    mul-long/2addr v2, v4

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v0, 0x0

    .line 2194
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2205
    return-wide v2

    .line 2195
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5f

    .line 2196
    if-ne v1, v4, :cond_2

    .line 2194
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x2d

    .line 2196
    if-eq v1, v4, :cond_1

    const/16 v4, 0x41

    .line 2199
    if-ge v1, v4, :cond_4

    .line 2202
    :cond_3
    :goto_2
    int-to-long v4, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    .line 2203
    mul-long/2addr v2, v4

    goto :goto_1

    :cond_4
    const/16 v4, 0x5a

    .line 2199
    if-gt v1, v4, :cond_3

    .line 2200
    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    goto :goto_2
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2341
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 2342
    if-nez v1, :cond_1

    .line 2346
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 2354
    :cond_0
    return-object v4

    .line 2343
    :cond_1
    return-object v1

    .line 2347
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2348
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 2349
    if-nez v3, :cond_3

    .line 2347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2350
    :cond_3
    return-object v3
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1880
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 1884
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2

    .line 1888
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_3

    .line 1893
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_4

    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 1900
    return-object v0

    .line 1881
    :cond_1
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1885
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1889
    :cond_3
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    .line 1890
    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 1894
    :cond_4
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1895
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1896
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1202
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1992
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Object;

    .line 2012
    return-object v0

    .line 1994
    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v4

    .line 1995
    instance-of v0, v1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2002
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 2008
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can not create ASMParser"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 1996
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1997
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1998
    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 1999
    :cond_2
    aget-object v1, v0, v4

    move-object v0, v1

    goto :goto_0

    .line 2003
    :cond_3
    check-cast v0, Ljava/lang/Class;

    .line 2004
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2010
    return-object v0

    .line 2005
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can not create ASMParser"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1970
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    .line 1980
    instance-of v1, p0, Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 1985
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1988
    :goto_1
    return-object v0

    .line 1971
    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v4

    .line 1972
    instance-of v0, v1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    move-object v0, v1

    .line 1980
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1973
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1974
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1975
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1976
    aget-object v1, v0, v4

    goto :goto_2

    .line 1980
    :cond_4
    check-cast p0, Ljava/lang/Class;

    .line 1981
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1982
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1983
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1904
    array-length v2, p2

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 1918
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1919
    if-nez v0, :cond_5

    .line 1922
    :cond_0
    return-object v7

    .line 1904
    :cond_1
    aget-object v3, p2, v0

    .line 1905
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1906
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_4

    .line 1904
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1907
    :cond_3
    return-object v3

    .line 1912
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_2

    const/4 v5, 0x1

    .line 1913
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_2

    .line 1914
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1915
    return-object v3

    :cond_5
    const-class v1, Ljava/lang/Object;

    .line 1919
    if-eq v0, v1, :cond_0

    .line 1920
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1658
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1659
    if-nez v0, :cond_2

    .line 1662
    :goto_0
    if-nez v2, :cond_3

    .line 1679
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1682
    if-nez p1, :cond_8

    .line 1686
    :cond_1
    :goto_2
    return-object v3

    .line 1660
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 1662
    :cond_3
    array-length v0, v2

    if-lez v0, :cond_0

    .line 1663
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1664
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1668
    array-length v5, v2

    :goto_4
    if-lt v1, v5, :cond_5

    .line 1675
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1676
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1664
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1665
    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1668
    :cond_5
    aget-object v6, v2, v1

    .line 1669
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1670
    if-nez v0, :cond_6

    .line 1668
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1671
    :cond_6
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1679
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1680
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1683
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 1851
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 1854
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1857
    return-object p0

    .line 1852
    :cond_0
    return-object p0

    .line 1855
    :cond_1
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2231
    array-length v3, p0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 2241
    return-object v0

    .line 2231
    :cond_0
    aget-object v1, p0, v2

    .line 2232
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 2233
    array-length v5, v4

    if-gtz v5, :cond_2

    .line 2236
    :goto_1
    if-nez v0, :cond_3

    :goto_2
    move-object v0, v1

    .line 2231
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2233
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 2236
    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-ge v5, v4, :cond_1

    goto :goto_2
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2245
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4

    .line 2253
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_5

    .line 2257
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 2266
    :cond_1
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 2275
    :cond_2
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    .line 2284
    :cond_3
    :goto_3
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-nez v0, :cond_9

    .line 2290
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2291
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2292
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v4

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2300
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    move v2, v1

    .line 2302
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-lt v2, v1, :cond_d

    .line 2306
    return-object v3

    .line 2245
    :cond_4
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "kotlin.reflect.jvm.internal.KClassImpl"

    .line 2247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    .line 2248
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2251
    :catch_0
    move-exception v0

    .line 2250
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_0

    .line 2254
    :cond_5
    return-object v4

    .line 2257
    :cond_6
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_1

    :try_start_2
    const-string/jumbo v0, "kotlin.reflect.jvm.internal.KClassImpl"

    .line 2259
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getConstructors"

    const/4 v3, 0x0

    .line 2260
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2263
    :catch_1
    move-exception v0

    .line 2262
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto/16 :goto_1

    .line 2266
    :cond_7
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_2

    :try_start_3
    const-string/jumbo v0, "kotlin.reflect.KFunction"

    .line 2268
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getParameters"

    const/4 v3, 0x0

    .line 2269
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 2272
    :catch_2
    move-exception v0

    .line 2271
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto/16 :goto_2

    .line 2275
    :cond_8
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_3

    :try_start_4
    const-string/jumbo v0, "kotlin.reflect.KParameter"

    .line 2277
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getName"

    const/4 v3, 0x0

    .line 2278
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 2281
    :catch_3
    move-exception v0

    .line 2280
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto/16 :goto_3

    .line 2285
    :cond_9
    return-object v4

    .line 2293
    :cond_a
    :try_start_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2294
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2295
    if-nez v2, :cond_c

    :cond_b
    move-object v0, v3

    .line 2292
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-object v2, v0

    goto/16 :goto_4

    .line 2295
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v2

    .line 2296
    goto :goto_6

    .line 2303
    :cond_d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2304
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 2302
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5

    .line 2306
    :catch_4
    move-exception v0

    .line 2308
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2309
    sput-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 2311
    return-object v4
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1934
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1935
    if-eqz v0, :cond_0

    .line 1938
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1936
    return v0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1736
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-nez v0, :cond_1

    .line 1742
    :cond_0
    return-object p2

    .line 1737
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1739
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-object p2

    :cond_2
    move-object p2, v0

    goto :goto_0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2089
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2091
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    .line 2094
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2090
    :cond_0
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2092
    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1926
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1927
    if-eqz v0, :cond_0

    .line 1930
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1928
    return v0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1746
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 1747
    array-length v0, v4

    if-gtz v0, :cond_2

    .line 1775
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1776
    if-eqz v0, :cond_8

    .line 1779
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_1
    const/4 v0, 0x0

    .line 1805
    return-object v0

    .line 1748
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1749
    array-length v6, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v0, v4, v3

    .line 1750
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v8, :cond_3

    .line 1749
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1750
    :cond_3
    aget-object v9, v7, v2

    .line 1751
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 1752
    array-length v0, v10

    array-length v1, v5

    if-ne v0, v1, :cond_4

    .line 1755
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1758
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1759
    :goto_2
    array-length v11, v5

    if-lt v0, v11, :cond_5

    move v0, v1

    .line 1765
    :goto_3
    if-eqz v0, :cond_4

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1768
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1769
    if-nez v0, :cond_7

    .line 1750
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1760
    :cond_5
    aget-object v11, v10, v0

    aget-object v12, v5, v0

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1761
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 1770
    :cond_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    .line 1777
    return-object v0

    .line 1780
    :cond_9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1781
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 1782
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1783
    array-length v0, v7

    array-length v1, v3

    if-ne v0, v1, :cond_a

    .line 1786
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1789
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1790
    :goto_5
    array-length v8, v3

    if-lt v0, v8, :cond_b

    move v0, v1

    .line 1796
    :goto_6
    if-eqz v0, :cond_a

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1799
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1800
    if-nez v0, :cond_d

    .line 1781
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1791
    :cond_b
    aget-object v8, v7, v0

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1792
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 1801
    :cond_d
    return-object v0
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2152
    if-eqz p0, :cond_2

    .line 2156
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 2164
    :cond_0
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-nez v2, :cond_4

    :goto_1
    move v0, v1

    :cond_1
    return v0

    .line 2153
    :cond_2
    return v1

    .line 2156
    :cond_3
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "javax.persistence.ManyToMany"

    .line 2158
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2162
    :catch_0
    move-exception v2

    .line 2161
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    goto :goto_0

    .line 2164
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2135
    if-eqz p0, :cond_2

    .line 2139
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 2147
    :cond_0
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v2, :cond_4

    :goto_1
    move v0, v1

    :cond_1
    return v0

    .line 2136
    :cond_2
    return v1

    .line 2139
    :cond_3
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "javax.persistence.OneToMany"

    .line 2141
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2145
    :catch_0
    move-exception v2

    .line 2144
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    goto :goto_0

    .line 2147
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1840
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_0

    .line 1843
    instance-of v2, p0, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 1847
    return v1

    .line 1841
    :cond_0
    return v0

    .line 1844
    :cond_1
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    .line 1845
    if-ne v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_2
    return v0

    :cond_3
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2169
    if-eqz p0, :cond_1

    .line 2172
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 2181
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 2189
    :goto_1
    return v5

    .line 2170
    :cond_1
    return v0

    .line 2172
    :cond_2
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "org.hibernate.Hibernate"

    .line 2174
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "isInitialized"

    const/4 v2, 0x1

    .line 2175
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2179
    :catch_0
    move-exception v0

    .line 2178
    sput-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    goto :goto_0

    .line 2183
    :cond_3
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2184
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1809
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1810
    if-nez v0, :cond_2

    .line 1831
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 1836
    :cond_1
    return v1

    .line 1814
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v2

    .line 1815
    array-length v3, v2

    if-gtz v3, :cond_3

    .line 1823
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1824
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1825
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1816
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_4

    .line 1821
    return v4

    .line 1817
    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1818
    :cond_5
    return v1

    .line 1826
    :cond_6
    return v4

    .line 1831
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1832
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    return v4
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2219
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 2226
    :cond_0
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v2, :cond_3

    :goto_1
    move v0, v1

    :cond_1
    return v0

    .line 2219
    :cond_2
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "kotlin.Metadata"

    .line 2221
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2224
    :catch_0
    move-exception v2

    .line 2223
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    goto :goto_0

    .line 2226
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2315
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2333
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2336
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2337
    if-nez v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    return v0

    .line 2315
    :cond_2
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v0, :cond_0

    .line 2317
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "kotlin.ranges.CharRange"

    .line 2318
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 2319
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEndInclusive"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isEmpty"

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "kotlin.ranges.IntRange"

    .line 2320
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 2321
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEndInclusive"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isEmpty"

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "kotlin.ranges.LongRange"

    .line 2322
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 2323
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEndInclusive"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isEmpty"

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "kotlin.ranges.ClosedFloatRange"

    .line 2324
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 2325
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEndInclusive"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isEmpty"

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "kotlin.ranges.ClosedDoubleRange"

    .line 2326
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    .line 2327
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getEndInclusive"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "isEmpty"

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2331
    :catch_0
    move-exception v0

    .line 2330
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    goto/16 :goto_0

    .line 2334
    :cond_3
    return v2

    .line 2337
    :cond_4
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    goto/16 :goto_1
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 509
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 519
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    .line 511
    if-ne v2, v3, :cond_2

    .line 512
    :cond_1
    if-nez v0, :cond_4

    .line 509
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x2d

    .line 511
    if-eq v2, v3, :cond_1

    const/16 v3, 0x30

    .line 515
    if-ge v2, v3, :cond_5

    .line 516
    :cond_3
    return v1

    .line 513
    :cond_4
    return v1

    :cond_5
    const/16 v3, 0x39

    .line 515
    if-gt v2, v3, :cond_3

    goto :goto_1
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1188
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1195
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 1198
    return v1

    .line 1188
    :cond_1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "java.nio.file.Path"

    .line 1190
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    goto :goto_0

    .line 1196
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2099
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 2111
    return v1

    .line 2099
    :cond_0
    aget-object v4, v2, v0

    .line 2100
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "net.sf.cglib.proxy.Factory"

    .line 2101
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2103
    :cond_1
    return v6

    :cond_2
    const-string/jumbo v5, "org.springframework.cglib.proxy.Factory"

    .line 2102
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "javassist.util.proxy.ProxyObject"

    .line 2105
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2108
    :cond_3
    return v6

    :cond_4
    const-string/jumbo v5, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2106
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2115
    if-eqz p0, :cond_0

    .line 2118
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    if-eqz v2, :cond_1

    .line 2127
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 2131
    return v0

    .line 2116
    :cond_0
    return v0

    :cond_1
    :try_start_0
    const-string/jumbo v2, "java.beans.Transient"

    .line 2120
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2124
    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    goto :goto_0

    .line 2125
    :catchall_0
    move-exception v0

    .line 2124
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    throw v0

    .line 2128
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 2129
    if-nez v2, :cond_3

    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 2125
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1184
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1206
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1210
    if-nez p0, :cond_1

    .line 1211
    :cond_0
    return-object v1

    .line 1210
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1214
    if-nez v0, :cond_4

    .line 1217
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_5

    const-string/jumbo v1, "L"

    .line 1221
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1226
    :cond_2
    if-nez p1, :cond_7

    .line 1238
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1239
    if-nez v1, :cond_9

    .line 1250
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1251
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1252
    return-object v0

    .line 1215
    :cond_4
    return-object v0

    .line 1218
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1219
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v1, ";"

    .line 1221
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1227
    :cond_7
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 1228
    if-nez p2, :cond_8

    .line 1231
    :goto_2
    return-object v1

    .line 1229
    :cond_8
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1236
    :catch_0
    move-exception v0

    .line 1234
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 1239
    :cond_9
    if-eq v1, p1, :cond_3

    .line 1240
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1241
    if-nez p2, :cond_a

    .line 1244
    :goto_4
    return-object v0

    .line 1242
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1248
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1252
    :catch_2
    move-exception v1

    .line 1256
    return-object v0

    .line 1236
    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1954
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-eqz v0, :cond_0

    .line 1957
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1961
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :goto_0
    return-void

    .line 1955
    :cond_0
    return-void

    .line 1958
    :cond_1
    return-void

    .line 1964
    :catch_0
    move-exception v0

    .line 1963
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "_"

    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 809
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 812
    array-length v1, v0

    if-eq v1, v4, :cond_1

    .line 815
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 810
    :cond_0
    new-instance v1, Ljava/util/Locale;

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 813
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1861
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-eqz v0, :cond_1

    .line 1870
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2

    .line 1876
    :cond_0
    return-object p0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "java.util.Optional"

    .line 1863
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    goto :goto_0

    .line 1868
    :catchall_0
    move-exception v0

    .line 1867
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v0

    :cond_2
    move-object v0, p0

    .line 1871
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1872
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1873
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    return-object v0

    .line 1868
    :catch_0
    move-exception v0

    goto :goto_1
.end method
