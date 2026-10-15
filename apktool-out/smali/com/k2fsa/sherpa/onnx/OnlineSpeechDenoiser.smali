.class public final Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;
.super Ljava/lang/Object;
.source "OnlineSpeechDenoiser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0008\u0010\u0011\u001a\u00020\u0010H\u0004J\u0006\u0010\u0012\u001a\u00020\u0013J\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0011\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0011\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0019\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010J\u0011\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0008J!\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0008H\u0082 R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)V",
        "frameShiftInSamples",
        "",
        "getFrameShiftInSamples",
        "()I",
        "ptr",
        "",
        "sampleRate",
        "getSampleRate",
        "delete",
        "",
        "finalize",
        "flush",
        "Lcom/k2fsa/sherpa/onnx/DenoisedAudio;",
        "newFromAsset",
        "newFromFile",
        "release",
        "reset",
        "run",
        "samples",
        "",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->Companion:Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser$Companion;

    .line 69
    nop

    .line 70
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    nop

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->newFromFile(Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)J

    move-result-wide v0

    .line 16
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    .line 21
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 24
    nop

    .line 9
    return-void

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    .local v0, "$i$a$-require-OnlineSpeechDenoiser$1":I
    nop

    .line 21
    .end local v0    # "$i$a$-require-OnlineSpeechDenoiser$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OnlineSpeechDenoiserConfig: failed to create native OnlineSpeechDenoiser"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)V

    .line 73
    return-void
.end method

.method private final native delete(J)V
.end method

.method private final native flush(J)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
.end method

.method private final native getFrameShiftInSamples(J)I
.end method

.method private final native getSampleRate(J)I
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiserConfig;)J
.end method

.method private final native reset(J)V
.end method

.method private final native run(J[FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
.end method


# virtual methods
.method protected final finalize()V
    .locals 4

    .line 27
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 28
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->delete(J)V

    .line 29
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    .line 31
    :cond_0
    return-void
.end method

.method public final flush()Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->flush(J)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;

    move-result-object v0

    return-object v0
.end method

.method public final getFrameShiftInSamples()I
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->getFrameShiftInSamples(J)I

    move-result v0

    return v0
.end method

.method public final getSampleRate()I
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->getSampleRate(J)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->finalize()V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->reset(J)V

    return-void
.end method

.method public final run([FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
    .locals 2
    .param p1, "samples"    # [F
    .param p2, "sampleRate"    # I

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineSpeechDenoiser;->run(J[FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;

    move-result-object v0

    return-object v0
.end method
