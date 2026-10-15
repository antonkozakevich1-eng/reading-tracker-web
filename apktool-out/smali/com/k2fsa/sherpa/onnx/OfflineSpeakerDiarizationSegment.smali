.class public final Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
.super Ljava/lang/Object;
.source "OfflineSpeakerDiarization.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "",
        "start",
        "",
        "end",
        "speaker",
        "",
        "confidence",
        "(FFIF)V",
        "getConfidence",
        "()F",
        "getEnd",
        "getSpeaker",
        "()I",
        "getStart",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final confidence:F

.field private final end:F

.field private final speaker:I

.field private final start:F


# direct methods
.method public constructor <init>(FFIF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "speaker"    # I
    .param p4, "confidence"    # F

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    .line 33
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    .line 34
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    .line 35
    iput p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    .line 31
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;FFIFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->copy(FFIF)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    return v0
.end method

.method public final copy(FFIF)Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .locals 1

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;-><init>(FFIF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConfidence()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    return v0
.end method

.method public final getEnd()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    return v0
.end method

.method public final getSpeaker()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    return v0
.end method

.method public final getStart()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineSpeakerDiarizationSegment(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->end:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->speaker:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
