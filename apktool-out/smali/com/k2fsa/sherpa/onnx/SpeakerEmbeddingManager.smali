.class public final Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;
.super Ljava/lang/Object;
.source "Speaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpeaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Speaker.kt\ncom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u0000 \"2\u00020\u0001:\u0001\"B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J!\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0082 J!\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000f\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ,\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000fH\u0082 \u00a2\u0006\u0002\u0010\u0012J\u0011\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f\u00a2\u0006\u0002\u0010\u0014J\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000f2\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 \u00a2\u0006\u0002\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0011\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u001a\u001a\u00020\u0019H\u0004J\u0006\u0010\u001b\u001a\u00020\u0003J\u0011\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0006\u0010\u001c\u001a\u00020\u0019J\u0019\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 J!\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0082 J)\u0010!\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0082 J\u001e\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;",
        "",
        "dim",
        "",
        "(I)V",
        "getDim",
        "()I",
        "ptr",
        "",
        "add",
        "",
        "name",
        "",
        "embedding",
        "",
        "",
        "(Ljava/lang/String;[[F)Z",
        "addList",
        "(JLjava/lang/String;[[F)Z",
        "allSpeakerNames",
        "()[Ljava/lang/String;",
        "(J)[Ljava/lang/String;",
        "contains",
        "create",
        "delete",
        "",
        "finalize",
        "numSpeakers",
        "release",
        "remove",
        "search",
        "threshold",
        "",
        "verify",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager$Companion;


# instance fields
.field private final dim:I

.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->Companion:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager$Companion;

    .line 114
    nop

    .line 115
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "dim"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->dim:I

    .line 70
    nop

    .line 71
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->dim:I

    invoke-direct {p0, v0}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->create(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    .line 72
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    nop

    .line 67
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    .line 72
    .local v0, "$i$a$-require-SpeakerEmbeddingManager$1":I
    nop

    .end local v0    # "$i$a$-require-SpeakerEmbeddingManager$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create native SpeakerEmbeddingManager"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final native add(JLjava/lang/String;[F)Z
.end method

.method private final native addList(JLjava/lang/String;[[F)Z
.end method

.method private final native allSpeakerNames(J)[Ljava/lang/String;
.end method

.method private final native contains(JLjava/lang/String;)Z
.end method

.method private final native create(I)J
.end method

.method private final native delete(J)V
.end method

.method private final native numSpeakers(J)I
.end method

.method private final native remove(JLjava/lang/String;)Z
.end method

.method private final native search(J[FF)Ljava/lang/String;
.end method

.method private final native verify(JLjava/lang/String;[FF)Z
.end method


# virtual methods
.method public final add(Ljava/lang/String;[F)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "embedding"    # [F

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->add(JLjava/lang/String;[F)Z

    move-result v0

    return v0
.end method

.method public final add(Ljava/lang/String;[[F)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "embedding"    # [[F

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->addList(JLjava/lang/String;[[F)Z

    move-result v0

    return v0
.end method

.method public final allSpeakerNames()[Ljava/lang/String;
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->allSpeakerNames(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->contains(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 4

    .line 76
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->delete(J)V

    .line 78
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    .line 80
    :cond_0
    return-void
.end method

.method public final getDim()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->dim:I

    return v0
.end method

.method public final numSpeakers()I
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->numSpeakers(J)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->finalize()V

    return-void
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->remove(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final search([FF)Ljava/lang/String;
    .locals 2
    .param p1, "embedding"    # [F
    .param p2, "threshold"    # F

    const-string v0, "embedding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->search(J[FF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[FF)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "embedding"    # [F
    .param p3, "threshold"    # F

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embedding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-wide v2, p0, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->ptr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;->verify(JLjava/lang/String;[FF)Z

    move-result v0

    return v0
.end method
