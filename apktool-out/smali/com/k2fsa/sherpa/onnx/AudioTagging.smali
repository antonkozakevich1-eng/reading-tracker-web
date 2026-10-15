.class public final Lcom/k2fsa/sherpa/onnx/AudioTagging;
.super Ljava/lang/Object;
.source "AudioTagging.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/AudioTagging$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J#\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J,\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0082 \u00a2\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\rJ\u0011\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u0016\u001a\u00020\u0015H\u0004J\u0019\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0019\u001a\u00020\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/AudioTagging;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)V",
        "ptr",
        "",
        "compute",
        "",
        "Lcom/k2fsa/sherpa/onnx/AudioEvent;",
        "stream",
        "Lcom/k2fsa/sherpa/onnx/OfflineStream;",
        "topK",
        "",
        "(Lcom/k2fsa/sherpa/onnx/OfflineStream;I)[Lcom/k2fsa/sherpa/onnx/AudioEvent;",
        "streamPtr",
        "(JJI)[Lcom/k2fsa/sherpa/onnx/AudioEvent;",
        "createStream",
        "delete",
        "",
        "finalize",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/AudioTagging$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/AudioTagging$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/AudioTagging$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->Companion:Lcom/k2fsa/sherpa/onnx/AudioTagging$Companion;

    .line 81
    nop

    .line 82
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    nop

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->newFromFile(Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)J

    move-result-wide v0

    .line 36
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    .line 41
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 44
    nop

    .line 29
    return-void

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    .local v0, "$i$a$-require-AudioTagging$1":I
    nop

    .line 41
    .end local v0    # "$i$a$-require-AudioTagging$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioTaggingConfig: failed to create native AudioTagging"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 30
    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/AudioTagging;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)V

    .line 85
    return-void
.end method

.method private final native compute(JJI)[Lcom/k2fsa/sherpa/onnx/AudioEvent;
.end method

.method public static synthetic compute$default(Lcom/k2fsa/sherpa/onnx/AudioTagging;Lcom/k2fsa/sherpa/onnx/OfflineStream;IILjava/lang/Object;)[Lcom/k2fsa/sherpa/onnx/AudioEvent;
    .locals 0

    .line 61
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->compute(Lcom/k2fsa/sherpa/onnx/OfflineStream;I)[Lcom/k2fsa/sherpa/onnx/AudioEvent;

    move-result-object p0

    return-object p0
.end method

.method private final native createStream(J)J
.end method

.method private final native delete(J)V
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;)J
.end method


# virtual methods
.method public final compute(Lcom/k2fsa/sherpa/onnx/OfflineStream;I)[Lcom/k2fsa/sherpa/onnx/AudioEvent;
    .locals 7
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OfflineStream;
    .param p2, "topK"    # I

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-wide v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getPtr()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->compute(JJI)[Lcom/k2fsa/sherpa/onnx/AudioEvent;

    move-result-object v0

    return-object v0
.end method

.method public final createStream()Lcom/k2fsa/sherpa/onnx/OfflineStream;
    .locals 3

    .line 56
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->createStream(J)J

    move-result-wide v0

    .line 57
    .local v0, "p":J
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;-><init>(J)V

    return-object v2
.end method

.method protected final finalize()V
    .locals 4

    .line 47
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->delete(J)V

    .line 49
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/AudioTagging;->ptr:J

    .line 51
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/AudioTagging;->finalize()V

    return-void
.end method
