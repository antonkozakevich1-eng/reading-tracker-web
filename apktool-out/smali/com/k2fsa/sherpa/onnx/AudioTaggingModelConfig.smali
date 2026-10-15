.class public final Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
.super Ljava/lang/Object;
.source "AudioTagging.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010$\u001a\u00020\t2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006("
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;",
        "",
        "zipformer",
        "Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;",
        "ced",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)V",
        "getCed",
        "()Ljava/lang/String;",
        "setCed",
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
        "getZipformer",
        "()Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;",
        "setZipformer",
        "(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private ced:Ljava/lang/String;

.field private debug:Z

.field private numThreads:I

.field private provider:Ljava/lang/String;

.field private zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;


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

    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1
    .param p1, "zipformer"    # Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;
    .param p2, "ced"    # Ljava/lang/String;
    .param p3, "numThreads"    # I
    .param p4, "debug"    # Z
    .param p5, "provider"    # Ljava/lang/String;

    const-string v0, "zipformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ced"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    .line 11
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    .line 13
    iput-boolean p4, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    .line 14
    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 9
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    .line 10
    new-instance p1, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    const/4 p7, 0x0

    invoke-direct {p1, p7, v0, p7}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, p1

    goto :goto_0

    .line 9
    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 11
    const-string p2, ""

    move-object v3, p2

    goto :goto_1

    .line 9
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 12
    move v4, v0

    goto :goto_2

    .line 9
    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 13
    const/4 p4, 0x0

    move v5, p4

    goto :goto_3

    .line 9
    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 14
    const-string p5, "cpu"

    move-object v6, p5

    goto :goto_4

    .line 9
    :cond_4
    move-object v6, p5

    :goto_4
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)V

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;
    .locals 7

    const-string v0, "zipformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ced"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCed()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    return v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipformer()Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setCed(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 12
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setZipformer(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTaggingModelConfig(zipformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->zipformer:Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->ced:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->numThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
