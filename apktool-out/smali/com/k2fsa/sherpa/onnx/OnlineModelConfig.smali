.class public final Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008?\u0008\u0086\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\r\u00a2\u0006\u0002\u0010\u0016J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\rH\u00c6\u0003J\t\u0010A\u001a\u00020\rH\u00c6\u0003J\t\u0010B\u001a\u00020\rH\u00c6\u0003J\t\u0010C\u001a\u00020\u0005H\u00c6\u0003J\t\u0010D\u001a\u00020\u0007H\u00c6\u0003J\t\u0010E\u001a\u00020\tH\u00c6\u0003J\t\u0010F\u001a\u00020\u000bH\u00c6\u0003J\t\u0010G\u001a\u00020\rH\u00c6\u0003J\t\u0010H\u001a\u00020\u000fH\u00c6\u0003J\t\u0010I\u001a\u00020\u0011H\u00c6\u0003J\t\u0010J\u001a\u00020\rH\u00c6\u0003J\u0081\u0001\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\rH\u00c6\u0001J\u0013\u0010L\u001a\u00020\u00112\u0008\u0010M\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010N\u001a\u00020\u000fH\u00d6\u0001J\t\u0010O\u001a\u00020\rH\u00d6\u0001R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0013\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001a\u0010\u0014\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0018\"\u0004\u0008\"\u0010\u001aR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0018\"\u0004\u00080\u0010\u001aR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u0010\u001aR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>\u00a8\u0006P"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "",
        "transducer",
        "Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;",
        "paraformer",
        "Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;",
        "zipformer2Ctc",
        "Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;",
        "neMoCtc",
        "Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;",
        "toneCtc",
        "Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;",
        "tokens",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "modelType",
        "modelingUnit",
        "bpeVocab",
        "(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBpeVocab",
        "()Ljava/lang/String;",
        "setBpeVocab",
        "(Ljava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getModelType",
        "setModelType",
        "getModelingUnit",
        "setModelingUnit",
        "getNeMoCtc",
        "()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;",
        "setNeMoCtc",
        "(Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getParaformer",
        "()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;",
        "setParaformer",
        "(Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;)V",
        "getProvider",
        "setProvider",
        "getTokens",
        "setTokens",
        "getToneCtc",
        "()Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;",
        "setToneCtc",
        "(Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;)V",
        "getTransducer",
        "()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;",
        "setTransducer",
        "(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;)V",
        "getZipformer2Ctc",
        "()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;",
        "setZipformer2Ctc",
        "(Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;)V",
        "component1",
        "component10",
        "component11",
        "component12",
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
.field private bpeVocab:Ljava/lang/String;

.field private debug:Z

.field private modelType:Ljava/lang/String;

.field private modelingUnit:Ljava/lang/String;

.field private neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

.field private numThreads:I

.field private paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

.field private provider:Ljava/lang/String;

.field private tokens:Ljava/lang/String;

.field private toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

.field private transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

.field private zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transducer"    # Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .param p2, "paraformer"    # Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;
    .param p3, "zipformer2Ctc"    # Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;
    .param p4, "neMoCtc"    # Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;
    .param p5, "toneCtc"    # Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;
    .param p6, "tokens"    # Ljava/lang/String;
    .param p7, "numThreads"    # I
    .param p8, "debug"    # Z
    .param p9, "provider"    # Ljava/lang/String;
    .param p10, "modelType"    # Ljava/lang/String;
    .param p11, "modelingUnit"    # Ljava/lang/String;
    .param p12, "bpeVocab"    # Ljava/lang/String;

    const-string v0, "transducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformer2Ctc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neMoCtc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toneCtc"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    .line 43
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    .line 44
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    .line 45
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    .line 46
    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    .line 47
    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    .line 48
    iput p7, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    .line 49
    iput-boolean p8, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    .line 50
    iput-object p9, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    .line 51
    iput-object p10, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    .line 53
    iput-object p12, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 41
    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 41
    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 43
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 41
    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 44
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-direct {v4, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 41
    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 45
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-direct {v6, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 41
    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 46
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    invoke-direct {v7, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v3, v0, 0x20

    const-string v8, ""

    if-eqz v3, :cond_5

    .line 47
    move-object v3, v8

    goto :goto_5

    .line 41
    :cond_5
    move-object/from16 v3, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 48
    goto :goto_6

    .line 41
    :cond_6
    move/from16 v5, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 49
    const/4 v9, 0x0

    goto :goto_7

    .line 41
    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 50
    const-string v10, "cpu"

    goto :goto_8

    .line 41
    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 51
    move-object v11, v8

    goto :goto_9

    .line 41
    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 52
    move-object v12, v8

    goto :goto_a

    .line 41
    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 53
    goto :goto_b

    .line 41
    :cond_b
    move-object/from16 v8, p12

    :goto_b
    move-object p1, p0

    move-object p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v3

    move/from16 p8, v5

    move/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v8

    invoke-direct/range {p1 .. p13}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v1, p12

    :goto_b
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-object v0
.end method

.method public final component5()Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 16

    const-string v0, "transducer"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformer2Ctc"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neMoCtc"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toneCtc"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    move-object/from16 v7, p11

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    move-object/from16 v6, p12

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getBpeVocab()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return v0
.end method

.method public final getModelType()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelingUnit()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeMoCtc()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-object v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return v0
.end method

.method public final getParaformer()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final getToneCtc()Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    return-object v0
.end method

.method public final getTransducer()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-object v0
.end method

.method public final getZipformer2Ctc()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setBpeVocab(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return-void
.end method

.method public final setModelType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-void
.end method

.method public final setModelingUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-void
.end method

.method public final setNeMoCtc(Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 48
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return-void
.end method

.method public final setParaformer(Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-void
.end method

.method public final setToneCtc(Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    return-void
.end method

.method public final setTransducer(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-void
.end method

.method public final setZipformer2Ctc(Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineModelConfig(transducer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paraformer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zipformer2Ctc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", neMoCtc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toneCtc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->toneCtc:Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numThreads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modelingUnit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bpeVocab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
