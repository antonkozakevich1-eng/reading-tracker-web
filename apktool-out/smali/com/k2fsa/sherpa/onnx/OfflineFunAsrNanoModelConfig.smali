.class public final Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u00087\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\nH\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0011H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\nH\u00c6\u0003J\t\u0010A\u001a\u00020\u000cH\u00c6\u0003J\t\u0010B\u001a\u00020\u000cH\u00c6\u0003J\u008b\u0001\u0010C\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010D\u001a\u00020\u00112\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010F\u001a\u00020\nH\u00d6\u0001J\t\u0010G\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0015\"\u0004\u0008!\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\u000e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0015\"\u0004\u0008+\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0015\"\u0004\u00081\u0010\u0017R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010-\"\u0004\u00083\u0010/R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u0010\u0017\u00a8\u0006H"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;",
        "",
        "encoderAdaptor",
        "",
        "llm",
        "embedding",
        "tokenizer",
        "systemPrompt",
        "userPrompt",
        "maxNewTokens",
        "",
        "temperature",
        "",
        "topP",
        "seed",
        "language",
        "itn",
        "",
        "hotwords",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)V",
        "getEmbedding",
        "()Ljava/lang/String;",
        "setEmbedding",
        "(Ljava/lang/String;)V",
        "getEncoderAdaptor",
        "setEncoderAdaptor",
        "getHotwords",
        "setHotwords",
        "getItn",
        "()Z",
        "setItn",
        "(Z)V",
        "getLanguage",
        "setLanguage",
        "getLlm",
        "setLlm",
        "getMaxNewTokens",
        "()I",
        "setMaxNewTokens",
        "(I)V",
        "getSeed",
        "setSeed",
        "getSystemPrompt",
        "setSystemPrompt",
        "getTemperature",
        "()F",
        "setTemperature",
        "(F)V",
        "getTokenizer",
        "setTokenizer",
        "getTopP",
        "setTopP",
        "getUserPrompt",
        "setUserPrompt",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
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
.field private embedding:Ljava/lang/String;

.field private encoderAdaptor:Ljava/lang/String;

.field private hotwords:Ljava/lang/String;

.field private itn:Z

.field private language:Ljava/lang/String;

.field private llm:Ljava/lang/String;

.field private maxNewTokens:I

.field private seed:I

.field private systemPrompt:Ljava/lang/String;

.field private temperature:F

.field private tokenizer:Ljava/lang/String;

.field private topP:F

.field private userPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "encoderAdaptor"    # Ljava/lang/String;
    .param p2, "llm"    # Ljava/lang/String;
    .param p3, "embedding"    # Ljava/lang/String;
    .param p4, "tokenizer"    # Ljava/lang/String;
    .param p5, "systemPrompt"    # Ljava/lang/String;
    .param p6, "userPrompt"    # Ljava/lang/String;
    .param p7, "maxNewTokens"    # I
    .param p8, "temperature"    # F
    .param p9, "topP"    # F
    .param p10, "seed"    # I
    .param p11, "language"    # Ljava/lang/String;
    .param p12, "itn"    # Z
    .param p13, "hotwords"    # Ljava/lang/String;

    const-string v0, "encoderAdaptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "llm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenizer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPrompt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPrompt"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwords"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    .line 65
    iput p7, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    .line 66
    iput p8, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    .line 67
    iput p9, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    .line 68
    iput p10, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    .line 69
    iput-object p11, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    .line 70
    iput-boolean p12, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    .line 71
    iput-object p13, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    .line 58
    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v2

    goto :goto_0

    .line 58
    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 60
    move-object v3, v2

    goto :goto_1

    .line 58
    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 61
    move-object v4, v2

    goto :goto_2

    .line 58
    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 62
    move-object v5, v2

    goto :goto_3

    .line 58
    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 63
    const-string v6, "You are a helpful assistant."

    goto :goto_4

    .line 58
    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 64
    const-string v7, "\u8bed\u97f3\u8f6c\u5199\uff1a"

    goto :goto_5

    .line 58
    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 65
    const/16 v8, 0x200

    goto :goto_6

    .line 58
    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 66
    const v9, 0x358637bd    # 1.0E-6f

    goto :goto_7

    .line 58
    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 67
    const v10, 0x3f4ccccd    # 0.8f

    goto :goto_8

    .line 58
    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 68
    const/16 v11, 0x2a

    goto :goto_9

    .line 58
    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 69
    move-object v12, v2

    goto :goto_a

    .line 58
    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 70
    const/4 v13, 0x1

    goto :goto_b

    .line 58
    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 71
    goto :goto_c

    .line 58
    :cond_c
    move-object/from16 v2, p13

    :goto_c
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move-object/from16 p14, v2

    invoke-direct/range {p1 .. p14}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)V

    .line 72
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    return v0
.end method

.method public final component8()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    return v0
.end method

.method public final component9()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
    .locals 16

    const-string v0, "encoderAdaptor"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "llm"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenizer"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemPrompt"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPrompt"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwords"

    move-object/from16 v8, p13

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getEmbedding()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoderAdaptor()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotwords()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    return-object v0
.end method

.method public final getItn()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLlm()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxNewTokens()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    return v0
.end method

.method public final getSeed()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    return v0
.end method

.method public final getSystemPrompt()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemperature()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    return v0
.end method

.method public final getTokenizer()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopP()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    return v0
.end method

.method public final getUserPrompt()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setEmbedding(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    return-void
.end method

.method public final setEncoderAdaptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    return-void
.end method

.method public final setHotwords(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    return-void
.end method

.method public final setItn(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLlm(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    return-void
.end method

.method public final setMaxNewTokens(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 65
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    return-void
.end method

.method public final setSeed(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 68
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    return-void
.end method

.method public final setSystemPrompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    return-void
.end method

.method public final setTemperature(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 66
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    return-void
.end method

.method public final setTokenizer(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    return-void
.end method

.method public final setTopP(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 67
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    return-void
.end method

.method public final setUserPrompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineFunAsrNanoModelConfig(encoderAdaptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->encoderAdaptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", llm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->llm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", embedding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->embedding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tokenizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->tokenizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", systemPrompt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->systemPrompt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userPrompt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->userPrompt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxNewTokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->maxNewTokens:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", temperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->temperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", topP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->topP:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->seed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", itn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->itn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hotwords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hotwords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
