.class public final Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;
.super Ljava/lang/Object;
.source "OfflineSpeechDenoiser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u000f\u001a\u00020\u000eH\u0004J\u0011\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0019\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\nJ!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\nH\u0082 R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)V",
        "ptr",
        "",
        "sampleRate",
        "",
        "getSampleRate",
        "()I",
        "delete",
        "",
        "finalize",
        "newFromAsset",
        "newFromFile",
        "release",
        "run",
        "Lcom/k2fsa/sherpa/onnx/DenoisedAudio;",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->Companion:Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser$Companion;

    .line 73
    nop

    .line 74
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    nop

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)J

    move-result-wide v0

    .line 33
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    .line 38
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 41
    nop

    .line 26
    return-void

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-require-OfflineSpeechDenoiser$1":I
    nop

    .line 38
    .end local v0    # "$i$a$-require-OfflineSpeechDenoiser$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OfflineSpeechDenoiserConfig: failed to create native OfflineSpeechDenoiser"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 27
    const/4 p1, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)V

    .line 77
    return-void
.end method

.method private final native delete(J)V
.end method

.method private final native getSampleRate(J)I
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiserConfig;)J
.end method

.method private final native run(J[FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
.end method


# virtual methods
.method protected final finalize()V
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->delete(J)V

    .line 46
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    .line 48
    :cond_0
    return-void
.end method

.method public final getSampleRate()I
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->getSampleRate(J)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->finalize()V

    return-void
.end method

.method public final run([FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;
    .locals 2
    .param p1, "samples"    # [F
    .param p2, "sampleRate"    # I

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineSpeechDenoiser;->run(J[FI)Lcom/k2fsa/sherpa/onnx/DenoisedAudio;

    move-result-object v0

    return-object v0
.end method
