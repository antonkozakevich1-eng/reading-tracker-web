.class public final Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;
.super Ljava/lang/Object;
.source "SpokenLanguageIdentification.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J1\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010 \u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\tH\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;",
        "",
        "whisper",
        "Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "",
        "(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getProvider",
        "()Ljava/lang/String;",
        "setProvider",
        "(Ljava/lang/String;)V",
        "getWhisper",
        "()Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;",
        "setWhisper",
        "(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;)V",
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
.field private debug:Z

.field private numThreads:I

.field private provider:Ljava/lang/String;

.field private whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;


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

    invoke-direct/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)V
    .locals 1
    .param p1, "whisper"    # Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;
    .param p2, "numThreads"    # I
    .param p3, "debug"    # Z
    .param p4, "provider"    # Ljava/lang/String;

    const-string v0, "whisper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    .line 13
    iput p2, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    .line 14
    iput-boolean p3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    .line 15
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 11
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 12
    new-instance p1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 13
    const/4 p2, 0x1

    .line 11
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 14
    const/4 p3, 0x0

    .line 11
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 15
    const-string p4, "cpu"

    .line 11
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)V

    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->copy(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;
    .locals 1

    const-string v0, "whisper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    return v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhisper()Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 13
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setWhisper(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpokenLanguageIdentificationConfig(whisper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->whisper:Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->numThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
