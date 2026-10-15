.class public final Lcom/k2fsa/sherpa/onnx/VadModelConfig;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0007H\u00c6\u0003J\t\u0010(\u001a\u00020\nH\u00c6\u0003J\t\u0010)\u001a\u00020\u000cH\u00c6\u0003JE\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010+\u001a\u00020\u000c2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020\u0007H\u00d6\u0001J\t\u0010.\u001a\u00020\nH\u00d6\u0001R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006/"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "",
        "sileroVadModelConfig",
        "Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;",
        "tenVadModelConfig",
        "Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;",
        "sampleRate",
        "",
        "numThreads",
        "provider",
        "",
        "debug",
        "",
        "(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)V",
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
        "getSampleRate",
        "setSampleRate",
        "getSileroVadModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;",
        "setSileroVadModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;)V",
        "getTenVadModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;",
        "setTenVadModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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

.field private sampleRate:I

.field private sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

.field private tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;


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

    invoke-direct/range {v0 .. v8}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)V
    .locals 1
    .param p1, "sileroVadModelConfig"    # Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .param p2, "tenVadModelConfig"    # Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;
    .param p3, "sampleRate"    # I
    .param p4, "numThreads"    # I
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "debug"    # Z

    const-string v0, "sileroVadModelConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tenVadModelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    .line 26
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    .line 27
    iput p3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    .line 28
    iput p4, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    .line 29
    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    .line 30
    iput-boolean p6, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 24
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 24
    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 24
    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_2

    .line 27
    const/16 v2, 0x3e80

    goto :goto_2

    .line 24
    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_3

    .line 28
    const/4 v3, 0x1

    goto :goto_3

    .line 24
    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_4

    .line 29
    const-string v4, "cpu"

    goto :goto_4

    .line 24
    :cond_4
    move-object/from16 v4, p5

    :goto_4
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_5

    .line 30
    const/4 v5, 0x0

    goto :goto_5

    .line 24
    :cond_5
    move/from16 v5, p6

    :goto_5
    move-object p1, p0

    move-object p2, v0

    move-object p3, v1

    move p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/VadModelConfig;Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 8

    const-string v0, "sileroVadModelConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tenVadModelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    iget-boolean v1, v1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    if-eq v3, v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSampleRate()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return v0
.end method

.method public final getSileroVadModelConfig()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-object v0
.end method

.method public final getTenVadModelConfig()Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    return v1
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 28
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setSampleRate(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 27
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return-void
.end method

.method public final setSileroVadModelConfig(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-void
.end method

.method public final setTenVadModelConfig(Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VadModelConfig(sileroVadModelConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tenVadModelConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->tenVadModelConfig:Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
