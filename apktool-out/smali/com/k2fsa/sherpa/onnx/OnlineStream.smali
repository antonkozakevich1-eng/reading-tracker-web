.class public final Lcom/k2fsa/sherpa/onnx/OnlineStream;
.super Ljava/lang/Object;
.source "OnlineStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnlineStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineStream.kt\ncom/k2fsa/sherpa/onnx/OnlineStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ!\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\u0011\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0008\u0010\u000f\u001a\u00020\tH\u0004J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0082 J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\tJ\u0011\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0006\u0010\u0014\u001a\u00020\tJ!\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0082 J\u0016\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011J\u001a\u0010\u0017\u001a\u00020\t2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\t0\u0019R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "",
        "ptr",
        "",
        "(J)V",
        "getPtr",
        "()J",
        "setPtr",
        "acceptWaveform",
        "",
        "samples",
        "",
        "sampleRate",
        "",
        "delete",
        "finalize",
        "getOption",
        "",
        "key",
        "inputFinished",
        "release",
        "setOption",
        "value",
        "use",
        "block",
        "Lkotlin/Function1;",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->Companion:Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;

    .line 42
    nop

    .line 43
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .param p1, "ptr"    # J

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    .line 4
    nop

    .line 5
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    nop

    .line 3
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 5
    .local v0, "$i$a$-require-OnlineStream$1":I
    nop

    .end local v0    # "$i$a$-require-OnlineStream$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create native OnlineStream"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(J)V

    .line 46
    return-void
.end method

.method private final native acceptWaveform(J[FI)V
.end method

.method private final native delete(J)V
.end method

.method private final native getOption(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private final native inputFinished(J)V
.end method

.method private final native setOption(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public final acceptWaveform([FI)V
    .locals 2
    .param p1, "samples"    # [F
    .param p2, "sampleRate"    # I

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform(J[FI)V

    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 18
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 19
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->delete(J)V

    .line 20
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    .line 22
    :cond_0
    return-void
.end method

.method public final getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->getOption(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPtr()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    return-wide v0
.end method

.method public final inputFinished()V
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->inputFinished(J)V

    return-void
.end method

.method public final release()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->finalize()V

    return-void
.end method

.method public final setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->setOption(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPtr(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 3
    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    return-void
.end method

.method public final use(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    nop

    .line 28
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    .line 31
    nop

    .line 32
    return-void

    .line 30
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    throw v0
.end method
