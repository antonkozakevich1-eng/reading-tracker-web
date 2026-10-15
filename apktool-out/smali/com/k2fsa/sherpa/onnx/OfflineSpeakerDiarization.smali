.class public final Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;
.super Ljava/lang/Object;
.source "OfflineSpeakerDiarization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0082 J\u0008\u0010\r\u001a\u00020\u000cH\u0004J\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\nH\u0082 J\u0019\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0019\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0082 \u00a2\u0006\u0002\u0010\u0018Jp\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162K\u0010\u001a\u001aG\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u000f0\u001b2\u0008\u0008\u0002\u0010 \u001a\u00020\n\u00a2\u0006\u0002\u0010!Jy\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162K\u0010\u001a\u001aG\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u000f0\u001b2\u0006\u0010 \u001a\u00020\nH\u0082 \u00a2\u0006\u0002\u0010\"J\u0006\u0010#\u001a\u00020\u000cJ\u0006\u0010$\u001a\u00020\u000fJ\u000e\u0010%\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005J\u0019\u0010%\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V",
        "getConfig",
        "()Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;",
        "ptr",
        "",
        "delete",
        "",
        "finalize",
        "getSampleRate",
        "",
        "newFromAsset",
        "newFromFile",
        "process",
        "",
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "samples",
        "",
        "([F)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "(J[F)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "processWithCallback",
        "callback",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "numProcessedChunks",
        "numTotalChunks",
        "arg",
        "([FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "(J[FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;",
        "release",
        "sampleRate",
        "setConfig",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization$Companion;


# instance fields
.field private final config:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->Companion:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization$Companion;

    .line 106
    nop

    .line 107
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->config:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    .line 44
    nop

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->config:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    invoke-direct {p0, p1, v0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->config:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)J

    move-result-wide v0

    .line 45
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    .line 50
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 53
    nop

    .line 38
    return-void

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    .local v0, "$i$a$-require-OfflineSpeakerDiarization$1":I
    nop

    .line 50
    .end local v0    # "$i$a$-require-OfflineSpeakerDiarization$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OfflineSpeakerDiarizationConfig: failed to create native OfflineSpeakerDiarization"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 39
    const/4 p1, 0x0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V

    .line 110
    return-void
.end method

.method private final native delete(J)V
.end method

.method private final native getSampleRate(J)I
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)J
.end method

.method private final native process(J[F)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
.end method

.method private final native processWithCallback(J[FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[F",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)[",
            "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;"
        }
    .end annotation
.end method

.method public static synthetic processWithCallback$default(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;[FLkotlin/jvm/functions/Function3;JILjava/lang/Object;)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .locals 0

    .line 72
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 75
    const-wide/16 p3, 0x0

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->processWithCallback([FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    move-result-object p0

    return-object p0
.end method

.method private final native setConfig(JLcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V
.end method


# virtual methods
.method protected final finalize()V
    .locals 4

    .line 56
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->delete(J)V

    .line 58
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    .line 60
    :cond_0
    return-void
.end method

.method public final getConfig()Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->config:Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    return-object v0
.end method

.method public final process([F)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .locals 2
    .param p1, "samples"    # [F

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->process(J[F)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    move-result-object v0

    return-object v0
.end method

.method public final processWithCallback([FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;
    .locals 8
    .param p1, "samples"    # [F
    .param p2, "callback"    # Lkotlin/jvm/functions/Function3;
    .param p3, "arg"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)[",
            "Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;"
        }
    .end annotation

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->processWithCallback(J[FLkotlin/jvm/functions/Function3;J)[Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationSegment;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->finalize()V

    return-void
.end method

.method public final sampleRate()I
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->getSampleRate(J)I

    move-result v0

    return v0
.end method

.method public final setConfig(Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarization;->setConfig(JLcom/k2fsa/sherpa/onnx/OfflineSpeakerDiarizationConfig;)V

    return-void
.end method
