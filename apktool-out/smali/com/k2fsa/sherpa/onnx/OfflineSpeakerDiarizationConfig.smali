.class public final Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;
.super Ljava/lang/Object;
.source "OfflineSpeakerDiarization.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020*H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006+"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;",
        "",
        "segmentation",
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;",
        "embedding",
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;",
        "clustering",
        "Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;",
        "minDurationOn",
        "",
        "minDurationOff",
        "(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)V",
        "getClustering",
        "()Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;",
        "setClustering",
        "(Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;)V",
        "getEmbedding",
        "()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;",
        "setEmbedding",
        "(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V",
        "getMinDurationOff",
        "()F",
        "setMinDurationOff",
        "(F)V",
        "getMinDurationOn",
        "setMinDurationOn",
        "getSegmentation",
        "()Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;",
        "setSegmentation",
        "(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

.field private embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

.field private minDurationOff:F

.field private minDurationOn:F

.field private segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)V
    .locals 1
    .param p1, "segmentation"    # Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;
    .param p2, "embedding"    # Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;
    .param p3, "clustering"    # Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;
    .param p4, "minDurationOn"    # F
    .param p5, "minDurationOff"    # F

    const-string v0, "segmentation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clustering"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    .line 25
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    .line 26
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    .line 27
    iput p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    .line 28
    iput p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 23
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 24
    new-instance p1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationPyannoteModelConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 25
    new-instance p2, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p7, p2

    goto :goto_0

    .line 23
    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 26
    new-instance p3, Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;-><init>(IFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 23
    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 27
    const p4, 0x3e4ccccd    # 0.2f

    move v1, p4

    goto :goto_2

    .line 23
    :cond_3
    move v1, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 28
    const/high16 p5, 0x3f000000    # 0.5f

    move v2, p5

    goto :goto_3

    .line 23
    :cond_4
    move v2, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)V

    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    return-object v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    return v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;
    .locals 7

    const-string v0, "segmentation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clustering"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getClustering()Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    return-object v0
.end method

.method public final getEmbedding()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    return-object v0
.end method

.method public final getMinDurationOff()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    return v0
.end method

.method public final getMinDurationOn()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    return v0
.end method

.method public final getSegmentation()Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setClustering(Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    return-void
.end method

.method public final setEmbedding(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    return-void
.end method

.method public final setMinDurationOff(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 28
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    return-void
.end method

.method public final setMinDurationOn(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 27
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    return-void
.end method

.method public final setSegmentation(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineSpeakerDiarizationConfig(segmentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->segmentation:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerSegmentationModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", embedding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->embedding:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clustering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->clustering:Lcom/k2fsa/sherpa/onnx/FastClusteringConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDurationOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOn:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDurationOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;->minDurationOff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
