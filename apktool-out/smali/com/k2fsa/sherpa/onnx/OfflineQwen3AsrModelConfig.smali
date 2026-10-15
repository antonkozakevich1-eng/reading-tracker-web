.class public final Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008*\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bi\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000fJ\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0008H\u00c6\u0003J\t\u00100\u001a\u00020\u0008H\u00c6\u0003J\t\u00101\u001a\u00020\u000bH\u00c6\u0003J\t\u00102\u001a\u00020\u000bH\u00c6\u0003J\t\u00103\u001a\u00020\u0008H\u00c6\u0003Jm\u00104\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00105\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00108\u001a\u00020\u0008H\u00d6\u0001J\t\u00109\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u001dR\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0011\"\u0004\u0008\'\u0010\u0013R\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%\u00a8\u0006:"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;",
        "",
        "convFrontend",
        "",
        "encoder",
        "decoder",
        "tokenizer",
        "maxTotalLen",
        "",
        "maxNewTokens",
        "temperature",
        "",
        "topP",
        "seed",
        "hotwords",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)V",
        "getConvFrontend",
        "()Ljava/lang/String;",
        "setConvFrontend",
        "(Ljava/lang/String;)V",
        "getDecoder",
        "setDecoder",
        "getEncoder",
        "setEncoder",
        "getHotwords",
        "setHotwords",
        "getMaxNewTokens",
        "()I",
        "setMaxNewTokens",
        "(I)V",
        "getMaxTotalLen",
        "setMaxTotalLen",
        "getSeed",
        "setSeed",
        "getTemperature",
        "()F",
        "setTemperature",
        "(F)V",
        "getTokenizer",
        "setTokenizer",
        "getTopP",
        "setTopP",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
.field private convFrontend:Ljava/lang/String;

.field private decoder:Ljava/lang/String;

.field private encoder:Ljava/lang/String;

.field private hotwords:Ljava/lang/String;

.field private maxNewTokens:I

.field private maxTotalLen:I

.field private seed:I

.field private temperature:F

.field private tokenizer:Ljava/lang/String;

.field private topP:F


# direct methods
.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)V
    .locals 1
    .param p1, "convFrontend"    # Ljava/lang/String;
    .param p2, "encoder"    # Ljava/lang/String;
    .param p3, "decoder"    # Ljava/lang/String;
    .param p4, "tokenizer"    # Ljava/lang/String;
    .param p5, "maxTotalLen"    # I
    .param p6, "maxNewTokens"    # I
    .param p7, "temperature"    # F
    .param p8, "topP"    # F
    .param p9, "seed"    # I
    .param p10, "hotwords"    # Ljava/lang/String;

    const-string v0, "convFrontend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenizer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwords"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    .line 80
    iput p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    .line 81
    iput p7, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    .line 82
    iput p8, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    .line 83
    iput p9, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    .line 84
    iput-object p10, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .line 74
    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v2

    goto :goto_0

    .line 74
    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 76
    move-object v3, v2

    goto :goto_1

    .line 74
    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 77
    move-object v4, v2

    goto :goto_2

    .line 74
    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 78
    move-object v5, v2

    goto :goto_3

    .line 74
    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/16 v7, 0x200

    if-eqz v6, :cond_4

    .line 79
    move v6, v7

    goto :goto_4

    .line 74
    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 80
    const/16 v8, 0x80

    goto :goto_5

    .line 74
    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 81
    const v9, 0x358637bd    # 1.0E-6f

    goto :goto_6

    .line 74
    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 82
    const v10, 0x3f4ccccd    # 0.8f

    goto :goto_7

    .line 74
    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 83
    const/16 v11, 0x2a

    goto :goto_8

    .line 74
    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/2addr v0, v7

    if-eqz v0, :cond_9

    .line 84
    goto :goto_9

    .line 74
    :cond_9
    move-object/from16 v2, p10

    :goto_9
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v2

    invoke-direct/range {p1 .. p11}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    return v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    return v0
.end method

.method public final component8()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
    .locals 16

    const-string v0, "convFrontend"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoder"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenizer"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwords"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getConvFrontend()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    return-object v0
.end method

.method public final getDecoder()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoder()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotwords()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxNewTokens()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    return v0
.end method

.method public final getMaxTotalLen()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    return v0
.end method

.method public final getSeed()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    return v0
.end method

.method public final getTemperature()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    return v0
.end method

.method public final getTokenizer()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopP()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setConvFrontend(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    return-void
.end method

.method public final setDecoder(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    return-void
.end method

.method public final setEncoder(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    return-void
.end method

.method public final setHotwords(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    return-void
.end method

.method public final setMaxNewTokens(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 80
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    return-void
.end method

.method public final setMaxTotalLen(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 79
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    return-void
.end method

.method public final setSeed(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 83
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    return-void
.end method

.method public final setTemperature(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 81
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    return-void
.end method

.method public final setTokenizer(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    return-void
.end method

.method public final setTopP(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 82
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineQwen3AsrModelConfig(convFrontend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->convFrontend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->encoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->decoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->tokenizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTotalLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxTotalLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxNewTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->maxNewTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->temperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->topP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hotwords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
