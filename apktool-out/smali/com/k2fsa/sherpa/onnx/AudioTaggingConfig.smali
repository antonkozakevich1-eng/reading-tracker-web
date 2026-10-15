.class public final Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;
.super Ljava/lang/Object;
.source "AudioTagging.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;",
        "",
        "model",
        "Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;",
        "labels",
        "",
        "topK",
        "",
        "(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V",
        "getLabels",
        "()Ljava/lang/String;",
        "setLabels",
        "(Ljava/lang/String;)V",
        "getModel",
        "()Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;",
        "setModel",
        "(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;)V",
        "getTopK",
        "()I",
        "setTopK",
        "(I)V",
        "component1",
        "component2",
        "component3",
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
.field private labels:Ljava/lang/String;

.field private model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

.field private topK:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V
    .locals 1
    .param p1, "model"    # Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
    .param p2, "labels"    # Ljava/lang/String;
    .param p3, "topK"    # I

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 19
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    .line 17
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 18
    new-instance p1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 19
    const-string p2, ""

    .line 17
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 20
    const/4 p3, 0x5

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;IILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->copy(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLabels()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    return-object v0
.end method

.method public final getTopK()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setLabels(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    return-void
.end method

.method public final setTopK(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 20
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTaggingConfig(model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->model:Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->labels:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;->topK:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
