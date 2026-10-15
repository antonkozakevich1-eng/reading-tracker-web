.class public final Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0011\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0082 J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0019\u0010\u000f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0082 J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000cJ\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0082 J\u0011\u0010\u0014\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0082 J\u0008\u0010\u0015\u001a\u00020\u0011H\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u000cJ\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\nH\u0082 J\u0019\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u001a\u001a\u00020\u0011J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0005J\u0019\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V",
        "getConfig",
        "()Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;",
        "ptr",
        "",
        "createStream",
        "Lcom/k2fsa/sherpa/onnx/OfflineStream;",
        "hotwords",
        "",
        "createStreamWithHotwords",
        "decode",
        "",
        "stream",
        "streamPtr",
        "delete",
        "finalize",
        "getResult",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;",
        "newFromAsset",
        "newFromFile",
        "release",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;


# instance fields
.field private final config:Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->Companion:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;

    .line 246
    nop

    .line 247
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->config:Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    .line 186
    nop

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->config:Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    invoke-direct {p0, p1, v0}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->config:Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J

    move-result-wide v0

    .line 187
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    .line 192
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 195
    nop

    .line 180
    return-void

    .line 192
    :cond_2
    const/4 v0, 0x0

    .line 193
    .local v0, "$i$a$-require-OfflineRecognizer$1":I
    nop

    .line 192
    .end local v0    # "$i$a$-require-OfflineRecognizer$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OfflineRecognizerConfig: failed to create native OfflineRecognizer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 180
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 181
    const/4 p1, 0x0

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V

    .line 253
    return-void
.end method

.method private final native createStream(J)J
.end method

.method private final native createStreamWithHotwords(JLjava/lang/String;)J
.end method

.method private final native decode(JJ)V
.end method

.method private final native delete(J)V
.end method

.method private final native getResult(J)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J
.end method

.method public static final native prependAdspLibraryPath(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private final native setConfig(JLcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V
.end method


# virtual methods
.method public final createStream()Lcom/k2fsa/sherpa/onnx/OfflineStream;
    .locals 3

    .line 207
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->createStream(J)J

    move-result-wide v0

    .line 208
    .local v0, "p":J
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;-><init>(J)V

    return-object v2
.end method

.method public final createStream(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineStream;
    .locals 3
    .param p1, "hotwords"    # Ljava/lang/String;

    const-string v0, "hotwords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->createStreamWithHotwords(JLjava/lang/String;)J

    move-result-wide v0

    .line 213
    .local v0, "p":J
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;-><init>(J)V

    return-object v2
.end method

.method public final decode(Lcom/k2fsa/sherpa/onnx/OfflineStream;)V
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OfflineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->decode(JJ)V

    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 198
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->delete(J)V

    .line 200
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    .line 202
    :cond_0
    return-void
.end method

.method public final getConfig()Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->config:Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    return-object v0
.end method

.method public final getResult(Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    .locals 2
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OfflineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->getResult(J)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->finalize()V

    return-void
.end method

.method public final setConfig(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->setConfig(JLcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V

    return-void
.end method
