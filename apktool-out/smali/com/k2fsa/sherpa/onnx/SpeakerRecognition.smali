.class public final Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;
.super Ljava/lang/Object;
.source "Speaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;",
        "",
        "()V",
        "_extractor",
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;",
        "get_extractor",
        "()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;",
        "set_extractor",
        "(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;)V",
        "_manager",
        "Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;",
        "get_manager",
        "()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;",
        "set_manager",
        "(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;)V",
        "extractor",
        "getExtractor",
        "manager",
        "getManager",
        "initExtractor",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
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
.field public static final INSTANCE:Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;

.field private static _extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

.field private static _manager:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;

    invoke-direct {v0}, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;-><init>()V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->INSTANCE:Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic initExtractor$default(Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;Landroid/content/res/AssetManager;ILjava/lang/Object;)V
    .locals 0

    .line 141
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->initExtractor(Landroid/content/res/AssetManager;)V

    return-void
.end method


# virtual methods
.method public final getExtractor()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    .locals 1

    .line 133
    sget-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getManager()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;
    .locals 1

    .line 138
    sget-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_manager:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final get_extractor()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    .locals 1

    .line 128
    sget-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    return-object v0
.end method

.method public final get_manager()Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;
    .locals 1

    .line 129
    sget-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_manager:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    return-object v0
.end method

.method public final initExtractor(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 142
    monitor-enter p0

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$a$-synchronized-SpeakerRecognition$initExtractor$1":I
    :try_start_0
    sget-object v1, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 144
    nop

    .end local v0    # "$i$a$-synchronized-SpeakerRecognition$initExtractor$1":I
    monitor-exit p0

    return-void

    .line 146
    .restart local v0    # "$i$a$-synchronized-SpeakerRecognition$initExtractor$1":I
    :cond_0
    :try_start_1
    const-string v1, "sherpa-onnx"

    const-string v2, "Initializing speaker embedding extractor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 149
    nop

    .line 150
    new-instance v2, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;

    .line 151
    invoke-static {}, Lcom/k2fsa/sherpa/onnx/SpeakerKt;->access$getModelName$p()Ljava/lang/String;

    move-result-object v3

    .line 152
    nop

    .line 153
    nop

    .line 154
    const-string v4, "cpu"

    .line 150
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    .line 148
    invoke-direct {v1, p1, v2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractorConfig;)V

    sput-object v1, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 158
    new-instance v1, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    sget-object v2, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;->dim()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;-><init>(I)V

    sput-object v1, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_manager:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    .line 159
    nop

    .end local v0    # "$i$a$-synchronized-SpeakerRecognition$initExtractor$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    .line 160
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final set_extractor(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    .line 128
    sput-object p1, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_extractor:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingExtractor;

    return-void
.end method

.method public final set_manager(Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    .line 129
    sput-object p1, Lcom/k2fsa/sherpa/onnx/SpeakerRecognition;->_manager:Lcom/k2fsa/sherpa/onnx/SpeakerEmbeddingManager;

    return-void
.end method
