.class public final Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;
.super Ljava/lang/Object;
.source "VoskEngine.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/SpeechDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/speech/VoskEngine;->createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0015\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\t0\tH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/alicegpt/textfollower/speech/VoskEngine$createDecoder$1",
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "accept",
        "",
        "buf",
        "",
        "n",
        "",
        "finalText",
        "",
        "kotlin.jvm.PlatformType",
        "()Ljava/lang/String;",
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
.field final synthetic $r:Lorg/vosk/Recognizer;


# direct methods
.method constructor <init>(Lorg/vosk/Recognizer;)V
    .locals 0
    .param p1, "$r"    # Lorg/vosk/Recognizer;

    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;->$r:Lorg/vosk/Recognizer;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept([SI)Z
    .locals 1
    .param p1, "buf"    # [S
    .param p2, "n"    # I

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;->$r:Lorg/vosk/Recognizer;

    invoke-virtual {v0, p1, p2}, Lorg/vosk/Recognizer;->acceptWaveForm([SI)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;->$r:Lorg/vosk/Recognizer;

    invoke-virtual {v0}, Lorg/vosk/Recognizer;->close()V

    return-void
.end method

.method public finalText()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;->$r:Lorg/vosk/Recognizer;

    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public partialText()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/VoskEngine$createDecoder$1;->$r:Lorg/vosk/Recognizer;

    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "partial"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
