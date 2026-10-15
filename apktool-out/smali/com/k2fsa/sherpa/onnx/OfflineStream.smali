.class public final Lcom/k2fsa/sherpa/onnx/OfflineStream;
.super Ljava/lang/Object;
.source "OfflineStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OfflineStream$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineStream.kt\ncom/k2fsa/sherpa/onnx/OfflineStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ!\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\u0011\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0008\u0010\u000f\u001a\u00020\tH\u0004J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0082 J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\tJ!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0082 J\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011J\u001a\u0010\u0016\u001a\u00020\t2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\t0\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineStream;",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OfflineStream$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->Companion:Lcom/k2fsa/sherpa/onnx/OfflineStream$Companion;

    .line 38
    nop

    .line 39
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .param p1, "ptr"    # J

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    .line 4
    nop

    .line 5
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

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

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 5
    .local v0, "$i$a$-require-OfflineStream$1":I
    nop

    .end local v0    # "$i$a$-require-OfflineStream$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create native OfflineStream"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final native acceptWaveform(J[FI)V
.end method

.method private final native delete(J)V
.end method

.method private final native getOption(JLjava/lang/String;)Ljava/lang/String;
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
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->acceptWaveform(J[FI)V

    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 17
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->delete(J)V

    .line 18
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    .line 20
    :cond_0
    return-void
.end method

.method public final getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getOption(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPtr()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    return-wide v0
.end method

.method public final release()V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->finalize()V

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

    .line 11
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->setOption(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPtr(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 3
    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineStream;->ptr:J

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
            "Lcom/k2fsa/sherpa/onnx/OfflineStream;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    nop

    .line 26
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V

    .line 29
    nop

    .line 30
    return-void

    .line 28
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->release()V

    throw v0
.end method
