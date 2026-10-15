.class Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;
.super Ljava/lang/Object;
.source "CallbackReference.java"

# interfaces
.implements Lcom/sun/jna/CallbackProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/CallbackReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultCallbackProxy"
.end annotation


# instance fields
.field private final callbackMethod:Ljava/lang/reflect/Method;

.field private final encoding:Ljava/lang/String;

.field private final fromNative:[Lcom/sun/jna/FromNativeConverter;

.field final synthetic this$0:Lcom/sun/jna/CallbackReference;

.field private toNative:Lcom/sun/jna/ToNativeConverter;


# direct methods
.method public constructor <init>(Lcom/sun/jna/CallbackReference;Ljava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;Ljava/lang/String;)V
    .locals 5
    .param p2, "callbackMethod"    # Ljava/lang/reflect/Method;
    .param p3, "mapper"    # Lcom/sun/jna/TypeMapper;
    .param p4, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->this$0:Lcom/sun/jna/CallbackReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    .line 532
    iput-object p4, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    .line 533
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 534
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 535
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/jna/FromNativeConverter;

    iput-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    .line 536
    const-class v1, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-static {v0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    goto :goto_0

    .line 539
    :cond_0
    if-eqz p3, :cond_1

    .line 540
    invoke-interface {p3, v0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    .line 542
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 543
    const-class v2, Lcom/sun/jna/NativeMapped;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    new-instance v3, Lcom/sun/jna/NativeMappedConverter;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Lcom/sun/jna/NativeMappedConverter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_2

    .line 546
    :cond_2
    if-eqz p3, :cond_3

    .line 547
    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v3, p1, v1

    invoke-interface {p3, v3}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v3

    aput-object v3, v2, v1

    .line 542
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_5

    .line 552
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_3

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback method is inaccessible, make sure the interface is public: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_5
    :goto_3
    return-void
.end method

.method private convertArgument(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 625
    .local p2, "dstType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p1, Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_6

    .line 626
    const-class v0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 627
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    iget-object v3, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 629
    :cond_0
    const-class v0, Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_1

    .line 630
    new-instance v0, Lcom/sun/jna/WString;

    move-object v3, p1

    check-cast v3, Lcom/sun/jna/Pointer;

    invoke-virtual {v3, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 632
    :cond_1
    const-class v0, [Ljava/lang/String;

    if-ne p2, v0, :cond_2

    .line 633
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    iget-object v3, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->getStringArray(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 635
    :cond_2
    const-class v0, [Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_3

    .line 636
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getWideStringArray(J)[Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 638
    :cond_3
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    invoke-static {p2, v0}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    move-result-object p1

    goto :goto_1

    .line 641
    :cond_4
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 644
    const-class v0, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 645
    invoke-static {p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object v0

    .line 646
    .local v0, "s":Lcom/sun/jna/Structure;
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 647
    .local v1, "buf":[B
    move-object v2, p1

    check-cast v2, Lcom/sun/jna/Pointer;

    const/4 v6, 0x0

    array-length v7, v1

    const-wide/16 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->read(J[BII)V

    .line 648
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    array-length v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 649
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->read()V

    .line 650
    move-object p1, v0

    .line 651
    .end local v0    # "s":Lcom/sun/jna/Structure;
    .end local v1    # "buf":[B
    goto :goto_1

    .line 652
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Pointer;

    invoke-static {p2, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    .line 653
    .restart local v0    # "s":Lcom/sun/jna/Structure;
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    .line 654
    move-object p1, v0

    .line 655
    .end local v0    # "s":Lcom/sun/jna/Structure;
    goto :goto_1

    .line 658
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p2, :cond_7

    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p2, :cond_9

    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 660
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 662
    :cond_9
    :goto_1
    return-object p1
.end method

.method private convertResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 666
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->toNative:Lcom/sun/jna/ToNativeConverter;

    new-instance v1, Lcom/sun/jna/CallbackResultContext;

    iget-object v2, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2}, Lcom/sun/jna/CallbackResultContext;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p1

    .line 669
    :cond_0
    if-nez p1, :cond_1

    .line 670
    const/4 v0, 0x0

    return-object v0

    .line 673
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 674
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/sun/jna/Structure;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    const-class v1, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    return-object p1

    .line 678
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sun/jna/Structure;

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    return-object v1

    .line 679
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    goto :goto_4

    .line 682
    :cond_4
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_a

    const-class v1, Lcom/sun/jna/WString;

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 684
    :cond_5
    const-class v1, [Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const-class v1, [Lcom/sun/jna/WString;

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 691
    :cond_6
    const-class v1, Lcom/sun/jna/Callback;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 692
    move-object v1, p1

    check-cast v1, Lcom/sun/jna/Callback;

    invoke-static {v1}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object v1

    return-object v1

    .line 694
    :cond_7
    return-object p1

    .line 685
    :cond_8
    :goto_0
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 686
    new-instance v1, Lcom/sun/jna/StringArray;

    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 687
    :cond_9
    new-instance v1, Lcom/sun/jna/StringArray;

    move-object v2, p1

    check-cast v2, [Lcom/sun/jna/WString;

    invoke-direct {v1, v2}, Lcom/sun/jna/StringArray;-><init>([Lcom/sun/jna/WString;)V

    :goto_1
    nop

    .line 689
    .local v1, "sa":Lcom/sun/jna/StringArray;
    sget-object v2, Lcom/sun/jna/CallbackReference;->allocations:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-object v1

    .line 683
    .end local v1    # "sa":Lcom/sun/jna/StringArray;
    :cond_a
    :goto_2
    const-class v1, Lcom/sun/jna/WString;

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    invoke-static {p1, v1}, Lcom/sun/jna/CallbackReference;->access$100(Ljava/lang/Object;Z)Lcom/sun/jna/Pointer;

    move-result-object v1

    return-object v1

    .line 680
    :cond_c
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 681
    sget-object v1, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    goto :goto_5

    :cond_d
    sget-object v1, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    .line 680
    :goto_5
    return-object v1
.end method

.method private invokeCallback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 566
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 569
    .local v1, "callbackArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 570
    aget-object v3, v0, v2

    .line 571
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v4, p1, v2

    .line 572
    .local v4, "arg":Ljava/lang/Object;
    iget-object v5, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 573
    new-instance v5, Lcom/sun/jna/CallbackParameterContext;

    iget-object v6, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-direct {v5, v3, v6, p1, v2}, Lcom/sun/jna/CallbackParameterContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;I)V

    .line 575
    .local v5, "context":Lcom/sun/jna/FromNativeContext;
    iget-object v6, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->fromNative:[Lcom/sun/jna/FromNativeConverter;

    aget-object v6, v6, v2

    invoke-interface {v6, v4, v5}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    .line 576
    .end local v5    # "context":Lcom/sun/jna/FromNativeContext;
    goto :goto_1

    .line 577
    :cond_0
    invoke-direct {p0, v4, v3}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->convertArgument(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 569
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "arg":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 582
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->getCallback()Lcom/sun/jna/Callback;

    move-result-object v3

    .line 583
    .local v3, "cb":Lcom/sun/jna/Callback;
    if-eqz v3, :cond_2

    .line 585
    :try_start_0
    iget-object v4, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->convertResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 592
    :goto_2
    goto :goto_4

    .line 590
    :catch_0
    move-exception v4

    .line 591
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/sun/jna/Callback$UncaughtExceptionHandler;->uncaughtException(Lcom/sun/jna/Callback;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 587
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    .line 588
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/sun/jna/Callback$UncaughtExceptionHandler;->uncaughtException(Lcom/sun/jna/Callback;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 595
    :cond_2
    :goto_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 596
    aget-object v5, v1, v4

    instance-of v5, v5, Lcom/sun/jna/Structure;

    if-eqz v5, :cond_3

    aget-object v5, v1, v4

    instance-of v5, v5, Lcom/sun/jna/Structure$ByValue;

    if-nez v5, :cond_3

    .line 598
    aget-object v5, v1, v4

    check-cast v5, Lcom/sun/jna/Structure;

    invoke-virtual {v5}, Lcom/sun/jna/Structure;->autoWrite()V

    .line 595
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 602
    .end local v4    # "i":I
    :cond_4
    return-object v2
.end method


# virtual methods
.method public callback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 613
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->invokeCallback([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    .line 616
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/sun/jna/Native;->getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->getCallback()Lcom/sun/jna/Callback;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/Callback$UncaughtExceptionHandler;->uncaughtException(Lcom/sun/jna/Callback;Ljava/lang/Throwable;)V

    .line 617
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallback()Lcom/sun/jna/Callback;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->this$0:Lcom/sun/jna/CallbackReference;

    invoke-static {v0}, Lcom/sun/jna/CallbackReference;->access$000(Lcom/sun/jna/CallbackReference;)Lcom/sun/jna/Callback;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/sun/jna/CallbackReference$DefaultCallbackProxy;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
