.class public Lcom/sun/jna/Function;
.super Lcom/sun/jna/Pointer;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Function$PostCallRead;,
        Lcom/sun/jna/Function$PointerArray;,
        Lcom/sun/jna/Function$NativeMappedArray;
    }
.end annotation


# static fields
.field public static final ALT_CONVENTION:I = 0x3f

.field public static final C_CONVENTION:I = 0x0

.field static final INTEGER_FALSE:Ljava/lang/Integer;

.field static final INTEGER_TRUE:Ljava/lang/Integer;

.field private static final IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

.field private static final MASK_CC:I = 0x3f

.field public static final MAX_NARGS:I = 0x100

.field static final OPTION_INVOKING_METHOD:Ljava/lang/String; = "invoking-method"

.field public static final THROW_LAST_ERROR:I = 0x40

.field public static final USE_VARARGS:I = 0xff

.field private static final USE_VARARGS_SHIFT:I = 0x7


# instance fields
.field final callFlags:I

.field final encoding:Ljava/lang/String;

.field private final functionName:Ljava/lang/String;

.field private library:Lcom/sun/jna/NativeLibrary;

.field final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    .line 219
    invoke-static {}, Lcom/sun/jna/VarArgsChecker;->create()Lcom/sun/jna/VarArgsChecker;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    return-void
.end method

.method constructor <init>(Lcom/sun/jna/NativeLibrary;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "library"    # Lcom/sun/jna/NativeLibrary;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "callFlags"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/sun/jna/Pointer;-><init>()V

    .line 241
    and-int/lit8 v0, p3, 0x3f

    invoke-direct {p0, v0}, Lcom/sun/jna/Function;->checkCallingConvention(I)V

    .line 242
    if-eqz p2, :cond_1

    .line 245
    iput-object p1, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    .line 246
    iput-object p2, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    .line 247
    iput p3, p0, Lcom/sun/jna/Function;->callFlags:I

    .line 248
    invoke-virtual {p1}, Lcom/sun/jna/NativeLibrary;->getOptions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    .line 249
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    .line 251
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/sun/jna/NativeLibrary;->getSymbolAddress(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/jna/Function;->peer:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    nop

    .line 257
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error looking up function \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Function name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/sun/jna/Pointer;ILjava/lang/String;)V
    .locals 4
    .param p1, "functionAddress"    # Lcom/sun/jna/Pointer;
    .param p2, "callFlags"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/sun/jna/Pointer;-><init>()V

    .line 275
    and-int/lit8 v0, p2, 0x3f

    invoke-direct {p0, v0}, Lcom/sun/jna/Function;->checkCallingConvention(I)V

    .line 276
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/sun/jna/Pointer;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Lcom/sun/jna/Pointer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    .line 281
    iput p2, p0, Lcom/sun/jna/Function;->callFlags:I

    .line 282
    iget-wide v0, p1, Lcom/sun/jna/Pointer;->peer:J

    iput-wide v0, p0, Lcom/sun/jna/Function;->peer:J

    .line 283
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    .line 284
    if-eqz p3, :cond_0

    .line 285
    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    .line 286
    return-void

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Function address may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallingConvention(I)V
    .locals 3
    .param p1, "convention"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 291
    and-int/lit8 v0, p1, 0x3f

    if-ne v0, p1, :cond_0

    .line 295
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized calling convention: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static concatenateVarArgs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p0, "inArgs"    # [Ljava/lang/Object;

    .line 774
    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    .line 775
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    .line 776
    .local v0, "lastArg":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 777
    .local v2, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 778
    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    .line 780
    .local v3, "varArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 781
    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1

    .line 782
    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 780
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 785
    .end local v4    # "i":I
    :cond_2
    array-length v4, p0

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 786
    .local v4, "fullArgs":[Ljava/lang/Object;
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {p0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    array-length v7, v3

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aput-object v1, v4, v5

    .line 794
    move-object p0, v4

    .line 797
    .end local v0    # "lastArg":Ljava/lang/Object;
    .end local v2    # "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "varArgs":[Ljava/lang/Object;
    .end local v4    # "fullArgs":[Ljava/lang/Object;
    :cond_3
    return-object p0
.end method

.method private convertArgument([Ljava/lang/Object;ILjava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;ZLjava/lang/Class;)Ljava/lang/Object;
    .locals 16
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "invokingMethod"    # Ljava/lang/reflect/Method;
    .param p4, "mapper"    # Lcom/sun/jna/TypeMapper;
    .param p5, "allowObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/reflect/Method;",
            "Lcom/sun/jna/TypeMapper;",
            "Z",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 507
    .local p6, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    aget-object v6, v1, v2

    .line 508
    .local v6, "arg":Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 509
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 510
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 511
    .local v8, "converter":Lcom/sun/jna/ToNativeConverter;
    const-class v9, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 512
    invoke-static {v7}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v8

    goto :goto_0

    .line 513
    :cond_0
    if-eqz v4, :cond_1

    .line 514
    invoke-interface {v4, v7}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v8

    .line 516
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 518
    if-eqz v3, :cond_2

    .line 519
    new-instance v9, Lcom/sun/jna/MethodParameterContext;

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sun/jna/MethodParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;ILjava/lang/reflect/Method;)V

    .local v9, "context":Lcom/sun/jna/ToNativeContext;
    goto :goto_1

    .line 522
    .end local v9    # "context":Lcom/sun/jna/ToNativeContext;
    :cond_2
    new-instance v9, Lcom/sun/jna/FunctionParameterContext;

    invoke-direct {v9, v0, v1, v2}, Lcom/sun/jna/FunctionParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;I)V

    .line 524
    .restart local v9    # "context":Lcom/sun/jna/ToNativeContext;
    :goto_1
    invoke-interface {v8, v6, v9}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v6

    .line 527
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "converter":Lcom/sun/jna/ToNativeConverter;
    .end local v9    # "context":Lcom/sun/jna/ToNativeContext;
    :cond_3
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sun/jna/Function;->isPrimitiveArray(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_7

    .line 531
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 533
    .local v7, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v8, v6, Lcom/sun/jna/Structure;

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    .line 534
    move-object v8, v6

    check-cast v8, Lcom/sun/jna/Structure;

    .line 535
    .local v8, "struct":Lcom/sun/jna/Structure;
    invoke-virtual {v8}, Lcom/sun/jna/Structure;->autoWrite()V

    .line 536
    instance-of v10, v8, Lcom/sun/jna/Structure$ByValue;

    if-eqz v10, :cond_9

    .line 538
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 539
    .local v10, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_8

    .line 540
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 541
    .local v11, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v12, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {v12, v3}, Lcom/sun/jna/VarArgsChecker;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 542
    array-length v12, v11

    sub-int/2addr v12, v9

    if-ge v2, v12, :cond_5

    .line 543
    aget-object v10, v11, v2

    goto :goto_2

    .line 545
    :cond_5
    array-length v12, v11

    sub-int/2addr v12, v9

    aget-object v9, v11, v12

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 546
    .local v9, "etype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/lang/Object;

    if-eq v9, v12, :cond_6

    .line 547
    move-object v10, v9

    .line 549
    .end local v9    # "etype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    goto :goto_2

    .line 551
    :cond_7
    aget-object v10, v11, v2

    .line 554
    .end local v11    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8
    :goto_2
    const-class v9, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 555
    return-object v8

    .line 558
    .end local v10    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual {v8}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    return-object v9

    .line 559
    .end local v8    # "struct":Lcom/sun/jna/Structure;
    :cond_a
    instance-of v8, v6, Lcom/sun/jna/Callback;

    if-eqz v8, :cond_b

    .line 561
    move-object v8, v6

    check-cast v8, Lcom/sun/jna/Callback;

    invoke-static {v8}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object v8

    return-object v8

    .line 562
    :cond_b
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 567
    new-instance v8, Lcom/sun/jna/NativeString;

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v8

    return-object v8

    .line 568
    :cond_c
    instance-of v8, v6, Lcom/sun/jna/WString;

    if-eqz v8, :cond_d

    .line 570
    new-instance v8, Lcom/sun/jna/NativeString;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v8

    return-object v8

    .line 571
    :cond_d
    instance-of v8, v6, Ljava/lang/Boolean;

    if-eqz v8, :cond_f

    .line 574
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    goto :goto_3

    :cond_e
    sget-object v8, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    :goto_3
    return-object v8

    .line 575
    :cond_f
    const-class v8, [Ljava/lang/String;

    if-ne v8, v7, :cond_10

    .line 576
    new-instance v8, Lcom/sun/jna/StringArray;

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    iget-object v10, v0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 577
    :cond_10
    const-class v8, [Lcom/sun/jna/WString;

    if-ne v8, v7, :cond_11

    .line 578
    new-instance v8, Lcom/sun/jna/StringArray;

    move-object v9, v6

    check-cast v9, [Lcom/sun/jna/WString;

    invoke-direct {v8, v9}, Lcom/sun/jna/StringArray;-><init>([Lcom/sun/jna/WString;)V

    return-object v8

    .line 579
    :cond_11
    const-class v8, [Lcom/sun/jna/Pointer;

    if-ne v8, v7, :cond_12

    .line 580
    new-instance v8, Lcom/sun/jna/Function$PointerArray;

    move-object v9, v6

    check-cast v9, [Lcom/sun/jna/Pointer;

    invoke-direct {v8, v9}, Lcom/sun/jna/Function$PointerArray;-><init>([Lcom/sun/jna/Pointer;)V

    return-object v8

    .line 581
    :cond_12
    const-class v8, [Lcom/sun/jna/NativeMapped;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 582
    new-instance v8, Lcom/sun/jna/Function$NativeMappedArray;

    move-object v9, v6

    check-cast v9, [Lcom/sun/jna/NativeMapped;

    invoke-direct {v8, v9}, Lcom/sun/jna/Function$NativeMappedArray;-><init>([Lcom/sun/jna/NativeMapped;)V

    return-object v8

    .line 583
    :cond_13
    const-class v8, [Lcom/sun/jna/Structure;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 586
    move-object v8, v6

    check-cast v8, [Lcom/sun/jna/Structure;

    .line 587
    .local v8, "ss":[Lcom/sun/jna/Structure;
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 588
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    .line 589
    .local v11, "byRef":Z
    if-eqz v5, :cond_16

    .line 590
    const-class v12, [Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v12, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 591
    const-string v12, " declared Structure[] at parameter "

    const-string v13, "Function "

    if-nez v11, :cond_15

    .line 597
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    array-length v15, v8

    if-ge v14, v15, :cond_16

    .line 598
    aget-object v15, v8, v14

    instance-of v15, v15, Lcom/sun/jna/Structure$ByReference;

    if-nez v15, :cond_14

    .line 597
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 599
    :cond_14
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but element "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is of Structure.ByReference type"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 592
    .end local v14    # "i":I
    :cond_15
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but array of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was passed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 607
    :cond_16
    if-eqz v11, :cond_19

    .line 608
    invoke-static {v8}, Lcom/sun/jna/Structure;->autoWrite([Lcom/sun/jna/Structure;)V

    .line 609
    array-length v12, v8

    add-int/2addr v12, v9

    new-array v9, v12, [Lcom/sun/jna/Pointer;

    .line 610
    .local v9, "pointers":[Lcom/sun/jna/Pointer;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    array-length v13, v8

    if-ge v12, v13, :cond_18

    .line 611
    aget-object v13, v8, v12

    if-eqz v13, :cond_17

    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v13

    goto :goto_6

    :cond_17
    const/4 v13, 0x0

    :goto_6
    aput-object v13, v9, v12

    .line 610
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 613
    .end local v12    # "i":I
    :cond_18
    new-instance v12, Lcom/sun/jna/Function$PointerArray;

    invoke-direct {v12, v9}, Lcom/sun/jna/Function$PointerArray;-><init>([Lcom/sun/jna/Pointer;)V

    return-object v12

    .line 614
    .end local v9    # "pointers":[Lcom/sun/jna/Pointer;
    :cond_19
    array-length v9, v8

    if-eqz v9, :cond_1b

    .line 616
    const/4 v9, 0x0

    aget-object v12, v8, v9

    if-nez v12, :cond_1a

    .line 617
    invoke-static {v10}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sun/jna/Structure;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    .line 618
    aget-object v9, v8, v9

    invoke-virtual {v9}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    return-object v9

    .line 620
    :cond_1a
    invoke-static {v8}, Lcom/sun/jna/Structure;->autoWrite([Lcom/sun/jna/Structure;)V

    .line 621
    aget-object v9, v8, v9

    invoke-virtual {v9}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    return-object v9

    .line 615
    :cond_1b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "Structure array must have non-zero length"

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 623
    .end local v8    # "ss":[Lcom/sun/jna/Structure;
    .end local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "byRef":Z
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-nez v8, :cond_1f

    .line 626
    if-eqz p5, :cond_1d

    .line 627
    return-object v6

    .line 628
    :cond_1d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/jna/Native;->isSupportedNativeType(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 634
    return-object v6

    .line 629
    :cond_1e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported argument type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 630
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at parameter "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of function "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 624
    :cond_1f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported array argument type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 625
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 528
    .end local v7    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    :goto_7
    return-object v6
.end method

.method static fixedArgs(Ljava/lang/reflect/Method;)I
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 807
    sget-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {v0, p0}, Lcom/sun/jna/VarArgsChecker;->fixedArgs(Ljava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;
    .locals 2
    .param p0, "p"    # Lcom/sun/jna/Pointer;

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object v0

    return-object v0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;
    .locals 1
    .param p0, "p"    # Lcom/sun/jna/Pointer;
    .param p1, "callFlags"    # I

    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object v0

    return-object v0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;
    .locals 1
    .param p0, "p"    # Lcom/sun/jna/Pointer;
    .param p1, "callFlags"    # I
    .param p2, "encoding"    # Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/sun/jna/Function;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Function;-><init>(Lcom/sun/jna/Pointer;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/Function;
    .locals 1
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;)Lcom/sun/jna/Function;

    move-result-object v0

    return-object v0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/Function;
    .locals 2
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "callFlags"    # I

    .line 126
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object v0

    return-object v0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;
    .locals 1
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "callFlags"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 150
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object v0

    return-object v0
.end method

.method private invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;
    .locals 4
    .param p1, "callFlags"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 500
    iget-wide v0, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->invokePointer(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J

    move-result-wide v0

    .line 501
    .local v0, "ptr":J
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

.method private invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 5
    .param p1, "callFlags"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "wide"    # Z

    .line 663
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 664
    .local v0, "ptr":Lcom/sun/jna/Pointer;
    const/4 v1, 0x0

    .line 665
    .local v1, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 666
    const-wide/16 v2, 0x0

    if-eqz p3, :cond_0

    .line 667
    invoke-virtual {v0, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 670
    :cond_0
    iget-object v4, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    :cond_1
    :goto_0
    return-object v1
.end method

.method private isPrimitiveArray(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 638
    .local p1, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0
.end method

.method static isVarArgs(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 802
    sget-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {v0, p0}, Lcom/sun/jna/VarArgsChecker;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method static valueOf(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    .line 841
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 748
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 749
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 750
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 751
    move-object v2, p1

    check-cast v2, Lcom/sun/jna/Function;

    .line 752
    .local v2, "other":Lcom/sun/jna/Function;
    iget v3, v2, Lcom/sun/jna/Function;->callFlags:I

    iget v4, p0, Lcom/sun/jna/Function;->callFlags:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    iget-object v4, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Lcom/sun/jna/Function;->peer:J

    iget-wide v5, p0, Lcom/sun/jna/Function;->peer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 752
    :goto_0
    return v0

    .line 756
    .end local v2    # "other":Lcom/sun/jna/Function;
    :cond_3
    return v1
.end method

.method public getCallingConvention()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/sun/jna/Function;->callFlags:I

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 764
    iget v0, p0, Lcom/sun/jna/Function;->callFlags:I

    iget-object v1, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-super {p0}, Lcom/sun/jna/Pointer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "inArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 309
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .param p2, "inArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 316
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "invoking-method"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 317
    .local v0, "invokingMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 318
    .local v3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Function;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method invoke(Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 20
    .param p1, "invokingMethod"    # Ljava/lang/reflect/Method;
    .param p4, "inArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 329
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 330
    .local v1, "args":[Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 331
    array-length v2, v11

    const/16 v3, 0x100

    if-gt v2, v3, :cond_0

    .line 334
    array-length v2, v11

    new-array v1, v2, [Ljava/lang/Object;

    .line 335
    array-length v2, v1

    invoke-static {v11, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v1

    goto :goto_0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Maximum argument count is 256"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    move-object v13, v1

    .line 338
    .end local v1    # "args":[Ljava/lang/Object;
    .local v13, "args":[Ljava/lang/Object;
    :goto_0
    const-string v1, "type-mapper"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/sun/jna/TypeMapper;

    .line 339
    .local v14, "mapper":Lcom/sun/jna/TypeMapper;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "allow-objects"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 340
    .local v15, "allowObjects":Z
    array-length v1, v13

    if-lez v1, :cond_2

    if-eqz v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/sun/jna/Function;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move/from16 v16, v1

    .line 341
    .local v16, "isVarArgs":Z
    array-length v1, v13

    if-lez v1, :cond_3

    if-eqz v8, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sun/jna/Function;->fixedArgs(Ljava/lang/reflect/Method;)I

    move-result v0

    :cond_3
    move v5, v0

    .line 342
    .local v5, "fixedArgs":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_2
    array-length v0, v13

    if-ge v4, v0, :cond_6

    .line 343
    if-eqz v8, :cond_5

    .line 344
    if-eqz v16, :cond_4

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_4

    .line 345
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    .line 346
    :cond_4
    aget-object v0, v9, v4

    move-object v6, v0

    goto :goto_3

    .line 347
    :cond_5
    const/4 v0, 0x0

    move-object v6, v0

    :goto_3
    nop

    .line 348
    .local v6, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v17, v4

    .end local v4    # "i":I
    .local v17, "i":I
    move-object v4, v14

    move v9, v5

    .end local v5    # "fixedArgs":I
    .local v9, "fixedArgs":I
    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/sun/jna/Function;->convertArgument([Ljava/lang/Object;ILjava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v13, v17

    .line 342
    .end local v6    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v17, 0x1

    move v5, v9

    move-object/from16 v9, p2

    .end local v17    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .end local v9    # "fixedArgs":I
    .restart local v5    # "fixedArgs":I
    :cond_6
    move/from16 v17, v4

    move v9, v5

    .line 351
    .end local v4    # "i":I
    .end local v5    # "fixedArgs":I
    .restart local v9    # "fixedArgs":I
    move-object/from16 v0, p3

    .line 352
    .local v0, "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 353
    .local v1, "resultConverter":Lcom/sun/jna/FromNativeConverter;
    const-class v2, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    invoke-static/range {p3 .. p3}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v2

    .line 355
    .local v2, "tc":Lcom/sun/jna/NativeMappedConverter;
    move-object v1, v2

    .line 356
    invoke-virtual {v2}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    .end local v2    # "tc":Lcom/sun/jna/NativeMappedConverter;
    goto :goto_4

    .line 357
    :cond_7
    if-eqz v14, :cond_8

    .line 358
    invoke-interface {v14, v10}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_9

    .line 360
    invoke-interface {v1}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 357
    :cond_8
    :goto_4
    nop

    .line 364
    :cond_9
    :goto_5
    invoke-virtual {v7, v13, v0, v15, v9}, Lcom/sun/jna/Function;->invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v2

    .line 366
    .local v2, "result":Ljava/lang/Object;
    if-eqz v1, :cond_b

    .line 368
    if-eqz v8, :cond_a

    .line 369
    new-instance v3, Lcom/sun/jna/MethodResultContext;

    invoke-direct {v3, v10, v7, v11, v8}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .local v3, "context":Lcom/sun/jna/FromNativeContext;
    goto :goto_6

    .line 371
    .end local v3    # "context":Lcom/sun/jna/FromNativeContext;
    :cond_a
    new-instance v3, Lcom/sun/jna/FunctionResultContext;

    invoke-direct {v3, v10, v7, v11}, Lcom/sun/jna/FunctionResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;)V

    .line 373
    .restart local v3    # "context":Lcom/sun/jna/FromNativeContext;
    :goto_6
    invoke-interface {v1, v2, v3}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v2

    .line 377
    .end local v3    # "context":Lcom/sun/jna/FromNativeContext;
    :cond_b
    if-eqz v11, :cond_15

    .line 378
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, v11

    if-ge v3, v4, :cond_14

    .line 379
    aget-object v4, v11, v3

    .line 380
    .local v4, "inArg":Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 381
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    goto/16 :goto_9

    .line 382
    :cond_c
    instance-of v5, v4, Lcom/sun/jna/Structure;

    if-eqz v5, :cond_e

    .line 383
    instance-of v5, v4, Lcom/sun/jna/Structure$ByValue;

    if-nez v5, :cond_d

    .line 384
    move-object v5, v4

    check-cast v5, Lcom/sun/jna/Structure;

    invoke-virtual {v5}, Lcom/sun/jna/Structure;->autoRead()V

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    goto/16 :goto_9

    .line 383
    :cond_d
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    goto/16 :goto_9

    .line 386
    :cond_e
    aget-object v5, v13, v3

    instance-of v5, v5, Lcom/sun/jna/Function$PostCallRead;

    if-eqz v5, :cond_12

    .line 387
    aget-object v5, v13, v3

    check-cast v5, Lcom/sun/jna/Function$PostCallRead;

    invoke-interface {v5}, Lcom/sun/jna/Function$PostCallRead;->read()V

    .line 388
    aget-object v5, v13, v3

    instance-of v5, v5, Lcom/sun/jna/Function$PointerArray;

    if-eqz v5, :cond_11

    .line 389
    aget-object v5, v13, v3

    check-cast v5, Lcom/sun/jna/Function$PointerArray;

    .line 390
    .local v5, "array":Lcom/sun/jna/Function$PointerArray;
    const-class v6, [Lcom/sun/jna/Structure$ByReference;

    move-object/from16 v17, v0

    .end local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 392
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sun/jna/Structure;>;"
    move-object v6, v4

    check-cast v6, [Lcom/sun/jna/Structure;

    .line 393
    .local v6, "ss":[Lcom/sun/jna/Structure;
    const/16 v18, 0x0

    move-object/from16 v19, v1

    move/from16 v1, v18

    .local v1, "si":I
    .local v19, "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :goto_8
    array-length v7, v6

    if-ge v1, v7, :cond_10

    .line 394
    sget v7, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v7, v1

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lcom/sun/jna/Function$PointerArray;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v7

    .line 395
    .local v7, "p":Lcom/sun/jna/Pointer;
    aget-object v8, v6, v1

    invoke-static {v0, v8, v7}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v8

    aput-object v8, v6, v1

    .line 393
    .end local v7    # "p":Lcom/sun/jna/Pointer;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto :goto_8

    .line 390
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sun/jna/Structure;>;"
    .end local v6    # "ss":[Lcom/sun/jna/Structure;
    .end local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .local v1, "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_f
    move-object/from16 v19, v1

    .line 398
    .end local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .end local v5    # "array":Lcom/sun/jna/Function$PointerArray;
    .restart local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_10
    goto :goto_9

    .line 388
    .end local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .local v0, "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_11
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    goto :goto_9

    .line 399
    .end local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_12
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    const-class v0, [Lcom/sun/jna/Structure;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 400
    move-object v0, v4

    check-cast v0, [Lcom/sun/jna/Structure;

    invoke-static {v0}, Lcom/sun/jna/Structure;->autoRead([Lcom/sun/jna/Structure;)V

    .line 378
    .end local v4    # "inArg":Ljava/lang/Object;
    :cond_13
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto/16 :goto_7

    .end local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_14
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    goto :goto_a

    .line 377
    .end local v3    # "i":I
    .end local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :cond_15
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .line 405
    .end local v0    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    .restart local v17    # "nativeReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "resultConverter":Lcom/sun/jna/FromNativeConverter;
    :goto_a
    return-object v2
.end method

.method invoke([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .param p3, "allowObjects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 410
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Function;->invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;
    .param p3, "allowObjects"    # Z
    .param p4, "fixedArgs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 415
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 416
    .local v0, "result":Ljava/lang/Object;
    iget v1, p0, Lcom/sun/jna/Function;->callFlags:I

    and-int/lit16 v2, p4, 0xff

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 417
    .local v1, "callFlags":I
    if-eqz p2, :cond_22

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_22

    const-class v2, Ljava/lang/Void;

    if-ne p2, v2, :cond_0

    goto/16 :goto_9

    .line 420
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_20

    const-class v2, Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    goto/16 :goto_8

    .line 422
    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1f

    const-class v2, Ljava/lang/Byte;

    if-ne p2, v2, :cond_2

    goto/16 :goto_7

    .line 424
    :cond_2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1e

    const-class v2, Ljava/lang/Short;

    if-ne p2, v2, :cond_3

    goto/16 :goto_6

    .line 426
    :cond_3
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1d

    const-class v2, Ljava/lang/Character;

    if-ne p2, v2, :cond_4

    goto/16 :goto_5

    .line 428
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1c

    const-class v2, Ljava/lang/Integer;

    if-ne p2, v2, :cond_5

    goto/16 :goto_4

    .line 430
    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1b

    const-class v2, Ljava/lang/Long;

    if-ne p2, v2, :cond_6

    goto/16 :goto_3

    .line 432
    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_1a

    const-class v2, Ljava/lang/Float;

    if-ne p2, v2, :cond_7

    goto/16 :goto_2

    .line 434
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_19

    const-class v2, Ljava/lang/Double;

    if-ne p2, v2, :cond_8

    goto/16 :goto_1

    .line 436
    :cond_8
    const-class v2, Ljava/lang/String;

    if-ne p2, v2, :cond_9

    .line 437
    invoke-direct {p0, v1, p1, v3}, Lcom/sun/jna/Function;->invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 438
    :cond_9
    const-class v2, Lcom/sun/jna/WString;

    if-ne p2, v2, :cond_b

    .line 439
    invoke-direct {p0, v1, p1, v4}, Lcom/sun/jna/Function;->invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 441
    new-instance v3, Lcom/sun/jna/WString;

    invoke-direct {v3, v2}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 443
    .end local v2    # "s":Ljava/lang/String;
    :cond_a
    goto/16 :goto_a

    :cond_b
    const-class v2, Lcom/sun/jna/Pointer;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 444
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v2

    return-object v2

    .line 445
    :cond_c
    const-class v2, Lcom/sun/jna/Structure;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 446
    const-class v2, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 447
    iget-wide v4, p0, Lcom/sun/jna/Function;->peer:J

    .line 449
    invoke-static {p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object v8

    .line 448
    move-object v3, p0

    move v6, v1

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/sun/jna/Native;->invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;Lcom/sun/jna/Structure;)Lcom/sun/jna/Structure;

    move-result-object v2

    .line 450
    .local v2, "s":Lcom/sun/jna/Structure;
    invoke-virtual {v2}, Lcom/sun/jna/Structure;->autoRead()V

    .line 451
    move-object v0, v2

    .line 452
    .end local v2    # "s":Lcom/sun/jna/Structure;
    goto/16 :goto_a

    .line 453
    :cond_d
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_23

    .line 455
    move-object v2, v0

    check-cast v2, Lcom/sun/jna/Pointer;

    invoke-static {p2, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v2

    .line 456
    .restart local v2    # "s":Lcom/sun/jna/Structure;
    invoke-virtual {v2}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    .line 457
    move-object v0, v2

    .line 458
    .end local v2    # "s":Lcom/sun/jna/Structure;
    goto/16 :goto_a

    .line 460
    :cond_e
    const-class v2, Lcom/sun/jna/Callback;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 461
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_23

    .line 463
    move-object v2, v0

    check-cast v2, Lcom/sun/jna/Pointer;

    invoke-static {p2, v2}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    move-result-object v0

    goto/16 :goto_a

    .line 465
    :cond_f
    const-class v2, [Ljava/lang/String;

    const-wide/16 v3, 0x0

    if-ne p2, v2, :cond_11

    .line 466
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v2

    .line 467
    .local v2, "p":Lcom/sun/jna/Pointer;
    if-eqz v2, :cond_10

    .line 468
    iget-object v5, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/jna/Pointer;->getStringArray(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    .end local v2    # "p":Lcom/sun/jna/Pointer;
    :cond_10
    goto/16 :goto_a

    :cond_11
    const-class v2, [Lcom/sun/jna/WString;

    if-ne p2, v2, :cond_14

    .line 471
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v2

    .line 472
    .restart local v2    # "p":Lcom/sun/jna/Pointer;
    if-eqz v2, :cond_13

    .line 473
    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/Pointer;->getWideStringArray(J)[Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "arr":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Lcom/sun/jna/WString;

    .line 475
    .local v4, "warr":[Lcom/sun/jna/WString;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_12

    .line 476
    new-instance v6, Lcom/sun/jna/WString;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 478
    .end local v5    # "i":I
    :cond_12
    move-object v0, v4

    .line 480
    .end local v2    # "p":Lcom/sun/jna/Pointer;
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "warr":[Lcom/sun/jna/WString;
    :cond_13
    goto/16 :goto_a

    :cond_14
    const-class v2, [Lcom/sun/jna/Pointer;

    if-ne p2, v2, :cond_16

    .line 481
    invoke-direct {p0, v1, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object v2

    .line 482
    .restart local v2    # "p":Lcom/sun/jna/Pointer;
    if-eqz v2, :cond_15

    .line 483
    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/Pointer;->getPointerArray(J)[Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 485
    .end local v2    # "p":Lcom/sun/jna/Pointer;
    :cond_15
    goto/16 :goto_a

    :cond_16
    if-eqz p3, :cond_18

    .line 486
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeObject(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_23

    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_a

    .line 489
    :cond_17
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported return type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_19
    :goto_1
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeDouble(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_a

    .line 433
    :cond_1a
    :goto_2
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeFloat(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_a

    .line 431
    :cond_1b
    :goto_3
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeLong(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    .line 429
    :cond_1c
    :goto_4
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 427
    :cond_1d
    :goto_5
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_a

    .line 425
    :cond_1e
    :goto_6
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_a

    .line 423
    :cond_1f
    :goto_7
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_a

    .line 421
    :cond_20
    :goto_8
    iget-wide v5, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v5, v6, v1, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_21

    move v3, v4

    :cond_21
    invoke-static {v3}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 418
    :cond_22
    :goto_9
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v2, v3, v1, p1}, Lcom/sun/jna/Native;->invokeVoid(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x0

    .line 496
    :cond_23
    :goto_a
    return-object v0
.end method

.method public invoke([Ljava/lang/Object;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 648
    const-class v0, Ljava/lang/Void;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method

.method public invokeDouble([Ljava/lang/Object;)D
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 734
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public invokeFloat([Ljava/lang/Object;)F
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 728
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public invokeInt([Ljava/lang/Object;)I
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 716
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public invokeLong([Ljava/lang/Object;)J
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 722
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public invokeObject([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 690
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokePointer([Ljava/lang/Object;)Lcom/sun/jna/Pointer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 697
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public invokeString([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "wide"    # Z

    .line 708
    if-eqz p2, :cond_0

    const-class v0, Lcom/sun/jna/WString;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public invokeVoid([Ljava/lang/Object;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 740
    const-class v0, Ljava/lang/Void;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    invoke-virtual {v1}, Lcom/sun/jna/NativeLibrary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sun/jna/Function;->peer:J

    .line 681
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native function@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
