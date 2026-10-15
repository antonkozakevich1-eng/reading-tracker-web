.class public final Lcom/alicegpt/textfollower/speech/VoskEngine;
.super Lcom/alicegpt/textfollower/speech/StreamingEngine;
.source "VoskEngine.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoskEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoskEngine.kt\ncom/alicegpt/textfollower/speech/VoskEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0017H\u0014J\u0018\u0010\u001b\u001a\u00020\u001c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001eH\u0014R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/VoskEngine;",
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
        "model",
        "Lorg/vosk/Model;",
        "loadModel",
        "",
        "modelDir",
        "Ljava/io/File;",
        "unloadModel",
        "createDecoder",
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "context",
        "",
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


# instance fields
.field private final contextAhead:I

.field private final contextBack:I

.field private final kind:Lcom/alicegpt/textfollower/speech/EngineKind;

.field private volatile model:Lorg/vosk/Model;

.field private final threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)V
    .locals 8
    .param p1, "listener"    # Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/alicegpt/textfollower/speech/StreamingEngine;-><init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 17
    const-string v0, "vosk-audio"

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->threadName:Ljava/lang/String;

    .line 18
    const/16 v0, 0x32

    iput v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->contextBack:I

    .line 19
    const/16 v0, 0xfa

    iput v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->contextAhead:I

    .line 14
    return-void
.end method


# virtual methods
.method protected createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .locals 4
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

    .line 36
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->model:Lorg/vosk/Model;

    if-eqz v0, :cond_2

    .line 37
    .local v0, "m":Lorg/vosk/Model;
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 50
    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-let-VoskEngine$createDecoder$grammar$1":I
    sget-object v3, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->INSTANCE:Lcom/alicegpt/textfollower/speech/GrammarBuilder;

    invoke-virtual {v3, v1}, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->fromWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-let-VoskEngine$createDecoder$grammar$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 38
    .local v1, "grammar":Ljava/lang/String;
    :goto_0
    const/high16 v2, 0x467a0000    # 16000.0f

    new-instance v3, Lorg/vosk/Recognizer;

    if-eqz v1, :cond_1

    invoke-direct {v3, v0, v2, v1}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;FLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {v3, v0, v2}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;F)V

    :goto_1
    move-object v2, v3

    .line 39
    .local v2, "r":Lorg/vosk/Recognizer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/vosk/Recognizer;->setWords(Z)V

    .line 40
    invoke-virtual {v2, v3}, Lorg/vosk/Recognizer;->setPartialWords(Z)V

    .line 41
    new-instance v3, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;

    invoke-direct {v3, v2}, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;-><init>(Lorg/vosk/Recognizer;)V

    check-cast v3, Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    return-object v3

    .line 36
    .end local v0    # "m":Lorg/vosk/Model;
    .end local v1    # "grammar":Ljava/lang/String;
    .end local v2    # "r":Lorg/vosk/Recognizer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u041c\u043e\u0434\u0435\u043b\u044c \u043d\u0435 \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u0430"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextAhead()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->contextAhead:I

    return v0
.end method

.method public getContextBack()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->contextBack:I

    return v0
.end method

.method public getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method

.method protected getThreadName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method protected loadModel(Ljava/io/File;)V
    .locals 2
    .param p1, "modelDir"    # Ljava/io/File;

    const-string v0, "modelDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->model:Lorg/vosk/Model;

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    sget-object v0, Lorg/vosk/LogLevel;->WARNINGS:Lorg/vosk/LogLevel;

    invoke-static {v0}, Lorg/vosk/LibVosk;->setLogLevel(Lorg/vosk/LogLevel;)V

    .line 27
    new-instance v0, Lorg/vosk/Model;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/vosk/Model;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->model:Lorg/vosk/Model;

    .line 28
    return-void
.end method

.method protected unloadModel()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->model:Lorg/vosk/Model;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/vosk/Model;->close()V

    .line 32
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine;->model:Lorg/vosk/Model;

    .line 33
    return-void
.end method
