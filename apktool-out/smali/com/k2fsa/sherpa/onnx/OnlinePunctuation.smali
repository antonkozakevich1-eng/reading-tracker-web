.class public final Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;
.super Ljava/lang/Object;
.source "OnlinePunctuation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OnlinePunctuation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0082 J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0011\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u000e\u001a\u00020\rH\u0004J\u0019\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0011\u001a\u00020\rR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)V",
        "ptr",
        "",
        "addPunctuation",
        "",
        "text",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OnlinePunctuation$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->Companion:Lcom/k2fsa/sherpa/onnx/OnlinePunctuation$Companion;

    .line 60
    nop

    .line 61
    const-string v0, "sherpa-onnx-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)V
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "config"    # Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    nop

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)J

    move-result-wide v0

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->newFromFile(Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)J

    move-result-wide v0

    .line 25
    :goto_0
    iput-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    .line 30
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 33
    nop

    .line 18
    return-void

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    .local v0, "$i$a$-require-OnlinePunctuation$1":I
    nop

    .line 30
    .end local v0    # "$i$a$-require-OnlinePunctuation$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OnlinePunctuationConfig: failed to create native OnlinePunctuation"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)V

    .line 64
    return-void
.end method

.method private final native addPunctuation(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private final native delete(J)V
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OnlinePunctuationConfig;)J
.end method


# virtual methods
.method public final addPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->addPunctuation(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 37
    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->delete(J)V

    .line 38
    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->ptr:J

    .line 40
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlinePunctuation;->finalize()V

    return-void
.end method
