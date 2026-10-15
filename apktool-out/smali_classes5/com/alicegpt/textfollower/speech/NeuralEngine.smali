.class public final Lcom/alicegpt/textfollower/speech/NeuralEngine;
.super Lcom/alicegpt/textfollower/speech/StreamingEngine;
.source "NeuralEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0017H\u0014J\u0018\u0010\u001b\u001a\u00020\u001c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001eH\u0014R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/NeuralEngine;",
        "Lcom/alicegpt/textfollower/speech/StreamingEngine;",
        "listener",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
        "<init>",
        "(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)V",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "getKind",
        "()Lcom/alicegpt/textfollower/speech/EngineKind;",
        "threadName",
        "",
        "getThreadName",
        "()Ljava/lang/String;",
        "contextBack",
        "",
        "getContextBack",
        "()I",
        "contextAhead",
        "getContextAhead",
        "recognizer",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
        "loadModel",
        "",
        "modelDir",
        "Ljava/io/File;",
        "unloadModel",
        "createDecoder",
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "context",
        "",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BPE_VOCAB:Ljava/lang/String; = "unigram_500.vocab"

.field public static final Companion:Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;

.field public static final DECODER:Ljava/lang/String; = "decoder.onnx"

.field public static final ENCODER:Ljava/lang/String; = "encoder.int8.onnx"

.field public static final HOTWORDS_SCORE:F = 3.0f

.field public static final JOINER:Ljava/lang/String; = "joiner.int8.onnx"

.field public static final TOKENS:Ljava/lang/String; = "tokens.txt"


# instance fields
.field private final contextAhead:I

.field private final contextBack:I

.field private final kind:Lcom/alicegpt/textfollower/speech/EngineKind;

.field private volatile recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->Companion:Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)V
    .locals 8
    .param p1, "listener"    # Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/alicegpt/textfollower/speech/StreamingEngine;-><init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 22
    const-string v0, "neural-audio"

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->threadName:Ljava/lang/String;

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->contextBack:I

    .line 26
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->contextAhead:I

    .line 19
    return-void
.end method


# virtual methods
.method protected createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .locals 3
    .param p1, "context"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alicegpt/textfollower/speech/SpeechDecoder;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v0, :cond_0

    .line 43
    .local v0, "r":Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    sget-object v1, Lcom/alicegpt/textfollower/speech/NeuralEngine;->Companion:Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;

    invoke-virtual {v1, p1}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;->hotwordsOf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->createStream(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v1

    .line 44
    .local v1, "stream":Lcom/k2fsa/sherpa/onnx/OnlineStream;
    new-instance v2, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;

    invoke-direct {v2, v1, v0}, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineStream;Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;)V

    check-cast v2, Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    return-object v2

    .line 42
    .end local v0    # "r":Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;
    .end local v1    # "stream":Lcom/k2fsa/sherpa/onnx/OnlineStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c \u043d\u0435 \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u0430"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextAhead()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->contextAhead:I

    return v0
.end method

.method public getContextBack()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->contextBack:I

    return v0
.end method

.method public getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method

.method protected getThreadName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method protected loadModel(Ljava/io/File;)V
    .locals 4
    .param p1, "modelDir"    # Ljava/io/File;

    const-string v0, "modelDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    sget-object v1, Lcom/alicegpt/textfollower/speech/NeuralEngine;->Companion:Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;

    invoke-virtual {v1, p1}, Lcom/alicegpt/textfollower/speech/NeuralEngine$Companion;->buildConfig(Ljava/io/File;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 34
    return-void
.end method

.method protected unloadModel()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->release()V

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine;->recognizer:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 39
    return-void
.end method
