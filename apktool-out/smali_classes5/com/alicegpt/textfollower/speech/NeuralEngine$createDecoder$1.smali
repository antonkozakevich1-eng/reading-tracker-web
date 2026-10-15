.class public final Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;
.super Ljava/lang/Object;
.source "NeuralEngine.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/SpeechDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/speech/NeuralEngine;->createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "com/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1",
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "current",
        "",
        "ended",
        "accept",
        "",
        "buf",
        "",
        "n",
        "",
        "finalText",
        "partialText",
        "close",
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
.field final synthetic $r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

.field final synthetic $stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

.field private current:Ljava/lang/String;

.field private ended:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/k2fsa/sherpa/onnx/OnlineStream;Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;)V
    .locals 1
    .param p1, "$stream"    # Lcom/k2fsa/sherpa/onnx/OnlineStream;
    .param p2, "$r"    # Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->current:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->ended:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public accept([SI)Z
    .locals 5
    .param p1, "buf"    # [S
    .param p2, "n"    # I

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-array v0, p2, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    aget-short v3, p1, v2

    int-to-float v3, v3

    const/high16 v4, 0x47000000    # 32768.0f

    div-float/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .local v0, "samples":[F
    :cond_0
    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    const/16 v3, 0x3e80

    invoke-virtual {v2, v0, v3}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v4, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v3, v4}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isEndpoint(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iput-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->ended:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->current:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$r:Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v1, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->reset(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    .line 57
    const/4 v1, 0x1

    return v1

    .line 59
    :cond_2
    iput-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->current:Ljava/lang/String;

    .line 60
    return v1
.end method

.method public close()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->$stream:Lcom/k2fsa/sherpa/onnx/OnlineStream;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    return-void
.end method

.method public finalText()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->ended:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public partialText()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralEngine$createDecoder$1;->current:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
