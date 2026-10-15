.class public final Lcom/sun/jna/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final AIX:I = 0x7

.field public static final ANDROID:I = 0x8

.field public static final ARCH:Ljava/lang/String;

.field public static final C_LIBRARY_NAME:Ljava/lang/String;

.field public static final DRAGONFLYBSD:I = 0xc

.field public static final FREEBSD:I = 0x4

.field public static final GNU:I = 0x9

.field public static final HAS_AWT:Z

.field public static final HAS_BUFFERS:Z

.field public static final HAS_DLL_CALLBACKS:Z

.field public static final HAS_JAWT:Z

.field public static final KFREEBSD:I = 0xa

.field public static final LINUX:I = 0x1

.field public static final MAC:I = 0x0

.field public static final MATH_LIBRARY_NAME:Ljava/lang/String;

.field public static final NETBSD:I = 0xb

.field public static final OPENBSD:I = 0x5

.field public static final RESOURCE_PREFIX:Ljava/lang/String;

.field public static final RO_FIELDS:Z

.field public static final SOLARIS:I = 0x3

.field public static final UNSPECIFIED:I = -0x1

.field public static final WINDOWS:I = 0x2

.field public static final WINDOWSCE:I = 0x6

.field private static final osType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 73
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "dalvik"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sput v2, Lcom/sun/jna/Platform;->osType:I

    .line 78
    const-string v1, "jna.nounpack"

    const-string v8, "true"

    invoke-static {v1, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 81
    :cond_0
    sput v7, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_2

    .line 84
    :cond_1
    const-string v1, "AIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sput v3, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_2

    .line 87
    :cond_2
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 90
    :cond_3
    const-string v1, "Windows CE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    sput v5, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_2

    .line 93
    :cond_4
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    sput v4, Lcom/sun/jna/Platform;->osType:I

    goto/16 :goto_2

    .line 96
    :cond_5
    const-string v1, "Solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 99
    :cond_6
    const-string v1, "FreeBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    const/4 v1, 0x4

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 102
    :cond_7
    const-string v1, "OpenBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    const/4 v1, 0x5

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 105
    :cond_8
    const-string v1, "gnu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    const/16 v1, 0x9

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 108
    :cond_9
    const-string v1, "gnu/kfreebsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 109
    const/16 v1, 0xa

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 111
    :cond_a
    const-string v1, "netbsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    const/16 v1, 0xb

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 114
    :cond_b
    const-string v1, "dragonflybsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    const/16 v1, 0xc

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 118
    :cond_c
    const/4 v1, -0x1

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 97
    :cond_d
    :goto_0
    const/4 v1, 0x3

    sput v1, Lcom/sun/jna/Platform;->osType:I

    goto :goto_2

    .line 88
    :cond_e
    :goto_1
    sput v6, Lcom/sun/jna/Platform;->osType:I

    .line 120
    :goto_2
    const/4 v1, 0x0

    .line 122
    .local v1, "hasBuffers":Z
    :try_start_0
    const-string v8, "java.nio.Buffer"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v1, 0x1

    .line 126
    goto :goto_3

    .line 125
    :catch_0
    move-exception v8

    .line 130
    :goto_3
    sget v8, Lcom/sun/jna/Platform;->osType:I

    if-eq v8, v5, :cond_f

    sget v8, Lcom/sun/jna/Platform;->osType:I

    if-eq v8, v2, :cond_f

    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-eq v2, v3, :cond_f

    move v2, v7

    goto :goto_4

    :cond_f
    move v2, v6

    :goto_4
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_AWT:Z

    .line 131
    sget-boolean v2, Lcom/sun/jna/Platform;->HAS_AWT:Z

    if-eqz v2, :cond_10

    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-eqz v2, :cond_10

    move v2, v7

    goto :goto_5

    :cond_10
    move v2, v6

    :goto_5
    sput-boolean v2, Lcom/sun/jna/Platform;->HAS_JAWT:Z

    .line 132
    sput-boolean v1, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 133
    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-eq v2, v5, :cond_11

    move v2, v7

    goto :goto_6

    :cond_11
    move v2, v6

    :goto_6
    sput-boolean v2, Lcom/sun/jna/Platform;->RO_FIELDS:Z

    .line 134
    sget v2, Lcom/sun/jna/Platform;->osType:I

    const-string v3, "coredll"

    const-string v8, "msvcrt"

    if-ne v2, v4, :cond_12

    move-object v2, v8

    goto :goto_7

    :cond_12
    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-ne v2, v5, :cond_13

    move-object v2, v3

    goto :goto_7

    :cond_13
    const-string v2, "c"

    :goto_7
    sput-object v2, Lcom/sun/jna/Platform;->C_LIBRARY_NAME:Ljava/lang/String;

    .line 135
    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-ne v2, v4, :cond_14

    move-object v3, v8

    goto :goto_8

    :cond_14
    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-ne v2, v5, :cond_15

    goto :goto_8

    :cond_15
    const-string v3, "m"

    :goto_8
    sput-object v3, Lcom/sun/jna/Platform;->MATH_LIBRARY_NAME:Ljava/lang/String;

    .line 136
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sun/jna/Platform;->osType:I

    invoke-static {v2, v3}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 138
    sget v2, Lcom/sun/jna/Platform;->osType:I

    if-ne v2, v4, :cond_16

    sget-object v2, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v3, "aarch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    move v6, v7

    :cond_16
    sput-boolean v6, Lcom/sun/jna/Platform;->HAS_DLL_CALLBACKS:Z

    .line 139
    invoke-static {}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 140
    .end local v0    # "osName":Ljava/lang/String;
    .end local v1    # "hasBuffers":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "arch"    # Ljava/lang/String;
    .param p1, "platform"    # I

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 255
    const-string v0, "powerpc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string p0, "ppc"

    goto :goto_2

    .line 258
    :cond_0
    const-string v0, "powerpc64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string p0, "ppc64"

    goto :goto_2

    .line 261
    :cond_1
    const-string v0, "i386"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "i686"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 264
    :cond_2
    const-string v0, "x86_64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "amd64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "zarch_64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    const-string p0, "s390x"

    goto :goto_2

    .line 265
    :cond_4
    :goto_0
    const-string p0, "x86-64"

    goto :goto_2

    .line 262
    :cond_5
    :goto_1
    const-string p0, "x86"

    .line 272
    :cond_6
    :goto_2
    const-string v0, "ppc64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sun.cpu.endian"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "little"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    const-string p0, "ppc64le"

    .line 276
    :cond_7
    const-string v0, "arm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/sun/jna/Platform;->isSoftFloat()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 277
    const-string p0, "armel"

    .line 280
    :cond_8
    return-object p0
.end method

.method static getNativeLibraryResourcePrefix()Ljava/lang/String;
    .locals 4

    .line 304
    const-string v0, "jna.prefix"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 306
    return-object v0

    .line 308
    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->getOSType()I

    move-result v1

    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sun/jna/Platform;->getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getNativeLibraryResourcePrefix(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "osType"    # I
    .param p1, "arch"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 320
    invoke-static {p1, p0}, Lcom/sun/jna/Platform;->getCanonicalArchitecture(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 321
    packed-switch p0, :pswitch_data_0

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "osPrefix":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, "space":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 344
    .end local v0    # "osPrefix":Ljava/lang/String;
    .end local v1    # "space":I
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dragonflybsd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 353
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netbsd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 356
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kfreebsd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 323
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_4
    const-string v0, "arm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string p1, "arm"

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 332
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w32ce-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 350
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openbsd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 347
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freebsd-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto :goto_1

    .line 341
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sunos-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "win32-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto :goto_1

    .line 338
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linux-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto :goto_1

    .line 335
    .end local v0    # "osPrefix":Ljava/lang/String;
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "darwin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0    # "osPrefix":Ljava/lang/String;
    goto :goto_1

    .line 364
    .restart local v1    # "space":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .end local v1    # "space":I
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getOSType()I
    .locals 1

    .line 143
    sget v0, Lcom/sun/jna/Platform;->osType:I

    return v0
.end method

.method public static final hasRuntimeExec()Z
    .locals 2

    .line 190
    invoke-static {}, Lcom/sun/jna/Platform;->isWindowsCE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "J9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final is64Bit()Z
    .locals 4

    .line 195
    nop

    .line 196
    const-string v0, "com.ibm.vm.bitmode"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "sun.arch.data.model"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    const-string v1, "64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 200
    :cond_0
    const-string v1, "x86-64"

    sget-object v2, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 201
    const-string v3, "ia64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 202
    const-string v3, "ppc64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ppc64le"

    sget-object v3, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 203
    const-string v3, "sparcv9"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 204
    const-string v3, "mips64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mips64el"

    sget-object v3, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 205
    const-string v3, "loongarch64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 206
    const-string v3, "amd64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 207
    const-string v3, "aarch64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 208
    :cond_3
    :goto_1
    return v2
.end method

.method public static final isAIX()Z
    .locals 2

    .line 155
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isARM()Z
    .locals 2

    .line 228
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "aarch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isAndroid()Z
    .locals 2

    .line 149
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isDragonFlyBSD()Z
    .locals 2

    .line 168
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isFreeBSD()Z
    .locals 2

    .line 171
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isGNU()Z
    .locals 2

    .line 180
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isIntel()Z
    .locals 2

    .line 214
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isLinux()Z
    .locals 2

    .line 152
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isLoongArch()Z
    .locals 2

    .line 246
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "loongarch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMIPS()Z
    .locals 2

    .line 236
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 237
    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 238
    const-string v1, "mipsel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    .line 239
    const-string v1, "mips64el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final isMac()Z
    .locals 1

    .line 146
    sget v0, Lcom/sun/jna/Platform;->osType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNetBSD()Z
    .locals 2

    .line 177
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOpenBSD()Z
    .locals 2

    .line 174
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPPC()Z
    .locals 2

    .line 221
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "ppc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isRISCV()Z
    .locals 2

    .line 250
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "riscv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isSPARC()Z
    .locals 2

    .line 232
    sget-object v0, Lcom/sun/jna/Platform;->ARCH:Ljava/lang/String;

    const-string v1, "sparc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isSoftFloat()Z
    .locals 4

    .line 285
    const-class v0, Lcom/sun/jna/Platform;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/exe"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "self":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/jna/ELFAnalyser;->analyse(Ljava/lang/String;)Lcom/sun/jna/ELFAnalyser;

    move-result-object v2

    .line 288
    .local v2, "ahfd":Lcom/sun/jna/ELFAnalyser;
    invoke-virtual {v2}, Lcom/sun/jna/ELFAnalyser;->isArmHardFloat()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 286
    .end local v1    # "self":Ljava/io/File;
    .end local v2    # "ahfd":Lcom/sun/jna/ELFAnalyser;
    :cond_0
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 295
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "SecurityException while analysing \'/proc/self/exe\' or the target binary."

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 290
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 292
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to read \'/proc/self/exe\' or the target binary."

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    nop

    .line 297
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final isSolaris()Z
    .locals 2

    .line 165
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isWindows()Z
    .locals 2

    .line 162
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isWindowsCE()Z
    .locals 2

    .line 158
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isX11()Z
    .locals 1

    .line 187
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final iskFreeBSD()Z
    .locals 2

    .line 183
    sget v0, Lcom/sun/jna/Platform;->osType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
