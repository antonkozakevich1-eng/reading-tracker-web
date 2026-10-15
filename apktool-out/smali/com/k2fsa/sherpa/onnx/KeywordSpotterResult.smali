.class public final Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;
.super Ljava/lang/Object;
.source "KeywordSpotter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J2\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;",
        "",
        "keyword",
        "",
        "tokens",
        "",
        "timestamps",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;[F)V",
        "getKeyword",
        "()Ljava/lang/String;",
        "getTimestamps",
        "()[F",
        "getTokens",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;",
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
.field private final keyword:Ljava/lang/String;

.field private final timestamps:[F

.field private final tokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[F)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;
    .param p3, "timestamps"    # [F

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;Ljava/lang/String;[Ljava/lang/String;[FILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->copy(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    return-object v0
.end method

.method public final copy(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamps()[F
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    return-object v0
.end method

.method public final getTokens()[Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->tokens:[Ljava/lang/String;

    const-string v10, ", "

    move-object v2, v10

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "tokensStr":Ljava/lang/String;
    iget-object v11, v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->timestamps:[F

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    sget-object v2, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult$toString$timestampsStr$1;->INSTANCE:Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult$toString$timestampsStr$1;

    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x1e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/ArraysKt;->joinToString$default([FLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "timestampsStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->keyword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nTokens: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\nTimestamps: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
