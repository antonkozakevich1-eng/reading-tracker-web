.class public final Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;",
        "",
        "encoder",
        "",
        "decoder",
        "joiner",
        "qnnConfig",
        "Lcom/k2fsa/sherpa/onnx/QnnConfig;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)V",
        "getDecoder",
        "()Ljava/lang/String;",
        "setDecoder",
        "(Ljava/lang/String;)V",
        "getEncoder",
        "setEncoder",
        "getJoiner",
        "setJoiner",
        "getQnnConfig",
        "()Lcom/k2fsa/sherpa/onnx/QnnConfig;",
        "setQnnConfig",
        "(Lcom/k2fsa/sherpa/onnx/QnnConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private decoder:Ljava/lang/String;

.field private encoder:Ljava/lang/String;

.field private joiner:Ljava/lang/String;

.field private qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;


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

    invoke-direct/range {v0 .. v6}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)V
    .locals 1
    .param p1, "encoder"    # Ljava/lang/String;
    .param p2, "decoder"    # Ljava/lang/String;
    .param p3, "joiner"    # Ljava/lang/String;
    .param p4, "qnnConfig"    # Lcom/k2fsa/sherpa/onnx/QnnConfig;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "joiner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qnnConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 17
    and-int/lit8 p6, p5, 0x1

    const-string v0, ""

    if-eqz p6, :cond_0

    .line 18
    move-object p1, v0

    .line 17
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 19
    move-object p2, v0

    .line 17
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 20
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 21
    new-instance p4, Lcom/k2fsa/sherpa/onnx/QnnConfig;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/QnnConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)V

    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/QnnConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "joiner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qnnConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDecoder()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoder()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method public final getJoiner()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    return-object v0
.end method

.method public final getQnnConfig()Lcom/k2fsa/sherpa/onnx/QnnConfig;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/QnnConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setDecoder(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    return-void
.end method

.method public final setEncoder(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    return-void
.end method

.method public final setJoiner(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    return-void
.end method

.method public final setQnnConfig(Lcom/k2fsa/sherpa/onnx/QnnConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/QnnConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineTransducerModelConfig(encoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->encoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->decoder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", joiner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->joiner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qnnConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->qnnConfig:Lcom/k2fsa/sherpa/onnx/QnnConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
