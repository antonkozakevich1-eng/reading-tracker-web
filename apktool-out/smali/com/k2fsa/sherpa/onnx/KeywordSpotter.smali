.class public final Lcom/k2fsa/sherpa/onnx/KeywordSpotter;
.super Ljava/lang/Object;
.source "KeywordSpotter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/KeywordSpotter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\u0010\u0010\u000b\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eJ\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0082 J\u0011\u0010\u0013\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0082 J\u0008\u0010\u0014\u001a\u00020\u0010H\u0004J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eJ\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0082 J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u000eJ\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0082 J\u0019\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u001b\u001a\u00020\u0010J\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eJ\u0019\u0010\u001c\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0082 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotter;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)V",
        "getConfig",
        "()Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;",
        "ptr",
        "",
        "createStream",
        "keywords",
        "",
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "decode",
        "",
        "stream",
        "streamPtr",
        "delete",
        "finalize",
        "getResult",
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;",
        "isReady",
        "",
        "newFromAsset",
        "newFromFile",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/KeywordSpotter$Companion;


# instance fields
.field private final config:Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->Companion:Lcom/k2fsa/sherpa/onnx/KeywordSpotter$Companion;

    .line 85
    nop

    .line 86
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->config:Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    .line 35
    nop

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->config:Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    invoke-direct {p0, p1, v0}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->config:Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->newFromFile(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)J

    move-result-wide v0

    .line 36
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    .line 41
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

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
    .local v0, "$i$a$-require-KeywordSpotter$1":I
    nop

    .line 41
    .end local v0    # "$i$a$-require-KeywordSpotter$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid KeywordSpotterConfig: failed to create native KeywordSpotter"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 30
    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)V

    .line 89
    return-void
.end method

.method private final native createStream(JLjava/lang/String;)J
.end method

.method public static synthetic createStream$default(Lcom/k2fsa/sherpa/onnx/KeywordSpotter;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;
    .locals 0

    .line 55
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->createStream(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object p0

    return-object p0
.end method

.method private final native decode(JJ)V
.end method

.method private final native delete(J)V
.end method

.method private final native getResult(JJ)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;
.end method

.method private final native isReady(JJ)Z
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;)J
.end method

.method private final native reset(JJ)V
.end method


# virtual methods
.method public final createStream(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineStream;
    .locals 3
    .param p1, "keywords"    # Ljava/lang/String;

    const-string v0, "keywords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->createStream(JLjava/lang/String;)J

    move-result-wide v0

    .line 57
    .local v0, "p":J
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(J)V

    return-object v2
.end method

.method public final decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->decode(JJ)V

    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 47
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->delete(J)V

    .line 49
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    .line 51
    :cond_0
    return-void
.end method

.method public final getConfig()Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->config:Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    return-object v0
.end method

.method public final getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->getResult(JJ)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    move-result-object v0

    return-object v0
.end method

.method public final isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->isReady(JJ)Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->finalize()V

    return-void
.end method

.method public final reset(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V
    .locals 4
    .param p1, "stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->ptr:J

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->reset(JJ)V

    return-void
.end method
