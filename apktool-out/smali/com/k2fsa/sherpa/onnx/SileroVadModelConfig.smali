.class public final Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003JE\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\tH\u00d6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;",
        "",
        "model",
        "",
        "threshold",
        "",
        "minSilenceDuration",
        "minSpeechDuration",
        "windowSize",
        "",
        "maxSpeechDuration",
        "(Ljava/lang/String;FFFIF)V",
        "getMaxSpeechDuration",
        "()F",
        "setMaxSpeechDuration",
        "(F)V",
        "getMinSilenceDuration",
        "setMinSilenceDuration",
        "getMinSpeechDuration",
        "setMinSpeechDuration",
        "getModel",
        "()Ljava/lang/String;",
        "setModel",
        "(Ljava/lang/String;)V",
        "getThreshold",
        "setThreshold",
        "getWindowSize",
        "()I",
        "setWindowSize",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private maxSpeechDuration:F

.field private minSilenceDuration:F

.field private minSpeechDuration:F

.field private model:Ljava/lang/String;

.field private threshold:F

.field private windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFIF)V
    .locals 1
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "threshold"    # F
    .param p3, "minSilenceDuration"    # F
    .param p4, "minSpeechDuration"    # F
    .param p5, "windowSize"    # I
    .param p6, "maxSpeechDuration"    # F

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    .line 9
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    .line 10
    iput p4, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    .line 11
    iput p5, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    .line 12
    iput p6, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    .line 6
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 7
    const-string p1, ""

    .line 6
    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 8
    const/high16 p2, 0x3f000000    # 0.5f

    move p8, p2

    goto :goto_0

    .line 6
    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    const/high16 v0, 0x3e800000    # 0.25f

    if-eqz p2, :cond_2

    .line 9
    move v1, v0

    goto :goto_1

    .line 6
    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 10
    goto :goto_2

    .line 6
    :cond_3
    move v0, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    .line 11
    const/16 p5, 0x200

    move v2, p5

    goto :goto_3

    .line 6
    :cond_4
    move v2, p5

    :goto_3
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    .line 12
    const/high16 p6, 0x40a00000    # 5.0f

    move v3, p6

    goto :goto_4

    .line 6
    :cond_5
    move v3, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v1

    move p6, v0

    move p7, v2

    move p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIF)V

    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Ljava/lang/String;FFFIFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->copy(Ljava/lang/String;FFFIF)Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    return v0
.end method

.method public final copy(Ljava/lang/String;FFFIF)Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 8

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getMaxSpeechDuration()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    return v0
.end method

.method public final getMinSilenceDuration()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    return v0
.end method

.method public final getMinSpeechDuration()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    return v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreshold()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    return v0
.end method

.method public final getWindowSize()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setMaxSpeechDuration(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 12
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    return-void
.end method

.method public final setMinSilenceDuration(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 9
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    return-void
.end method

.method public final setMinSpeechDuration(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 10
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    return-void
.end method

.method public final setThreshold(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 8
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    return-void
.end method

.method public final setWindowSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 11
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SileroVadModelConfig(model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->threshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minSilenceDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSilenceDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minSpeechDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->minSpeechDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->windowSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSpeechDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->maxSpeechDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
