.class public final Lcom/sun/jna/Native;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Lcom/sun/jna/Version;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Native$AWT;,
        Lcom/sun/jna/Native$Buffers;,
        Lcom/sun/jna/Native$ffi_callback;
    }
.end annotation


# static fields
.field public static final BOOL_SIZE:I

.field static final CB_HAS_INITIALIZER:I = 0x1

.field static final CB_OPTION_DIRECT:I = 0x1

.field static final CB_OPTION_IN_DLL:I = 0x2

.field private static final CVT_ARRAY_BOOLEAN:I = 0xd

.field private static final CVT_ARRAY_BYTE:I = 0x6

.field private static final CVT_ARRAY_CHAR:I = 0x8

.field private static final CVT_ARRAY_DOUBLE:I = 0xc

.field private static final CVT_ARRAY_FLOAT:I = 0xb

.field private static final CVT_ARRAY_INT:I = 0x9

.field private static final CVT_ARRAY_LONG:I = 0xa

.field private static final CVT_ARRAY_SHORT:I = 0x7

.field private static final CVT_BOOLEAN:I = 0xe

.field private static final CVT_BUFFER:I = 0x5

.field private static final CVT_BYTE:I = 0x1d

.field private static final CVT_CALLBACK:I = 0xf

.field private static final CVT_DEFAULT:I = 0x0

.field private static final CVT_FLOAT:I = 0x10

.field private static final CVT_INTEGER_TYPE:I = 0x15

.field private static final CVT_JNIENV:I = 0x1b

.field private static final CVT_NATIVE_MAPPED:I = 0x11

.field private static final CVT_NATIVE_MAPPED_STRING:I = 0x12

.field private static final CVT_NATIVE_MAPPED_WSTRING:I = 0x13

.field private static final CVT_OBJECT:I = 0x1a

.field private static final CVT_POINTER:I = 0x1

.field private static final CVT_POINTER_TYPE:I = 0x16

.field private static final CVT_SHORT:I = 0x1c

.field private static final CVT_STRING:I = 0x2

.field private static final CVT_STRUCTURE:I = 0x3

.field private static final CVT_STRUCTURE_BYVAL:I = 0x4

.field private static final CVT_TYPE_MAPPER:I = 0x17

.field private static final CVT_TYPE_MAPPER_STRING:I = 0x18

.field private static final CVT_TYPE_MAPPER_WSTRING:I = 0x19

.field private static final CVT_UNSUPPORTED:I = -0x1

.field private static final CVT_WSTRING:I = 0x14

.field public static final DEBUG_JNA_LOAD:Z

.field private static final DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

.field public static final DEBUG_LOAD:Z

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_ENCODING:Ljava/lang/String;

.field private static final DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field static final JNA_TMPLIB_PREFIX:Ljava/lang/String; = "jna"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final LONG_DOUBLE_SIZE:I

.field public static final LONG_SIZE:I

.field static final MAX_ALIGNMENT:I

.field static final MAX_PADDING:I

.field public static final POINTER_SIZE:I

.field public static final SIZE_T_SIZE:I

.field private static final TYPE_BOOL:I = 0x4

.field private static final TYPE_LONG:I = 0x1

.field private static final TYPE_LONG_DOUBLE:I = 0x5

.field private static final TYPE_SIZE_T:I = 0x3

.field private static final TYPE_VOIDP:I = 0x0

.field private static final TYPE_WCHAR_T:I = 0x2

.field public static final WCHAR_SIZE:I

.field private static final _OPTION_ENCLOSING_LIBRARY:Ljava/lang/String; = "enclosing-library"

.field private static callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field private static final finalizer:Ljava/lang/Object;

.field static jnidispatchPath:Ljava/lang/String;

.field private static final libraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/Reference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sun/jna/Memory;",
            ">;"
        }
    .end annotation
.end field

.field private static final nativeThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sun/jna/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private static final registeredClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[J>;"
        }
    .end annotation
.end field

.field private static final registeredLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 114
    const-class v0, Lcom/sun/jna/Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 129
    const-string v0, "native.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "nativeEncoding":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "nativeCharset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get charset for native.encoding value : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 139
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 141
    :cond_1
    sput-object v1, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 142
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 144
    .end local v0    # "nativeEncoding":Ljava/lang/String;
    .end local v1    # "nativeCharset":Ljava/nio/charset/Charset;
    const-string v0, "jna.debug_load"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    .line 145
    const-string v0, "jna.debug_load.jna"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    .line 146
    sget-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_1
    sput-object v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 153
    new-instance v0, Lcom/sun/jna/Native$1;

    invoke-direct {v0}, Lcom/sun/jna/Native$1;-><init>()V

    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 160
    sget-object v0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    sput-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 221
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibrary()V

    .line 223
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7.0.4"

    invoke-static {v1, v0}, Lcom/sun/jna/Native;->isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "LS":Ljava/lang/String;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "There is an incompatible JNA native library installed on this system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Found:    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    sget-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, "java.library.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "To resolve this issue you may do one of the following:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - remove or uninstall the offending library"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - set the system property jna.nosys=true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - set jna.boot.library.path to include the path to the version of the "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   jnidispatch library included with the JNA jar file you are using"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    .end local v0    # "LS":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v0

    sput v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 240
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v1

    sput v1, Lcom/sun/jna/Native;->LONG_SIZE:I

    .line 241
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v1

    sput v1, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 242
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v1

    sput v1, Lcom/sun/jna/Native;->SIZE_T_SIZE:I

    .line 243
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v1

    sput v1, Lcom/sun/jna/Native;->BOOL_SIZE:I

    .line 244
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sun/jna/Native;->sizeof(I)I

    move-result v1

    sput v1, Lcom/sun/jna/Native;->LONG_DOUBLE_SIZE:I

    .line 248
    invoke-static {}, Lcom/sun/jna/Native;->initIDs()V

    .line 249
    const-string v1, "jna.protected"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    invoke-static {v0}, Lcom/sun/jna/Native;->setProtected(Z)V

    .line 252
    :cond_5
    invoke-static {}, Lcom/sun/jna/Platform;->isSPARC()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    if-nez v0, :cond_8

    .line 253
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sun/jna/Platform;->isARM()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isMIPS()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isLoongArch()Z

    move-result v0

    if-nez v0, :cond_8

    .line 254
    :cond_6
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 255
    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sun/jna/Platform;->isIntel()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 256
    :cond_7
    sget v0, Lcom/sun/jna/Native;->LONG_SIZE:I

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v1

    :goto_4
    sput v0, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    .line 257
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    sget v1, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    :goto_5
    sput v1, Lcom/sun/jna/Native;->MAX_PADDING:I

    .line 258
    const-string v0, "jna.loaded"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/sun/jna/Native$2;

    invoke-direct {v0}, Lcom/sun/jna/Native$2;-><init>()V

    sput-object v0, Lcom/sun/jna/Native;->finalizer:Ljava/lang/Object;

    .line 1551
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 1552
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    .line 2368
    new-instance v0, Lcom/sun/jna/Native$7;

    invoke-direct {v0}, Lcom/sun/jna/Native$7;-><init>()V

    sput-object v0, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    .line 2377
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
.end method

.method private static native _getPointer(J)J
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 112
    sget-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 112
    invoke-static {}, Lcom/sun/jna/Native;->dispose()V

    return-void
.end method

.method private static cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .param p2, "proxy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1971
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1972
    .local v0, "libOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "enclosing-library"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    sget-object v1, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    if-eqz p2, :cond_0

    .line 1975
    sget-object v1, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/sun/jna/Library;

    .line 1982
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1983
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1984
    .local v1, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1985
    .local v4, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/sun/jna/Library;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1986
    invoke-static {v4, v0, p2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 1987
    goto :goto_1

    .line 1984
    .end local v4    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1991
    .end local v1    # "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method static native close(J)V
.end method

.method static synchronized native createNativeCallback(Lcom/sun/jna/Callback;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;IILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/Callback;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method static deleteLibrary(Ljava/io/File;)Z
    .locals 1
    .param p0, "lib"    # Ljava/io/File;

    .line 295
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Native;->markTemporaryFile(Ljava/io/File;)V

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public static detach(Z)V
    .locals 5
    .param p0, "detach"    # Z

    .line 2391
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2392
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz p0, :cond_0

    .line 2399
    sget-object v1, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    sget-object v1, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Pointer;

    .line 2401
    .local v1, "p":Lcom/sun/jna/Pointer;
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/jna/Native;->setDetachState(ZJ)V

    .line 2402
    .end local v1    # "p":Lcom/sun/jna/Pointer;
    goto :goto_0

    .line 2404
    :cond_0
    sget-object v1, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2405
    sget-object v1, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Pointer;

    .line 2406
    .restart local v1    # "p":Lcom/sun/jna/Pointer;
    sget-object v2, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    const/4 v2, 0x0

    iget-wide v3, v1, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {v2, v3, v4}, Lcom/sun/jna/Native;->setDetachState(ZJ)V

    .line 2410
    .end local v1    # "p":Lcom/sun/jna/Pointer;
    :cond_1
    :goto_0
    return-void
.end method

.method private static dispose()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/sun/jna/CallbackReference;->disposeAll()V

    .line 276
    invoke-static {}, Lcom/sun/jna/Memory;->disposeAll()V

    .line 277
    invoke-static {}, Lcom/sun/jna/NativeLibrary;->disposeAll()V

    .line 278
    invoke-static {}, Lcom/sun/jna/Native;->unregisterAll()V

    .line 279
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 280
    const-string v0, "jna.loaded"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static extractFromResourcePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    sget-boolean v0, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    if-eqz v0, :cond_0

    .line 1094
    const-string v0, "jnidispatch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 1095
    .local v0, "DEBUG":Ljava/util/logging/Level;
    :goto_1
    if-nez p1, :cond_2

    .line 1096
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1098
    if-nez p1, :cond_2

    .line 1099
    const-class v1, Lcom/sun/jna/Native;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1102
    :cond_2
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Looking in classpath from {0} for {1}"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->mapSharedLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, "libname":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p0

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "resourcePath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 1106
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1108
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1109
    .local v4, "url":Ljava/net/URL;
    if-nez v4, :cond_9

    .line 1110
    sget-object v6, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1115
    sget-object v1, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    const-string v6, "darwin"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "darwin/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1118
    :cond_6
    if-nez v4, :cond_9

    .line 1120
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    goto :goto_4

    .line 1122
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com/sun/jna/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1127
    sget-object v1, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    const-string v6, "com/sun/jna/darwin"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1130
    :cond_8
    if-nez v4, :cond_9

    .line 1132
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1136
    :cond_9
    :goto_4
    if-nez v4, :cond_b

    .line 1137
    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, "path":Ljava/lang/String;
    instance-of v5, p1, Ljava/net/URLClassLoader;

    if-eqz v5, :cond_a

    .line 1139
    move-object v5, p1

    check-cast v5, Ljava/net/URLClassLoader;

    invoke-virtual {v5}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    :cond_a
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Native library ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") not found in resource path ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1143
    .end local v1    # "path":Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v5, "Found library resource at {0}"

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, "lib":Ljava/io/File;
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1148
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 1152
    goto :goto_5

    .line 1150
    :catch_0
    move-exception v5

    .line 1151
    .local v5, "e":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 1153
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :goto_5
    sget-object v5, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v6, "Looking in {0}"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_c

    .line 1155
    :cond_c
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be properly decoded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1158
    :cond_d
    const-string v5, "jna.nounpack"

    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1159
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1160
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_12

    .line 1164
    const/4 v6, 0x0

    .line 1169
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    move-result-object v7

    .line 1170
    .local v7, "dir":Ljava/io/File;
    const-string v8, "jna"

    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, ".dll"

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_6
    invoke-static {v8, v9, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    move-object v1, v8

    .line 1171
    const-string v8, "jnidispatch.preserve"

    invoke-static {v8}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 1172
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 1174
    :cond_f
    sget-object v8, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v9, "Extracting library to {0}"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v8

    .line 1177
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 1178
    .local v8, "buf":[B
    :goto_7
    array-length v9, v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v11, v9

    .local v11, "count":I
    if-lez v9, :cond_10

    .line 1179
    invoke-virtual {v6, v8, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 1186
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "buf":[B
    .end local v11    # "count":I
    :cond_10
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v7

    .line 1187
    :goto_8
    nop

    .line 1188
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :catch_2
    move-exception v7

    goto :goto_c

    .line 1186
    :catchall_0
    move-exception v7

    goto :goto_9

    .line 1182
    :catch_3
    move-exception v7

    .line 1183
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create temporary file for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " library: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "DEBUG":Ljava/util/logging/Level;
    .end local v1    # "lib":Ljava/io/File;
    .end local v2    # "libname":Ljava/lang/String;
    .end local v3    # "resourcePath":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1186
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v0    # "DEBUG":Ljava/util/logging/Level;
    .restart local v1    # "lib":Ljava/io/File;
    .restart local v2    # "libname":Ljava/lang/String;
    .restart local v3    # "resourcePath":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :goto_9
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_4
    move-exception v8

    .line 1187
    :goto_a
    if-eqz v6, :cond_11

    .line 1188
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    move-exception v8

    .line 1190
    :cond_11
    :goto_b
    throw v7

    .line 1161
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_12
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t obtain InputStream for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1192
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_13
    :goto_c
    return-object v1
.end method

.method public static native ffi_call(JJJJ)V
.end method

.method public static native ffi_free_closure(J)V
.end method

.method public static native ffi_prep_cif(IIJJ)J
.end method

.method public static native ffi_prep_closure(JLcom/sun/jna/Native$ffi_callback;)J
.end method

.method static findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1504
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1505
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1506
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    .line 1507
    return-object p0

    .line 1505
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1510
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1511
    .local v1, "idx":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1512
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1515
    :catch_0
    move-exception v3

    .line 1519
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t determine class with native methods from the current context ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 710
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 711
    const/4 v0, 0x0

    return-object v0

    .line 715
    :cond_0
    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 716
    .local v0, "libOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_2

    .line 717
    const-string v1, "enclosing-library"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 718
    .local v1, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 719
    return-object v1

    .line 721
    :cond_1
    return-object p0

    .line 723
    .end local v1    # "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-class v1, Lcom/sun/jna/Library;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    return-object p0

    .line 726
    :cond_3
    const-class v1, Lcom/sun/jna/Callback;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 727
    invoke-static {p0}, Lcom/sun/jna/CallbackReference;->findCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 729
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 730
    .local v1, "declaring":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 731
    .local v2, "fromDeclaring":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_5

    .line 732
    return-object v2

    .line 734
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    return-object v3
.end method

.method static native findSymbol(JLjava/lang/String;)J
.end method

.method public static native free(J)V
.end method

.method static synchronized native freeNativeCallback(J)V
.end method

.method private static fromNative(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sun/jna/NativeMapped;"
        }
    .end annotation

    .line 2015
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    new-instance v1, Lcom/sun/jna/FromNativeContext;

    invoke-direct {v1, p0}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/NativeMapped;

    return-object v0
.end method

.method private static fromNative(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .param p1, "value"    # Ljava/lang/Object;

    .line 2019
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 2020
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    new-instance v2, Lcom/sun/jna/MethodResultContext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, p0}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, p1, v2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/NativeMapped;

    return-object v1
.end method

.method private static fromNative(Lcom/sun/jna/FromNativeConverter;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3
    .param p0, "cvt"    # Lcom/sun/jna/FromNativeConverter;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;

    .line 2034
    new-instance v0, Lcom/sun/jna/MethodResultContext;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {p0, p1, v0}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static native getAPIChecksum()Ljava/lang/String;
.end method

.method static native getByte(Lcom/sun/jna/Pointer;JJ)B
.end method

.method static getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 862
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 874
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 884
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;
    .locals 1

    .line 1479
    sget-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    return-object v0
.end method

.method static getCallingClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1526
    new-instance v0, Lcom/sun/jna/Native$6;

    invoke-direct {v0}, Lcom/sun/jna/Native$6;-><init>()V

    .line 1531
    invoke-virtual {v0}, Lcom/sun/jna/Native$6;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    .line 1532
    .local v0, "context":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 1535
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1538
    const/4 v1, 0x3

    aget-object v1, v0, v1

    return-object v1

    .line 1536
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must be called from the static initializer of a class"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1533
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The SecurityManager implementation on this platform is broken; you must explicitly provide the class to register"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static native getChar(Lcom/sun/jna/Pointer;JJ)C
.end method

.method private static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "encoding"    # Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 398
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 403
    goto :goto_1

    .line 400
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    sget-object v2, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 402
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 401
    const-string v5, "JNA Warning: Encoding \'\'{0}\'\' is unsupported ({1})"

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 406
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "JNA Warning: Using fallback encoding {0}"

    sget-object v4, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 409
    :cond_1
    return-object v0
.end method

.method public static getComponentID(Ljava/awt/Component;)J
    .locals 2
    .param p0, "c"    # Ljava/awt/Component;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    .line 352
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getComponentPointer(Ljava/awt/Component;)Lcom/sun/jna/Pointer;
    .locals 3
    .param p0, "c"    # Ljava/awt/Component;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    .line 372
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object v0
.end method

.method private static getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I
    .locals 7
    .param p1, "mapper"    # Lcom/sun/jna/TypeMapper;
    .param p2, "allowObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/TypeMapper;",
            "Z)I"
        }
    .end annotation

    .line 1672
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1674
    :cond_0
    if-eqz p1, :cond_6

    .line 1675
    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v0

    .line 1676
    .local v0, "fromNative":Lcom/sun/jna/FromNativeConverter;
    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v1

    .line 1677
    .local v1, "toNative":Lcom/sun/jna/ToNativeConverter;
    const/16 v2, 0x19

    const/16 v3, 0x17

    const/16 v4, 0x18

    if-eqz v0, :cond_3

    .line 1678
    invoke-interface {v0}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v5

    .line 1679
    .local v5, "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 1680
    return v4

    .line 1682
    :cond_1
    const-class v4, Lcom/sun/jna/WString;

    if-ne v5, v4, :cond_2

    .line 1683
    return v2

    .line 1685
    :cond_2
    return v3

    .line 1687
    .end local v5    # "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-eqz v1, :cond_6

    .line 1688
    invoke-interface {v1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v5

    .line 1689
    .restart local v5    # "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_4

    .line 1690
    return v4

    .line 1692
    :cond_4
    const-class v4, Lcom/sun/jna/WString;

    if-ne v5, v4, :cond_5

    .line 1693
    return v2

    .line 1695
    :cond_5
    return v3

    .line 1699
    .end local v0    # "fromNative":Lcom/sun/jna/FromNativeConverter;
    .end local v1    # "toNative":Lcom/sun/jna/ToNativeConverter;
    .end local v5    # "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 1700
    return v1

    .line 1702
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne v0, p0, :cond_8

    .line 1703
    const/4 v0, 0x2

    return v0

    .line 1705
    :cond_8
    const-class v0, Lcom/sun/jna/WString;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1706
    const/16 v0, 0x14

    return v0

    .line 1708
    :cond_9
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1709
    const/4 v0, 0x5

    return v0

    .line 1711
    :cond_a
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1712
    const-class v0, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1713
    const/4 v0, 0x4

    return v0

    .line 1715
    :cond_b
    const/4 v0, 0x3

    return v0

    .line 1717
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1718
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1719
    :sswitch_0
    const/16 v0, 0xd

    return v0

    .line 1721
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 1724
    :sswitch_2
    const/16 v0, 0xa

    return v0

    .line 1723
    :sswitch_3
    const/16 v0, 0x9

    return v0

    .line 1725
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 1726
    :sswitch_5
    const/16 v0, 0xc

    return v0

    .line 1722
    :sswitch_6
    const/16 v0, 0x8

    return v0

    .line 1720
    :sswitch_7
    const/4 v0, 0x6

    return v0

    .line 1730
    :cond_d
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1731
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const/16 v0, 0xe

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1733
    :cond_f
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1734
    const/16 v0, 0xf

    return v0

    .line 1736
    :cond_10
    const-class v0, Lcom/sun/jna/IntegerType;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1737
    const/16 v0, 0x15

    return v0

    .line 1739
    :cond_11
    const-class v0, Lcom/sun/jna/PointerType;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1740
    const/16 v0, 0x16

    return v0

    .line 1742
    :cond_12
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1743
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    .line 1744
    .local v0, "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_13

    .line 1745
    const/16 v1, 0x12

    return v1

    .line 1747
    :cond_13
    const-class v1, Lcom/sun/jna/WString;

    if-ne v0, v1, :cond_14

    .line 1748
    const/16 v1, 0x13

    return v1

    .line 1750
    :cond_14
    const/16 v1, 0x11

    return v1

    .line 1752
    .end local v0    # "nativeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    const-class v0, Lcom/sun/jna/JNIEnv;

    if-ne v0, p0, :cond_16

    .line 1753
    const/16 v0, 0x1b

    return v0

    .line 1755
    :cond_16
    if-eqz p2, :cond_17

    const/16 v0, 0x1a

    goto :goto_2

    :cond_17
    const/4 v0, -0x1

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4a -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultStringEncoding()Ljava/lang/String;
    .locals 2

    .line 843
    const-string v0, "jna.encoding"

    sget-object v1, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;
    .locals 4
    .param p0, "b"    # Ljava/nio/Buffer;

    .line 381
    invoke-static {p0}, Lcom/sun/jna/Native;->_getDirectBufferPointer(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 382
    .local v0, "peer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sun/jna/Pointer;

    invoke-direct {v2, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method static native getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;
.end method

.method static native getDouble(Lcom/sun/jna/Pointer;JJ)D
.end method

.method static native getFloat(Lcom/sun/jna/Pointer;JJ)F
.end method

.method static native getInt(Lcom/sun/jna/Pointer;JJ)I
.end method

.method public static native getLastError()I
.end method

.method public static getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 753
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 754
    .local v0, "libraryOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 755
    return-object v0

    .line 758
    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 759
    .local v1, "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 760
    invoke-static {v1}, Lcom/sun/jna/Native;->loadLibraryInstance(Ljava/lang/Class;)V

    goto :goto_0

    .line 762
    :cond_1
    move-object v1, p0

    .line 765
    :goto_0
    sget-object v2, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 766
    if-eqz v0, :cond_2

    .line 767
    sget-object v2, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    return-object v0

    .line 772
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "OPTIONS"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 773
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 774
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v0, v4

    .line 775
    if-eqz v0, :cond_3

    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 776
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Null options field"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "libraryOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "libraryOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 781
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPTIONS must be a public field of type java.util.Map ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 779
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 782
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    nop

    .line 784
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v3

    .line 785
    const-string v3, "type-mapper"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 786
    const-string v4, "TYPE_MAPPER"

    const-class v5, Lcom/sun/jna/TypeMapper;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_4
    const-string v3, "structure-alignment"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 789
    const-string v4, "STRUCTURE_ALIGNMENT"

    const-class v5, Ljava/lang/Integer;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_5
    const-string v3, "string-encoding"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 792
    const-string v4, "STRING_ENCODING"

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_6
    invoke-static {v1, v0, v2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 796
    if-eq p0, v1, :cond_7

    .line 797
    sget-object v2, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_7
    return-object v0
.end method

.method static native getLong(Lcom/sun/jna/Pointer;JJ)J
.end method

.method public static getNativeLibrary(Lcom/sun/jna/Library;)Lcom/sun/jna/NativeLibrary;
    .locals 3
    .param p0, "library"    # Lcom/sun/jna/Library;

    .line 1930
    if-eqz p0, :cond_2

    .line 1933
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 1937
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    instance-of v1, v0, Lcom/sun/jna/Library$Handler;

    if-eqz v1, :cond_0

    .line 1940
    move-object v1, v0

    check-cast v1, Lcom/sun/jna/Library$Handler;

    invoke-virtual {v1}, Lcom/sun/jna/Library$Handler;->getNativeLibrary()Lcom/sun/jna/NativeLibrary;

    move-result-object v1

    return-object v1

    .line 1938
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Object is not a properly initialized Library interface instance"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1934
    .end local v0    # "handler":Ljava/lang/reflect/InvocationHandler;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "library object passed to getNativeLibrary in not a proxy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1931
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null passed to getNativeLibrary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNativeLibrary(Ljava/lang/Class;)Lcom/sun/jna/NativeLibrary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/NativeLibrary;"
        }
    .end annotation

    .line 1953
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 1956
    invoke-static {p0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1957
    .local v0, "mappedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v1

    .line 1958
    :try_start_0
    sget-object v2, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/NativeLibrary;

    .line 1959
    .local v2, "nativeLibrary":Lcom/sun/jna/NativeLibrary;
    if-eqz v2, :cond_0

    .line 1962
    monitor-exit v1

    return-object v2

    .line 1960
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not currently registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mappedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v3

    .line 1964
    .end local v2    # "nativeLibrary":Lcom/sun/jna/NativeLibrary;
    .restart local v0    # "mappedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1954
    .end local v0    # "mappedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null passed to getNativeLibrary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNativeSize(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1421
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    .line 1425
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-eq p0, v0, :cond_15

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1

    goto/16 :goto_8

    .line 1426
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_14

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_2

    goto/16 :goto_7

    .line 1427
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_3

    goto/16 :goto_6

    .line 1428
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_4

    goto/16 :goto_5

    .line 1429
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_11

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_5

    goto/16 :goto_4

    .line 1430
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    if-eq p0, v0, :cond_10

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_6

    goto/16 :goto_3

    .line 1431
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_f

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_7

    goto :goto_2

    .line 1432
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_e

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_8

    goto :goto_1

    .line 1433
    :cond_8
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1434
    const-class v0, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1435
    invoke-static {p0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;)I

    move-result v0

    return v0

    .line 1437
    :cond_9
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    return v0

    .line 1439
    :cond_a
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_b

    .line 1440
    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    const-class v0, Lcom/sun/jna/Callback;

    .line 1441
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/String;

    if-eq v0, p0, :cond_d

    const-class v0, Lcom/sun/jna/WString;

    if-ne v0, p0, :cond_c

    goto :goto_0

    .line 1446
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native size for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_d
    :goto_0
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    return v0

    .line 1432
    :cond_e
    :goto_1
    return v2

    .line 1431
    :cond_f
    :goto_2
    return v1

    .line 1430
    :cond_10
    :goto_3
    return v2

    .line 1429
    :cond_11
    :goto_4
    return v1

    .line 1428
    :cond_12
    :goto_5
    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    return v0

    .line 1427
    :cond_13
    :goto_6
    const/4 v0, 0x2

    return v0

    .line 1426
    :cond_14
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 1425
    :cond_15
    :goto_8
    return v1
.end method

.method public static getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1389
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1391
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1392
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 1393
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v2

    mul-int/2addr v2, v0

    return v2

    .line 1396
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Arrays of length zero not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    .end local v0    # "len":I
    :cond_1
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 1399
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1400
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Structure;

    invoke-static {p0, v0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I

    move-result v0

    return v0

    .line 1403
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1408
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method static getPointer(J)Lcom/sun/jna/Pointer;
    .locals 4
    .param p0, "addr"    # J

    .line 2305
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->_getPointer(J)J

    move-result-wide v0

    .line 2306
    .local v0, "peer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sun/jna/Pointer;

    invoke-direct {v2, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method static native getShort(Lcom/sun/jna/Pointer;JJ)S
.end method

.method static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1601
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1604
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1605
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string v0, "V"

    return-object v0

    .line 1606
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string v0, "Z"

    return-object v0

    .line 1607
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string v0, "B"

    return-object v0

    .line 1608
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string v0, "S"

    return-object v0

    .line 1609
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string v0, "C"

    return-object v0

    .line 1610
    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string v0, "I"

    return-object v0

    .line 1611
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string v0, "J"

    return-object v0

    .line 1612
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string v0, "F"

    return-object v0

    .line 1613
    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const-string v0, "D"

    return-object v0

    .line 1615
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v3, v1, v2}, Lcom/sun/jna/Native;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getString(Lcom/sun/jna/Pointer;J)Ljava/lang/String;
    .locals 1
    .param p0, "pointer"    # Lcom/sun/jna/Pointer;
    .param p1, "offset"    # J

    .line 2314
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pointer"    # Lcom/sun/jna/Pointer;
    .param p1, "offset"    # J
    .param p3, "encoding"    # Ljava/lang/String;

    .line 2318
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getStringBytes(Lcom/sun/jna/Pointer;JJ)[B

    move-result-object v0

    .line 2319
    .local v0, "data":[B
    if-eqz p3, :cond_0

    .line 2321
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2323
    :catch_0
    move-exception v1

    .line 2326
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method static native getStringBytes(Lcom/sun/jna/Pointer;JJ)[B
.end method

.method public static getStringEncoding(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 833
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 834
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "string-encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 835
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getStructureAlignment(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 852
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "structure-alignment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 853
    .local v0, "alignment":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method static getTempDir()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1319
    const-string v0, "jna.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1321
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v1, "jnatmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_5

    .line 1325
    .end local v1    # "jnatmp":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v1, "tmp":Ljava/io/File;
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v2

    const-string v3, "user.home"

    if-eqz v2, :cond_1

    .line 1328
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Library/Caches/JNA/temp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "jnatmp":Ljava/io/File;
    goto/16 :goto_3

    .line 1329
    .end local v2    # "jnatmp":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isDragonFlyBSD()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isNetBSD()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->isOpenBSD()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sun/jna/Platform;->iskFreeBSD()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1344
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jna-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "jnatmp":Ljava/io/File;
    goto :goto_3

    .line 1332
    .end local v2    # "jnatmp":Ljava/io/File;
    :cond_3
    :goto_0
    const-string v2, "XDG_CACHE_HOME"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "xdgCacheEnvironment":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1337
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "xdgCacheFile":Ljava/io/File;
    goto :goto_2

    .line 1335
    .end local v3    # "xdgCacheFile":Ljava/io/File;
    :cond_5
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ".cache"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1339
    .restart local v3    # "xdgCacheFile":Ljava/io/File;
    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v5, "JNA/temp"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 1340
    .end local v3    # "xdgCacheFile":Ljava/io/File;
    .local v2, "jnatmp":Ljava/io/File;
    nop

    .line 1347
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1348
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_5

    .line 1349
    :cond_7
    :goto_4
    move-object v2, v1

    .line 1352
    .end local v2    # "jnatmp":Ljava/io/File;
    .local v1, "jnatmp":Ljava/io/File;
    :goto_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "JNA temporary directory \'"

    if-eqz v2, :cond_9

    .line 1355
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1358
    return-object v1

    .line 1356
    :cond_8
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not writable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1353
    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getTerminationFlag(Ljava/lang/Thread;)Lcom/sun/jna/Pointer;
    .locals 1
    .param p0, "t"    # Ljava/lang/Thread;

    .line 2413
    sget-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public static getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/TypeMapper;"
        }
    .end annotation

    .line 822
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 823
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "type-mapper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/TypeMapper;

    return-object v1
.end method

.method public static getWebStartLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;

    .line 1273
    const-string v0, "javawebstart.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1274
    return-object v1

    .line 1277
    :cond_0
    :try_start_0
    const-class v0, Lcom/sun/jna/Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1278
    .local v0, "cl":Ljava/lang/ClassLoader;
    new-instance v2, Lcom/sun/jna/Native$4;

    invoke-direct {v2}, Lcom/sun/jna/Native$4;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1291
    .local v2, "m":Ljava/lang/reflect/Method;
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1292
    .local v3, "libpath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1293
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1295
    :cond_1
    return-object v1

    .line 1297
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "libpath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method static native getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;
.end method

.method static native getWindowHandle0(Ljava/awt/Component;)J
.end method

.method public static getWindowID(Ljava/awt/Window;)J
    .locals 2
    .param p0, "w"    # Ljava/awt/Window;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    .line 342
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getWindowPointer(Ljava/awt/Window;)Lcom/sun/jna/Pointer;
    .locals 3
    .param p0, "w"    # Ljava/awt/Window;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object v0
.end method

.method static native indexOf(Lcom/sun/jna/Pointer;JJB)J
.end method

.method private static native initIDs()V
.end method

.method static native initialize_ffi_type(J)I
.end method

.method static native invokeDouble(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)D
.end method

.method static native invokeFloat(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)F
.end method

.method static native invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I
.end method

.method static native invokeLong(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method static native invokeObject(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method static native invokePointer(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method static invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;Lcom/sun/jna/Structure;)Lcom/sun/jna/Structure;
    .locals 10
    .param p0, "function"    # Lcom/sun/jna/Function;
    .param p1, "fp"    # J
    .param p3, "callFlags"    # I
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "s"    # Lcom/sun/jna/Structure;

    .line 2196
    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v6, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 2197
    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 2196
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/sun/jna/Native;->invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V

    .line 2198
    return-object p5
.end method

.method private static native invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V
.end method

.method static native invokeVoid(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)V
.end method

.method static isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "expectedVersion"    # Ljava/lang/String;
    .param p1, "nativeVersion"    # Ljava/lang/String;

    .line 198
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "expectedVersionParts":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "nativeVersionParts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_3

    array-length v2, v0

    if-ge v2, v4, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "expectedMajor":I
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "nativeMajor":I
    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 207
    .local v6, "expectedMinor":I
    aget-object v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, "nativeMinor":I
    if-eq v2, v4, :cond_1

    .line 210
    return v3

    .line 213
    :cond_1
    if-le v6, v7, :cond_2

    .line 214
    return v3

    .line 217
    :cond_2
    return v5

    .line 201
    .end local v2    # "expectedMajor":I
    .end local v4    # "nativeMajor":I
    .end local v6    # "expectedMinor":I
    .end local v7    # "nativeMinor":I
    :cond_3
    :goto_0
    return v3
.end method

.method public static synchronized native isProtected()Z
.end method

.method public static isSupportedNativeType(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1455
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1456
    return v1

    .line 1459
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    .line 1461
    :catch_0
    move-exception v1

    .line 1462
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method static isUnpacked(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1061
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/Class;)Lcom/sun/jna/Library;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 555
    .local p0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 574
    .local p0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 592
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 612
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-class v0, Lcom/sun/jna/Library;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Lcom/sun/jna/Library$Handler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 619
    .local v0, "handler":Lcom/sun/jna/Library$Handler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 620
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 621
    .local v2, "proxy":Ljava/lang/Object;
    invoke-static {p1, p2, v2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 622
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/Library;

    return-object v3

    .line 614
    .end local v0    # "handler":Lcom/sun/jna/Library$Handler;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "proxy":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") of library="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not extend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sun/jna/Library;

    .line 615
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadLibrary(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    .local p0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    .local p0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-class v0, Lcom/sun/jna/Library;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Lcom/sun/jna/Library$Handler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 669
    .local v0, "handler":Lcom/sun/jna/Library$Handler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 670
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 671
    .local v2, "proxy":Ljava/lang/Object;
    invoke-static {p1, p2, v2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 672
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 664
    .end local v0    # "handler":Lcom/sun/jna/Library$Handler;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v2    # "proxy":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") of library="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not extend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sun/jna/Library;

    .line 665
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadLibraryInstance(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 681
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    sget-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 683
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 684
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 685
    aget-object v2, v0, v1

    .line 686
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 687
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 690
    sget-object v3, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_1

    .line 684
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method private static loadNativeDispatchLibrary()V
    .locals 15

    .line 940
    const-string v0, "jna.nounpack"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    :try_start_0
    invoke-static {}, Lcom/sun/jna/Native;->removeTemporaryFiles()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "JNA Warning: IOException removing temporary files"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 949
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    const-string v0, "jna.boot.library.name"

    const-string v1, "jnidispatch"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "libName":Ljava/lang/String;
    const-string v1, "jna.boot.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "bootPath":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 953
    new-instance v2, Ljava/util/StringTokenizer;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .local v2, "dirs":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 955
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dylib"

    const-string v8, ".jnilib"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 957
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 958
    .local v5, "path":Ljava/lang/String;
    sget-object v6, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v8, "Looking in {0}"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "Found jnidispatch at {0}"

    const-string v9, "jnidispatch.path"

    const-string v10, "Trying {0}"

    if-eqz v6, :cond_1

    .line 961
    :try_start_1
    sget-object v6, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {v6, v11, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    invoke-static {v9, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 964
    sput-object v5, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 965
    sget-object v6, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {v6, v11, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 966
    return-void

    .line 967
    :catch_1
    move-exception v6

    .line 973
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 975
    const-string v6, "dylib"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 976
    const-string v6, "dylib"

    .line 977
    .local v6, "orig":Ljava/lang/String;
    const-string v11, "jnilib"

    .local v11, "ext":Ljava/lang/String;
    goto :goto_2

    .line 979
    .end local v6    # "orig":Ljava/lang/String;
    .end local v11    # "ext":Ljava/lang/String;
    :cond_2
    const-string v6, "jnilib"

    .line 980
    .restart local v6    # "orig":Ljava/lang/String;
    const-string v11, "dylib"

    .line 982
    .restart local v11    # "ext":Ljava/lang/String;
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 983
    sget-object v12, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {v12, v13, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 986
    :try_start_2
    sget-object v8, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {v8, v12, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    invoke-static {v9, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 989
    sput-object v5, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 990
    sget-object v8, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 991
    return-void

    .line 992
    :catch_2
    move-exception v7

    .line 993
    .local v7, "ex":Ljava/lang/UnsatisfiedLinkError;
    sget-object v8, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File found at "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " but not loadable: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "orig":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/UnsatisfiedLinkError;
    .end local v11    # "ext":Ljava/lang/String;
    :cond_3
    goto/16 :goto_1

    .line 999
    .end local v2    # "dirs":Ljava/util/StringTokenizer;
    :cond_4
    const-string v2, "jna.nosys"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "jnaNosys":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1002
    :cond_5
    :try_start_3
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v5, "Trying (via loadLibrary) {0}"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1003
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1004
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v5, "Found jnidispatch on system path"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1005
    return-void

    .line 1007
    :catch_3
    move-exception v3

    .line 1010
    :cond_6
    const-string v3, "jna.noclasspath"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1011
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibraryFromClasspath()V

    .line 1016
    return-void

    .line 1014
    :cond_7
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    const-string v4, "Unable to locate JNA native support library"

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static loadNativeDispatchLibraryFromClasspath()V
    .locals 7

    .line 1025
    :try_start_0
    const-string v0, "jnidispatch"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dylib"

    const-string v2, ".jnilib"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "mappedName":Ljava/lang/String;
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    const-string v1, "libjnidispatch.a"

    move-object v0, v1

    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/com/sun/jna/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, "libName":Ljava/lang/String;
    const-class v2, Lcom/sun/jna/Native;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object v2

    .line 1033
    .local v2, "lib":Ljava/io/File;
    if-nez v2, :cond_2

    .line 1034
    if-eqz v2, :cond_1

    goto :goto_0

    .line 1035
    :cond_1
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    const-string v4, "Could not find JNA native support"

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1039
    :cond_2
    :goto_0
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v5, "Trying {0}"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    const-string v3, "jnidispatch.path"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 1043
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v5, "Found jnidispatch at {0}"

    sget-object v6, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1049
    invoke-static {v2}, Lcom/sun/jna/Native;->isUnpacked(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "jnidispatch.preserve"

    .line 1050
    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1051
    invoke-static {v2}, Lcom/sun/jna/Native;->deleteLibrary(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .end local v0    # "mappedName":Ljava/lang/String;
    .end local v1    # "libName":Ljava/lang/String;
    .end local v2    # "lib":Ljava/io/File;
    :cond_3
    nop

    .line 1057
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 804
    .local p0, "mappingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 805
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 806
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 811
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a public field of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 2053
    const-string v0, "Java Native Access (JNA)"

    .line 2054
    .local v0, "DEFAULT_TITLE":Ljava/lang/String;
    const-string v1, "5.18.1"

    .line 2055
    .local v1, "DEFAULT_VERSION":Ljava/lang/String;
    const-string v2, "5.18.1 (package information missing)"

    .line 2056
    .local v2, "DEFAULT_BUILD":Ljava/lang/String;
    const-class v3, Lcom/sun/jna/Native;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 2057
    .local v3, "pkg":Ljava/lang/Package;
    if-eqz v3, :cond_0

    .line 2058
    invoke-virtual {v3}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "Java Native Access (JNA)"

    .line 2059
    .local v4, "title":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_1

    const-string v4, "Java Native Access (JNA)"

    .line 2060
    :cond_1
    if-eqz v3, :cond_2

    .line 2061
    invoke-virtual {v3}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "5.18.1"

    .line 2062
    .local v5, "version":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_3

    const-string v5, "5.18.1"

    .line 2063
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " API Version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2064
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2065
    if-eqz v3, :cond_4

    .line 2066
    invoke-virtual {v3}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v6, "5.18.1 (package information missing)"

    :goto_2
    move-object v5, v6

    .line 2067
    if-nez v5, :cond_5

    const-string v5, "5.18.1 (package information missing)"

    .line 2068
    :cond_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2069
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Native: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2070
    invoke-static {}, Lcom/sun/jna/Native;->getAPIChecksum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2069
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2071
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2072
    return-void
.end method

.method public static native malloc(J)J
.end method

.method static markTemporaryFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 1308
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1309
    .local v0, "marker":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    nop

    .end local v0    # "marker":Ljava/io/File;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1312
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static nativeType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2024
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static open(Ljava/lang/String;)J
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2216
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->open(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static native open(Ljava/lang/String;I)J
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method static native read(Lcom/sun/jna/Pointer;JJ[SII)V
.end method

.method public static register(Lcom/sun/jna/NativeLibrary;)V
    .locals 1
    .param p0, "lib"    # Lcom/sun/jna/NativeLibrary;

    .line 1499
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    .line 1500
    return-void
.end method

.method public static register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V
    .locals 46
    .param p1, "lib"    # Lcom/sun/jna/NativeLibrary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ")V"
        }
    .end annotation

    .line 1784
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1785
    .local v14, "methods":[Ljava/lang/reflect/Method;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1786
    .local v12, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sun/jna/NativeLibrary;->getOptions()Ljava/util/Map;

    move-result-object v0

    .line 1787
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "type-mapper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/sun/jna/TypeMapper;

    .line 1788
    .local v10, "mapper":Lcom/sun/jna/TypeMapper;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "allow-objects"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1789
    .local v11, "allowObjects":Z
    const/4 v1, 0x0

    invoke-static {v15, v0, v1}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v20

    .line 1791
    .end local v0    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local v20, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    array-length v0, v14

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, v14, v1

    .line 1792
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 1793
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1791
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1797
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [J

    .line 1798
    .local v8, "handles":[J
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_1
    array-length v0, v8

    if-ge v9, v0, :cond_c

    .line 1799
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/Method;

    .line 1800
    .local v7, "method":Ljava/lang/reflect/Method;
    const-string v0, "("

    .line 1801
    .local v0, "sig":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1803
    .local v6, "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1804
    .local v5, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v5

    new-array v4, v1, [J

    .line 1805
    .local v4, "atypes":[J
    array-length v1, v5

    new-array v3, v1, [J

    .line 1806
    .local v3, "closure_atypes":[J
    array-length v1, v5

    new-array v2, v1, [I

    .line 1807
    .local v2, "cvt":[I
    array-length v1, v5

    new-array v1, v1, [Lcom/sun/jna/ToNativeConverter;

    .line 1808
    .local v1, "toNative":[Lcom/sun/jna/ToNativeConverter;
    const/16 v16, 0x0

    .line 1809
    .local v16, "fromNative":Lcom/sun/jna/FromNativeConverter;
    invoke-static {v6, v10, v11}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    move-result v21

    .line 1810
    .local v21, "rcvt":I
    const/16 v17, 0x0

    .line 1811
    .local v17, "throwLastError":Z
    sparse-switch v21, :sswitch_data_0

    .line 1841
    move-object/from16 v19, v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v0    # "sig":Ljava/lang/String;
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .local v18, "handles":[J
    .local v19, "sig":Ljava/lang/String;
    .local v22, "i":I
    invoke-static {v6}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    move-wide/from16 v23, v8

    .local v23, "rtype":J
    move-wide/from16 v25, v8

    move-object/from16 v27, v16

    .local v8, "closure_rtype":J
    goto/16 :goto_3

    .line 1817
    .end local v18    # "handles":[J
    .end local v19    # "sig":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "rtype":J
    .restart local v0    # "sig":Ljava/lang/String;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    :sswitch_0
    invoke-interface {v10, v6}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v16

    .line 1821
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v6

    goto :goto_2

    :cond_2
    const-class v18, Lcom/sun/jna/Pointer;

    :goto_2
    invoke-static/range {v18 .. v18}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v18

    move-object/from16 v19, v0

    .end local v0    # "sig":Ljava/lang/String;
    .restart local v19    # "sig":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .restart local v18    # "handles":[J
    .restart local v22    # "i":I
    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1822
    .local v8, "closure_rtype":J
    invoke-interface/range {v16 .. v16}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-wide/from16 v23, v8

    .end local v8    # "closure_rtype":J
    .local v23, "closure_rtype":J
    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1823
    .local v8, "rtype":J
    move-object/from16 v27, v16

    move-wide/from16 v25, v23

    move-wide/from16 v23, v8

    goto/16 :goto_3

    .line 1829
    .end local v18    # "handles":[J
    .end local v19    # "sig":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "closure_rtype":J
    .restart local v0    # "sig":Ljava/lang/String;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    :sswitch_1
    move-object/from16 v19, v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v0    # "sig":Ljava/lang/String;
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .restart local v18    # "handles":[J
    .restart local v19    # "sig":Ljava/lang/String;
    .restart local v22    # "i":I
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-static {v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1830
    .local v8, "closure_rtype":J
    invoke-static {v6}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-wide/from16 v23, v8

    .end local v8    # "closure_rtype":J
    .restart local v23    # "closure_rtype":J
    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1831
    .local v8, "rtype":J
    move-object/from16 v27, v16

    move-wide/from16 v25, v23

    move-wide/from16 v23, v8

    goto/16 :goto_3

    .line 1837
    .end local v18    # "handles":[J
    .end local v19    # "sig":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "closure_rtype":J
    .restart local v0    # "sig":Ljava/lang/String;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    :sswitch_2
    move-object/from16 v19, v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v0    # "sig":Ljava/lang/String;
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .restart local v18    # "handles":[J
    .restart local v19    # "sig":Ljava/lang/String;
    .restart local v22    # "i":I
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-static {v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1838
    .local v8, "closure_rtype":J
    invoke-static {v6}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-wide/from16 v23, v8

    .end local v8    # "closure_rtype":J
    .restart local v23    # "closure_rtype":J
    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 1839
    .local v8, "rtype":J
    move-object/from16 v27, v16

    move-wide/from16 v25, v23

    move-wide/from16 v23, v8

    goto :goto_3

    .line 1834
    .end local v18    # "handles":[J
    .end local v19    # "sig":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "closure_rtype":J
    .restart local v0    # "sig":Ljava/lang/String;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    :sswitch_3
    move-object/from16 v19, v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v0    # "sig":Ljava/lang/String;
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .restart local v18    # "handles":[J
    .restart local v19    # "sig":Ljava/lang/String;
    .restart local v22    # "i":I
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-static {v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    move-wide/from16 v23, v8

    .line 1835
    .local v8, "closure_rtype":J
    .local v23, "rtype":J
    move-wide/from16 v25, v8

    move-object/from16 v27, v16

    goto :goto_3

    .line 1813
    .end local v18    # "handles":[J
    .end local v19    # "sig":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v23    # "rtype":J
    .restart local v0    # "sig":Ljava/lang/String;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    :sswitch_4
    move-object/from16 v19, v0

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v0    # "sig":Ljava/lang/String;
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .restart local v18    # "handles":[J
    .restart local v19    # "sig":Ljava/lang/String;
    .restart local v22    # "i":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a supported return type (in method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1844
    .end local v16    # "fromNative":Lcom/sun/jna/FromNativeConverter;
    .restart local v23    # "rtype":J
    .local v25, "closure_rtype":J
    .local v27, "fromNative":Lcom/sun/jna/FromNativeConverter;
    :goto_3
    const/4 v0, 0x0

    move-object/from16 v8, v19

    .end local v19    # "sig":Ljava/lang/String;
    .local v0, "t":I
    .local v8, "sig":Ljava/lang/String;
    :goto_4
    array-length v9, v5

    if-ge v0, v9, :cond_9

    .line 1845
    aget-object v9, v5, v0

    .line 1846
    .local v9, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, v5

    .end local v5    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v16, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v19, v12

    .end local v12    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v19, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-static {v9}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1847
    invoke-static {v9, v10, v11}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    move-result v5

    .line 1848
    .local v5, "conversionType":I
    aput v5, v2, v0

    .line 1849
    const/4 v12, -0x1

    if-eq v5, v12, :cond_8

    .line 1852
    const/16 v12, 0x11

    if-eq v5, v12, :cond_5

    const/16 v12, 0x12

    if-eq v5, v12, :cond_5

    const/16 v12, 0x13

    if-eq v5, v12, :cond_5

    const/16 v12, 0x15

    if-ne v5, v12, :cond_3

    goto :goto_5

    .line 1857
    :cond_3
    const/16 v12, 0x17

    if-eq v5, v12, :cond_4

    const/16 v12, 0x18

    if-eq v5, v12, :cond_4

    const/16 v12, 0x19

    if-ne v5, v12, :cond_6

    .line 1860
    :cond_4
    invoke-interface {v10, v9}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v12

    aput-object v12, v1, v0

    goto :goto_6

    .line 1856
    :cond_5
    :goto_5
    invoke-static {v9}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v9

    .line 1866
    :cond_6
    :goto_6
    sparse-switch v5, :sswitch_data_1

    .line 1886
    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .local v28, "mapper":Lcom/sun/jna/TypeMapper;
    .local v29, "allowObjects":Z
    const-class v10, Lcom/sun/jna/Pointer;

    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    iget-wide v10, v10, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v4, v0

    aput-wide v10, v3, v0

    goto :goto_8

    .line 1879
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .restart local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v11    # "allowObjects":Z
    :sswitch_5
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v9

    goto :goto_7

    :cond_7
    const-class v12, Lcom/sun/jna/Pointer;

    :goto_7
    invoke-static {v12}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v12

    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    iget-wide v10, v12, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v3, v0

    .line 1880
    aget-object v10, v1, v0

    invoke-interface {v10}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    iget-wide v10, v10, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v4, v0

    .line 1881
    goto :goto_8

    .line 1873
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .restart local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v11    # "allowObjects":Z
    :sswitch_6
    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    invoke-static {v9}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    iget-wide v10, v10, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v4, v0

    .line 1874
    const-class v10, Lcom/sun/jna/Pointer;

    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    iget-wide v10, v10, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v3, v0

    .line 1875
    goto :goto_8

    .line 1883
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .restart local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v11    # "allowObjects":Z
    :sswitch_7
    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    invoke-static {v9}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/jna/Structure$FFIType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    iget-wide v10, v10, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v10, v4, v0

    aput-wide v10, v3, v0

    .line 1884
    nop

    .line 1844
    .end local v5    # "conversionType":I
    .end local v9    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v16

    move-object/from16 v12, v19

    move-object/from16 v10, v28

    move/from16 v11, v29

    goto/16 :goto_4

    .line 1850
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .restart local v5    # "conversionType":I
    .restart local v9    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v11    # "allowObjects":Z
    :cond_8
    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a supported argument type (in method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1844
    .end local v9    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .local v5, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v11    # "allowObjects":Z
    .restart local v12    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :cond_9
    move-object/from16 v16, v5

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v19, v12

    .line 1889
    .end local v0    # "t":I
    .end local v5    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .end local v12    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v16    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v19    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1890
    .end local v8    # "sig":Ljava/lang/String;
    .local v0, "sig":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1892
    .end local v0    # "sig":Ljava/lang/String;
    .local v12, "sig":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 1893
    .local v10, "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "e":I
    :goto_9
    array-length v5, v10

    if-ge v0, v5, :cond_b

    .line 1894
    const-class v5, Lcom/sun/jna/LastErrorException;

    aget-object v8, v10, v0

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1895
    const/16 v17, 0x1

    .line 1896
    move/from16 v30, v17

    goto :goto_a

    .line 1893
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    move/from16 v30, v17

    .line 1900
    .end local v0    # "e":I
    .end local v17    # "throwLastError":Z
    .local v30, "throwLastError":Z
    :goto_a
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v7}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/sun/jna/Function;

    move-result-object v11

    .line 1902
    .local v11, "f":Lcom/sun/jna/Function;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v8, v11, Lcom/sun/jna/Function;->peer:J

    .line 1907
    invoke-virtual {v11}, Lcom/sun/jna/Function;->getCallingConvention()I

    move-result v17

    iget-object v5, v11, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1902
    move-object/from16 v31, v1

    .end local v1    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .local v31, "toNative":[Lcom/sun/jna/ToNativeConverter;
    move-object/from16 v1, p0

    move-object/from16 v32, v2

    .end local v2    # "cvt":[I
    .local v32, "cvt":[I
    move-object v2, v0

    move-object/from16 v33, v3

    .end local v3    # "closure_atypes":[J
    .local v33, "closure_atypes":[J
    move-object v3, v12

    move-object/from16 v34, v4

    .end local v4    # "atypes":[J
    .local v34, "atypes":[J
    move-object/from16 v4, v32

    move-object v0, v5

    move-object/from16 v35, v16

    .end local v16    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v35, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v5, v33

    move-object/from16 v36, v6

    .end local v6    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v36, "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v6, v34

    move-object/from16 v37, v7

    .end local v7    # "method":Ljava/lang/reflect/Method;
    .local v37, "method":Ljava/lang/reflect/Method;
    move/from16 v7, v21

    move-wide/from16 v39, v8

    move-object/from16 v38, v18

    .end local v18    # "handles":[J
    .local v38, "handles":[J
    move-wide/from16 v8, v25

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    .end local v10    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "f":Lcom/sun/jna/Function;
    .local v41, "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v42, "f":Lcom/sun/jna/Function;
    move-wide/from16 v10, v23

    move-object/from16 v44, v12

    move-object/from16 v43, v19

    .end local v12    # "sig":Ljava/lang/String;
    .end local v19    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v43, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v44, "sig":Ljava/lang/String;
    move-object/from16 v12, v37

    move-object/from16 v45, v14

    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .local v45, "methods":[Ljava/lang/reflect/Method;
    move-wide/from16 v13, v39

    move/from16 v15, v17

    move/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v27

    move-object/from16 v19, v0

    :try_start_1
    invoke-static/range {v1 .. v19}, Lcom/sun/jna/Native;->registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, v38

    .end local v38    # "handles":[J
    .local v2, "handles":[J
    :try_start_2
    aput-wide v0, v2, v22
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1913
    nop

    .line 1798
    .end local v21    # "rcvt":I
    .end local v23    # "rtype":J
    .end local v25    # "closure_rtype":J
    .end local v27    # "fromNative":Lcom/sun/jna/FromNativeConverter;
    .end local v30    # "throwLastError":Z
    .end local v31    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .end local v32    # "cvt":[I
    .end local v33    # "closure_atypes":[J
    .end local v34    # "atypes":[J
    .end local v35    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v36    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v42    # "f":Lcom/sun/jna/Function;
    .end local v44    # "sig":Ljava/lang/String;
    add-int/lit8 v9, v22, 0x1

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object v8, v2

    move-object/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v12, v43

    move-object/from16 v14, v45

    .end local v22    # "i":I
    .local v9, "i":I
    goto/16 :goto_1

    .line 1911
    .end local v9    # "i":I
    .restart local v21    # "rcvt":I
    .restart local v22    # "i":I
    .restart local v23    # "rtype":J
    .restart local v25    # "closure_rtype":J
    .restart local v27    # "fromNative":Lcom/sun/jna/FromNativeConverter;
    .restart local v30    # "throwLastError":Z
    .restart local v31    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .restart local v32    # "cvt":[I
    .restart local v33    # "closure_atypes":[J
    .restart local v34    # "atypes":[J
    .restart local v35    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v36    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "method":Ljava/lang/reflect/Method;
    .restart local v41    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v42    # "f":Lcom/sun/jna/Function;
    .restart local v44    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_b

    .end local v2    # "handles":[J
    .restart local v38    # "handles":[J
    :catch_1
    move-exception v0

    move-object/from16 v2, v38

    .end local v38    # "handles":[J
    .restart local v2    # "handles":[J
    goto :goto_b

    .end local v31    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .end local v32    # "cvt":[I
    .end local v33    # "closure_atypes":[J
    .end local v34    # "atypes":[J
    .end local v35    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v36    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v42    # "f":Lcom/sun/jna/Function;
    .end local v43    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v44    # "sig":Ljava/lang/String;
    .end local v45    # "methods":[Ljava/lang/reflect/Method;
    .restart local v1    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .local v2, "cvt":[I
    .restart local v3    # "closure_atypes":[J
    .restart local v4    # "atypes":[J
    .restart local v6    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    .restart local v10    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v11    # "f":Lcom/sun/jna/Function;
    .restart local v12    # "sig":Ljava/lang/String;
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v16    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v18    # "handles":[J
    .restart local v19    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :catch_2
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v41, v10

    move-object/from16 v42, v11

    move-object/from16 v44, v12

    move-object/from16 v45, v14

    move-object/from16 v35, v16

    move-object/from16 v2, v18

    move-object/from16 v43, v19

    .line 1912
    .end local v1    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .end local v3    # "closure_atypes":[J
    .end local v4    # "atypes":[J
    .end local v6    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "f":Lcom/sun/jna/Function;
    .end local v12    # "sig":Ljava/lang/String;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .end local v16    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v18    # "handles":[J
    .end local v19    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    .local v2, "handles":[J
    .restart local v31    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .restart local v32    # "cvt":[I
    .restart local v33    # "closure_atypes":[J
    .restart local v34    # "atypes":[J
    .restart local v35    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v36    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v37    # "method":Ljava/lang/reflect/Method;
    .restart local v41    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v42    # "f":Lcom/sun/jna/Function;
    .restart local v43    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v44    # "sig":Ljava/lang/String;
    .restart local v45    # "methods":[Ljava/lang/reflect/Method;
    :goto_b
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v37 .. v37}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with signature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v44

    .end local v44    # "sig":Ljava/lang/String;
    .local v4, "sig":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, p0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .end local v2    # "handles":[J
    .end local v4    # "sig":Ljava/lang/String;
    .end local v21    # "rcvt":I
    .end local v22    # "i":I
    .end local v23    # "rtype":J
    .end local v25    # "closure_rtype":J
    .end local v27    # "fromNative":Lcom/sun/jna/FromNativeConverter;
    .end local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v29    # "allowObjects":Z
    .end local v30    # "throwLastError":Z
    .end local v31    # "toNative":[Lcom/sun/jna/ToNativeConverter;
    .end local v32    # "cvt":[I
    .end local v33    # "closure_atypes":[J
    .end local v34    # "atypes":[J
    .end local v35    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v36    # "rclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v37    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "etypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v42    # "f":Lcom/sun/jna/Function;
    .end local v43    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v45    # "methods":[Ljava/lang/reflect/Method;
    .local v8, "handles":[J
    .restart local v9    # "i":I
    .local v10, "mapper":Lcom/sun/jna/TypeMapper;
    .local v11, "allowObjects":Z
    .local v12, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    :cond_c
    move-object v2, v8

    move/from16 v22, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v43, v12

    move-object/from16 v45, v14

    move-object v5, v15

    .line 1915
    .end local v8    # "handles":[J
    .end local v9    # "i":I
    .end local v10    # "mapper":Lcom/sun/jna/TypeMapper;
    .end local v11    # "allowObjects":Z
    .end local v12    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v2    # "handles":[J
    .restart local v28    # "mapper":Lcom/sun/jna/TypeMapper;
    .restart local v29    # "allowObjects":Z
    .restart local v43    # "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v45    # "methods":[Ljava/lang/reflect/Method;
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v1

    .line 1916
    :try_start_3
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    sget-object v0, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, p1

    :try_start_4
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    monitor-exit v1

    .line 1919
    return-void

    .line 1918
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    :goto_c
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x4 -> :sswitch_6
        0x11 -> :sswitch_6
        0x12 -> :sswitch_6
        0x13 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
    .end sparse-switch
.end method

.method public static register(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "libName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1769
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1770
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "classloader"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/sun/jna/NativeLibrary;

    move-result-object v0

    .line 1771
    .local v0, "library":Lcom/sun/jna/NativeLibrary;
    invoke-static {p0, v0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    .line 1772
    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .locals 1
    .param p0, "libName"    # Ljava/lang/String;

    .line 1489
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method private static native registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[J[JIJJ",
            "Ljava/lang/reflect/Method;",
            "JIZ[",
            "Lcom/sun/jna/ToNativeConverter;",
            "Lcom/sun/jna/FromNativeConverter;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public static registered(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1592
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    .line 1593
    :try_start_0
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static removeTemporaryFiles()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1363
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 1364
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/sun/jna/Native$5;

    invoke-direct {v1}, Lcom/sun/jna/Native$5;-><init>()V

    .line 1370
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1371
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v2, :cond_2

    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1372
    aget-object v4, v2, v3

    .line 1373
    .local v4, "marker":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1374
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1375
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1376
    .local v6, "target":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1377
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1371
    .end local v4    # "marker":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "target":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1622
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1623
    .local v1, "idx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1624
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    nop

    .line 1633
    .end local v1    # "idx":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1628
    .restart local v1    # "idx":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1632
    .end local v1    # "idx":I
    goto :goto_0
.end method

.method static native setByte(Lcom/sun/jna/Pointer;JJB)V
.end method

.method public static setCallbackExceptionHandler(Lcom/sun/jna/Callback$UncaughtExceptionHandler;)V
    .locals 1
    .param p0, "eh"    # Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 1474
    if-nez p0, :cond_0

    sget-object v0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 1475
    return-void
.end method

.method public static setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)V
    .locals 0
    .param p0, "cb"    # Lcom/sun/jna/Callback;
    .param p1, "initializer"    # Lcom/sun/jna/CallbackThreadInitializer;

    .line 1548
    invoke-static {p0, p1}, Lcom/sun/jna/CallbackReference;->setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)Lcom/sun/jna/CallbackThreadInitializer;

    .line 1549
    return-void
.end method

.method static native setChar(Lcom/sun/jna/Pointer;JJC)V
.end method

.method private static native setDetachState(ZJ)V
.end method

.method static native setDouble(Lcom/sun/jna/Pointer;JJD)V
.end method

.method static native setFloat(Lcom/sun/jna/Pointer;JJF)V
.end method

.method static native setInt(Lcom/sun/jna/Pointer;JJI)V
.end method

.method public static native setLastError(I)V
.end method

.method static native setLong(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method static native setMemory(Lcom/sun/jna/Pointer;JJJB)V
.end method

.method static native setPointer(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method public static synchronized native setProtected(Z)V
.end method

.method static native setShort(Lcom/sun/jna/Pointer;JJS)V
.end method

.method static native setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V
.end method

.method private static native sizeof(I)I
.end method

.method public static synchronizedLibrary(Lcom/sun/jna/Library;)Lcom/sun/jna/Library;
    .locals 6
    .param p0, "library"    # Lcom/sun/jna/Library;

    .line 1235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1236
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 1240
    .local v1, "ih":Ljava/lang/reflect/InvocationHandler;
    instance-of v2, v1, Lcom/sun/jna/Library$Handler;

    if-eqz v2, :cond_0

    .line 1243
    move-object v2, v1

    check-cast v2, Lcom/sun/jna/Library$Handler;

    .line 1244
    .local v2, "handler":Lcom/sun/jna/Library$Handler;
    new-instance v3, Lcom/sun/jna/Native$3;

    invoke-direct {v3, v2, p0}, Lcom/sun/jna/Native$3;-><init>(Lcom/sun/jna/Library$Handler;Lcom/sun/jna/Library;)V

    .line 1252
    .local v3, "newHandler":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1252
    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/Library;

    return-object v4

    .line 1241
    .end local v2    # "handler":Lcom/sun/jna/Library$Handler;
    .end local v3    # "newHandler":Ljava/lang/reflect/InvocationHandler;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized proxy handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    .end local v1    # "ih":Ljava/lang/reflect/InvocationHandler;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Library must be a proxy class"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 894
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 906
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 917
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 918
    .local v0, "bytes":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 919
    .local v1, "buf":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    return-object v1
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 929
    .local v0, "chars":[C
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 930
    .local v1, "buf":[C
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    return-object v1
.end method

.method private static toNative(Lcom/sun/jna/ToNativeConverter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "cvt"    # Lcom/sun/jna/ToNativeConverter;
    .param p1, "o"    # Ljava/lang/Object;

    .line 2030
    new-instance v0, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "buf"    # [B

    .line 421
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "encoding"    # Ljava/lang/String;

    .line 438
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 454
    array-length v0, p0

    .line 456
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 457
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    .line 458
    move v0, v1

    .line 459
    goto :goto_1

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "index":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 464
    const-string v1, ""

    return-object v1

    .line 467
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [C

    .line 477
    array-length v0, p0

    .line 478
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 479
    aget-char v2, p0, v1

    if-nez v2, :cond_0

    .line 480
    move v0, v1

    .line 481
    goto :goto_1

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    .end local v1    # "index":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 486
    const-string v1, ""

    return-object v1

    .line 488
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static toStringList([C)Ljava/util/List;
    .locals 2
    .param p0, "buf"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toStringList([CII)Ljava/util/List;
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p1

    .line 518
    .local v1, "lastPos":I
    add-int v2, p1, p2

    .line 519
    .local v2, "maxPos":I
    move v3, p1

    .local v3, "curPos":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 520
    aget-char v4, p0, v3

    if-eqz v4, :cond_0

    .line 521
    goto :goto_1

    .line 525
    :cond_0
    if-ne v1, v3, :cond_1

    .line 526
    return-object v0

    .line 529
    :cond_1
    new-instance v4, Ljava/lang/String;

    sub-int v5, v3, v1

    invoke-direct {v4, p0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 530
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v3, 0x1

    .line 519
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v3    # "curPos":I
    :cond_2
    if-ge v1, v2, :cond_3

    .line 536
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, v1

    invoke-direct {v3, p0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 537
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public static unregister()V
    .locals 1

    .line 1569
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;)V

    .line 1570
    return-void
.end method

.method public static unregister(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1577
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    .line 1578
    :try_start_0
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1579
    .local v1, "handles":[J
    if-eqz v1, :cond_0

    .line 1580
    invoke-static {p0, v1}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    .line 1581
    sget-object v2, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    sget-object v2, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .end local v1    # "handles":[J
    :cond_0
    monitor-exit v0

    .line 1585
    return-void

    .line 1584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native unregister(Ljava/lang/Class;[J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[J)V"
        }
    .end annotation
.end method

.method private static unregisterAll()V
    .locals 5

    .line 1555
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    .line 1556
    :try_start_0
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1557
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;[J>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-static {v3, v4}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    .line 1558
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;[J>;"
    goto :goto_0

    .line 1560
    :cond_0
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1561
    monitor-exit v0

    .line 1562
    return-void

    .line 1561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method static native write(Lcom/sun/jna/Pointer;JJ[SII)V
.end method
