.class Lcom/sun/jna/Structure$StructureSet;
.super Ljava/util/AbstractCollection;
.source "Structure.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StructureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/sun/jna/Structure;",
        ">;",
        "Ljava/util/Set<",
        "Lcom/sun/jna/Structure;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field elements:[Lcom/sun/jna/Structure;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .line 506
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    if-nez v0, :cond_0

    .line 507
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/sun/jna/Structure;

    iput-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 510
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/sun/jna/Structure;

    .line 511
    .local v0, "e":[Lcom/sun/jna/Structure;
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget-object v2, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    iput-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 514
    .end local v0    # "e":[Lcom/sun/jna/Structure;
    :cond_1
    :goto_0
    return-void
.end method

.method private indexOf(Lcom/sun/jna/Structure;)I
    .locals 4
    .param p1, "s1"    # Lcom/sun/jna/Structure;

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    if-ge v0, v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    aget-object v1, v1, v0

    .line 536
    .local v1, "s2":Lcom/sun/jna/Structure;
    if-eq p1, v1, :cond_1

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 538
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 534
    .end local v1    # "s2":Lcom/sun/jna/Structure;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .restart local v1    # "s2":Lcom/sun/jna/Structure;
    :cond_1
    :goto_1
    return v0

    .line 543
    .end local v0    # "i":I
    .end local v1    # "s2":Lcom/sun/jna/Structure;
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public add(Lcom/sun/jna/Structure;)Z
    .locals 4
    .param p1, "o"    # Lcom/sun/jna/Structure;

    .line 526
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$StructureSet;->ensureCapacity(I)V

    .line 528
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget v2, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    aput-object p1, v0, v2

    .line 529
    return v1

    .line 531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 502
    check-cast p1, Lcom/sun/jna/Structure;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->add(Lcom/sun/jna/Structure;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 522
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Structure;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$StructureSet;->indexOf(Lcom/sun/jna/Structure;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElements()[Lcom/sun/jna/Structure;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    .line 562
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    new-array v0, v0, [Lcom/sun/jna/Structure;

    .line 563
    .local v0, "e":[Lcom/sun/jna/Structure;
    iget v1, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    if-lez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget v2, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 547
    move-object v0, p1

    check-cast v0, Lcom/sun/jna/Structure;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$StructureSet;->indexOf(Lcom/sun/jna/Structure;)I

    move-result v0

    .line 548
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 549
    iget v1, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    if-ltz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget-object v3, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget v4, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 551
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    iget v3, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 553
    :cond_0
    return v2

    .line 555
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    return v0
.end method
