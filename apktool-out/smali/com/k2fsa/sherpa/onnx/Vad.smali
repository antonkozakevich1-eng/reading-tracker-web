.class public final Lcom/k2fsa/sherpa/onnx/Vad;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/Vad$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082 J\u0006\u0010\u0011\u001a\u00020\u000eJ\u0011\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0010J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082 J\u0011\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u0015\u001a\u00020\u0016J\u0011\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0008\u0010\u0017\u001a\u00020\u000eH\u0004J\u0006\u0010\u0018\u001a\u00020\u000eJ\u0011\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0011\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u001b\u001a\u00020\u0016J\u0011\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0019\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u001e\u001a\u00020\u000eJ\u0011\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u001f\u001a\u00020\u000eJ\u0006\u0010 \u001a\u00020\u000eJ\u0011\u0010 \u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V",
        "getConfig",
        "()Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "setConfig",
        "(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V",
        "ptr",
        "",
        "acceptWaveform",
        "",
        "samples",
        "",
        "clear",
        "compute",
        "",
        "delete",
        "empty",
        "",
        "finalize",
        "flush",
        "front",
        "Lcom/k2fsa/sherpa/onnx/SpeechSegment;",
        "isSpeechDetected",
        "newFromAsset",
        "newFromFile",
        "pop",
        "release",
        "reset",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/Vad$Companion;


# instance fields
.field private config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/Vad$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/Vad;->Companion:Lcom/k2fsa/sherpa/onnx/Vad$Companion;

    .line 104
    nop

    .line 105
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 41
    nop

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    invoke-direct {p0, p1, v0}, Lcom/k2fsa/sherpa/onnx/Vad;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/Vad;->newFromFile(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 47
    :goto_0
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 50
    nop

    .line 35
    return-void

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    .local v0, "$i$a$-require-Vad$1":I
    nop

    .line 47
    .end local v0    # "$i$a$-require-Vad$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid VadConfig: failed to create native Vad"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 35
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 36
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Vad;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V

    .line 108
    return-void
.end method

.method private final native acceptWaveform(J[F)V
.end method

.method private final native clear(J)V
.end method

.method private final native compute(J[F)F
.end method

.method private final native delete(J)V
.end method

.method private final native empty(J)Z
.end method

.method private final native flush(J)V
.end method

.method private final native front(J)Lcom/k2fsa/sherpa/onnx/SpeechSegment;
.end method

.method private final native isSpeechDetected(J)Z
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J
.end method

.method private final native pop(J)V
.end method

.method private final native reset(J)V
.end method


# virtual methods
.method public final acceptWaveform([F)V
    .locals 2
    .param p1, "samples"    # [F

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/Vad;->acceptWaveform(J[F)V

    return-void
.end method

.method public final clear()V
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->clear(J)V

    return-void
.end method

.method public final compute([F)F
    .locals 2
    .param p1, "samples"    # [F

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/Vad;->compute(J[F)F

    move-result v0

    return v0
.end method

.method public final empty()Z
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->empty(J)Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 4

    .line 53
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->delete(J)V

    .line 55
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 57
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->flush(J)V

    return-void
.end method

.method public final front()Lcom/k2fsa/sherpa/onnx/SpeechSegment;
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->front(J)Lcom/k2fsa/sherpa/onnx/SpeechSegment;

    move-result-object v0

    return-object v0
.end method

.method public final getConfig()Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    return-object v0
.end method

.method public final isSpeechDetected()Z
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->isSpeechDetected(J)Z

    move-result v0

    return v0
.end method

.method public final pop()V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->pop(J)V

    return-void
.end method

.method public final release()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Vad;->finalize()V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->reset(J)V

    return-void
.end method

.method public final setConfig(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    return-void
.end method
