.class public final Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;",
        "",
        "graph",
        "",
        "maxActive",
        "",
        "(Ljava/lang/String;I)V",
        "getGraph",
        "()Ljava/lang/String;",
        "setGraph",
        "(Ljava/lang/String;)V",
        "getMaxActive",
        "()I",
        "setMaxActive",
        "(I)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "sherpa_onnx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private graph:Ljava/lang/String;

.field private maxActive:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "graph"    # Ljava/lang/String;
    .param p2, "maxActive"    # I

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    .line 61
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 62
    const-string p1, ""

    .line 61
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 63
    const/16 p2, 0xbb8

    .line 61
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Ljava/lang/String;IILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->copy(Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 1

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    invoke-direct {v0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGraph()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxActive()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setGraph(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-void
.end method

.method public final setMaxActive(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 63
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineCtcFstDecoderConfig(graph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
