.class public final Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;
.super Ljava/lang/Object;
.source "OfflinePunctuation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000b\"\u0004\u0008\u0017\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;",
        "",
        "ctTransformer",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "(Ljava/lang/String;IZLjava/lang/String;)V",
        "getCtTransformer",
        "()Ljava/lang/String;",
        "setCtTransformer",
        "(Ljava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getProvider",
        "setProvider",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
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
.field private ctTransformer:Ljava/lang/String;

.field private debug:Z

.field private numThreads:I

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1
    .param p1, "ctTransformer"    # Ljava/lang/String;
    .param p2, "numThreads"    # I
    .param p3, "debug"    # Z
    .param p4, "provider"    # Ljava/lang/String;

    const-string v0, "ctTransformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    .line 8
    iput-boolean p3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    .line 9
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 6
    const-string p1, ""

    .line 5
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 7
    const/4 p2, 0x1

    .line 5
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 8
    const/4 p3, 0x0

    .line 5
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 9
    const-string p4, "cpu"

    .line 5
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->copy(Ljava/lang/String;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;
    .locals 1

    const-string v0, "ctTransformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCtTransformer()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    return v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setCtTransformer(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 8
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 7
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflinePunctuationModelConfig(ctTransformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->ctTransformer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->numThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflinePunctuationModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
