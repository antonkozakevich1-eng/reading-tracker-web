.class public final Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
.super Ljava/lang/Object;
.source "Speaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0082 J\u0006\u0010\u000e\u001a\u00020\u000cJ\u0011\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0006\u0010\u0011\u001a\u00020\u0012J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u0013\u001a\u00020\u0010H\u0004J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000cJ\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0082 J\u0019\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0018\u001a\u00020\u0010R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V",
        "ptr",
        "",
        "compute",
        "",
        "stream",
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "streamPtr",
        "createStream",
        "delete",
        "",
        "dim",
        "",
        "finalize",
        "isReady",
        "",
        "newFromAsset",
        "newFromFile",
        "release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->Companion:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor$Companion;

    .line 61
    nop

    .line 62
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    nop

    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->newFromFile(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)J

    move-result-wide v0

    .line 13
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    .line 18
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 21
    nop

    .line 6
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-require-SpeakerEmbeddingExtractor$1":I
    nop

    .line 18
    .end local v0    # "$i$a$-require-SpeakerEmbeddingExtractor$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SpeakerEmbeddingExtractorConfig: failed to create native SpeakerEmbeddingExtractor"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V

    .line 65
    return-void
.end method

.method private final native compute(JJ)[F
.end method

.method private final native createStream(J)J
.end method

.method private final native delete(J)V
.end method

.method private final native dim(J)I
.end method

.method private final native isReady(JJ)Z
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)J
.end method


# virtual methods
.method public final compute(Lcom/k2fsa/sherpa/onnx/OnlineStream;)[F
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->compute(JJ)[F

    move-result-object v0

    return-object v0
.end method

.method public final createStream()Lcom/k2fsa/sherpa/onnx/OnlineStream;
    .locals 3

    .line 33
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->createStream(J)J

    move-result-wide v0

    .line 34
    .local v0, "p":J
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(J)V

    return-object v2
.end method

.method public final dim()I
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->dim(J)I

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 25
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->delete(J)V

    .line 26
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    .line 28
    :cond_0
    return-void
.end method

.method public final isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->isReady(JJ)Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->finalize()V

    return-void
.end method
