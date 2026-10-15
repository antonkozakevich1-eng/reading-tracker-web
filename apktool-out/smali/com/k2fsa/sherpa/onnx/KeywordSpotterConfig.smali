.class public final Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
.super Ljava/lang/Object;
.source "KeywordSpotter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\tH\u00c6\u0003J\t\u0010+\u001a\u00020\u000bH\u00c6\u0003J\t\u0010,\u001a\u00020\u000bH\u00c6\u0003J\t\u0010-\u001a\u00020\u0007H\u00c6\u0003JO\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0007H\u00d6\u0001J\t\u00103\u001a\u00020\tH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;",
        "",
        "featConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "modelConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "maxActivePaths",
        "",
        "keywordsFile",
        "",
        "keywordsScore",
        "",
        "keywordsThreshold",
        "numTrailingBlanks",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V",
        "getFeatConfig",
        "()Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "setFeatConfig",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V",
        "getKeywordsFile",
        "()Ljava/lang/String;",
        "setKeywordsFile",
        "(Ljava/lang/String;)V",
        "getKeywordsScore",
        "()F",
        "setKeywordsScore",
        "(F)V",
        "getKeywordsThreshold",
        "setKeywordsThreshold",
        "getMaxActivePaths",
        "()I",
        "setMaxActivePaths",
        "(I)V",
        "getModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "setModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V",
        "getNumTrailingBlanks",
        "setNumTrailingBlanks",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
.field private featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

.field private keywordsFile:Ljava/lang/String;

.field private keywordsScore:F

.field private keywordsThreshold:F

.field private maxActivePaths:I

.field private modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

.field private numTrailingBlanks:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V
    .locals 1
    .param p1, "featConfig"    # Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .param p2, "modelConfig"    # Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .param p3, "maxActivePaths"    # I
    .param p4, "keywordsFile"    # Ljava/lang/String;
    .param p5, "keywordsScore"    # F
    .param p6, "keywordsThreshold"    # F
    .param p7, "numTrailingBlanks"    # I

    const-string v0, "featConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordsFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    .line 8
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 9
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    .line 10
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    .line 12
    iput p6, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    .line 13
    iput p7, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    .line 6
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 6
    :cond_0
    move-object/from16 v0, p1

    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v15, 0xfff

    const/16 v16, 0x0

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

    const/4 v14, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineToneCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 6
    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_2

    .line 9
    const/4 v2, 0x4

    goto :goto_2

    .line 6
    :cond_2
    move/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_3

    .line 10
    const-string v3, "keywords.txt"

    goto :goto_3

    .line 6
    :cond_3
    move-object/from16 v3, p4

    :goto_3
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_4

    .line 11
    const/high16 v4, 0x3fc00000    # 1.5f

    goto :goto_4

    .line 6
    :cond_4
    move/from16 v4, p5

    :goto_4
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_5

    .line 12
    const/high16 v5, 0x3e800000    # 0.25f

    goto :goto_5

    .line 6
    :cond_5
    move/from16 v5, p6

    :goto_5
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_6

    .line 13
    const/4 v6, 0x2

    goto :goto_6

    .line 6
    :cond_6
    move/from16 v6, p7

    :goto_6
    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V

    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFIILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 12

    const-string v0, "featConfig"

    move-object v9, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    move-object v10, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordsFile"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    iget v1, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    if-eq v3, v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getFeatConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final getKeywordsFile()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeywordsScore()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return v0
.end method

.method public final getKeywordsThreshold()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return v0
.end method

.method public final getMaxActivePaths()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return v0
.end method

.method public final getModelConfig()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final getNumTrailingBlanks()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setFeatConfig(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-void
.end method

.method public final setKeywordsFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-void
.end method

.method public final setKeywordsScore(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 11
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return-void
.end method

.method public final setKeywordsThreshold(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 12
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return-void
.end method

.method public final setMaxActivePaths(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 9
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return-void
.end method

.method public final setModelConfig(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-void
.end method

.method public final setNumTrailingBlanks(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 13
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeywordSpotterConfig(featConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActivePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numTrailingBlanks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
