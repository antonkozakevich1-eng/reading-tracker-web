.class public final Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;
.super Ljava/lang/Object;
.source "NeuralEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/speech/NeuralEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;",
        "",
        "<init>",
        "()V",
        "ENCODER",
        "",
        "DECODER",
        "JOINER",
        "TOKENS",
        "BPE_VOCAB",
        "HOTWORDS_SCORE",
        "",
        "hotwordsOf",
        "context",
        "",
        "buildConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;",
        "dir",
        "Ljava/io/File;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$sdB328me3irIdhhHdt96cSUVT2k(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;->hotwordsOf$lambda$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;-><init>()V

    return-void
.end method

.method private static final hotwordsOf$lambda$0(Ljava/lang/String;)Z
    .locals 2
    .param p0, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final buildConfig(Ljava/io/File;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;
    .locals 23
    .param p1, "dir"    # Ljava/io/File;

    move-object/from16 v0, p1

    const-string v1, "dir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-object v2, v1

    .line 84
    new-instance v4, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-object v3, v4

    const/16 v5, 0x3e80

    const/16 v6, 0x50

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIF)V

    .line 85
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-object v4, v8

    .line 86
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    .line 87
    new-instance v6, Ljava/io/File;

    const-string v9, "encoder.int8.onnx"

    invoke-direct {v6, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v6, "getAbsolutePath(...)"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v9, Ljava/io/File;

    const-string v11, "decoder.onnx"

    invoke-direct {v9, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v9, Ljava/io/File;

    const-string v12, "joiner.int8.onnx"

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    nop

    .line 91
    new-instance v9, Ljava/io/File;

    const-string v10, "tokens.txt"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    nop

    .line 85
    nop

    .line 93
    nop

    .line 85
    nop

    .line 94
    nop

    .line 95
    new-instance v9, Ljava/io/File;

    const-string v10, "unigram_500.vocab"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/16 v21, 0x29e

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x0

    const-string v17, "cpu"

    const/16 v18, 0x0

    const-string v19, "bpe"

    move-object v9, v5

    move-object v5, v15

    move v15, v6

    move-object/from16 v20, v5

    invoke-direct/range {v8 .. v22}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    nop

    .line 98
    new-instance v5, Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    move-object v8, v5

    .line 99
    new-instance v6, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const v9, 0x4019999a    # 2.4f

    const/4 v10, 0x0

    invoke-direct {v6, v10, v9, v7}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 100
    new-instance v9, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/4 v11, 0x1

    const v12, 0x3f4ccccd    # 0.8f

    invoke-direct {v9, v11, v12, v7}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 101
    new-instance v11, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-direct {v11, v10, v7, v12}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 98
    invoke-direct {v5, v6, v9, v11}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;-><init>(Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;)V

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 83
    nop

    .line 106
    nop

    .line 83
    const/16 v17, 0x3a1c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v10, "modified_beam_search"

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/high16 v13, 0x40400000    # 3.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    return-object v1
.end method

.method public final hotwordsOf(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->distinct(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "/"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method
