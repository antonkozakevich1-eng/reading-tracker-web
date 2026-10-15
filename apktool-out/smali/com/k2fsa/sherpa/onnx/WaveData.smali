.class public final Lcom/k2fsa/sherpa/onnx/WaveData;
.super Ljava/lang/Object;
.source "WaveReader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/WaveData;",
        "",
        "samples",
        "",
        "sampleRate",
        "",
        "([FI)V",
        "getSampleRate",
        "()I",
        "getSamples",
        "()[F",
        "component1",
        "component2",
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
.field private final sampleRate:I

.field private final samples:[F


# direct methods
.method public constructor <init>([FI)V
    .locals 1
    .param p1, "samples"    # [F
    .param p2, "sampleRate"    # I

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    .line 8
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/WaveData;[FIILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/WaveData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/WaveData;->copy([FI)Lcom/k2fsa/sherpa/onnx/WaveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    return v0
.end method

.method public final copy([FI)Lcom/k2fsa/sherpa/onnx/WaveData;
    .locals 1

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/WaveData;

    invoke-direct {v0, p1, p2}, Lcom/k2fsa/sherpa/onnx/WaveData;-><init>([FI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 14
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.k2fsa.sherpa.onnx.WaveData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/WaveData;

    .line 16
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    move-object v3, p1

    check-cast v3, Lcom/k2fsa/sherpa/onnx/WaveData;

    iget-object v3, v3, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 17
    :cond_3
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    move-object v3, p1

    check-cast v3, Lcom/k2fsa/sherpa/onnx/WaveData;

    iget v3, v3, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    if-eq v1, v3, :cond_4

    return v2

    .line 19
    :cond_4
    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    return v0
.end method

.method public final getSamples()[F
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 24
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    add-int/2addr v1, v2

    .line 25
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaveData(samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->samples:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/WaveData;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
