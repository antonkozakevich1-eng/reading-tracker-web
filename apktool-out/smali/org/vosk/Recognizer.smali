.class public Lorg/vosk/Recognizer;
.super Lcom/sun/jna/PointerType;
.source "Recognizer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vosk/Recognizer$EndpointerMode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/vosk/Model;F)V
    .locals 2
    .param p1, "model"    # Lorg/vosk/Model;
    .param p2, "sampleRate"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_new(Lorg/vosk/Model;F)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 21
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create a recognizer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/vosk/Model;FLjava/lang/String;)V
    .locals 2
    .param p1, "model"    # Lorg/vosk/Model;
    .param p2, "sampleRate"    # F
    .param p3, "grammar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lorg/vosk/Model;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/vosk/LibVosk;->vosk_recognizer_new_grm(Lcom/sun/jna/Pointer;FLjava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 71
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create a recognizer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/vosk/Model;FLorg/vosk/SpeakerModel;)V
    .locals 2
    .param p1, "model"    # Lorg/vosk/Model;
    .param p2, "sampleRate"    # F
    .param p3, "spkModel"    # Lorg/vosk/SpeakerModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lorg/vosk/Model;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p3}, Lorg/vosk/SpeakerModel;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/vosk/LibVosk;->vosk_recognizer_new_spk(Lcom/sun/jna/Pointer;FLcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 43
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create a recognizer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acceptWaveForm([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .line 162
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform(Lcom/sun/jna/Pointer;[BI)Z

    move-result v0

    return v0
.end method

.method public acceptWaveForm([FI)Z
    .locals 1
    .param p1, "data"    # [F
    .param p2, "len"    # I

    .line 170
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform_f(Lcom/sun/jna/Pointer;[FI)Z

    move-result v0

    return v0
.end method

.method public acceptWaveForm([SI)Z
    .locals 1
    .param p1, "data"    # [S
    .param p2, "len"    # I

    .line 166
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform_s(Lcom/sun/jna/Pointer;[SI)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_free(Lcom/sun/jna/Pointer;)V

    .line 274
    return-void
.end method

.method public getFinalResult()Ljava/lang/String;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_final_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartialResult()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_partial_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_reset(Lcom/sun/jna/Pointer;)V

    .line 237
    return-void
.end method

.method public setEndpointerDelays(FFF)V
    .locals 1
    .param p1, "t_start_max"    # F
    .param p2, "t_end"    # F
    .param p3, "t_max"    # F

    .line 264
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/vosk/LibVosk;->vosk_recognizer_set_endpointer_delays(Lcom/sun/jna/Pointer;FFF)V

    .line 265
    return-void
.end method

.method public setEndpointerMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 253
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_endpointer_mode(Lcom/sun/jna/Pointer;I)V

    .line 254
    return-void
.end method

.method public setGrammar(Ljava/lang/String;)V
    .locals 1
    .param p1, "grammar"    # Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_grm(Lcom/sun/jna/Pointer;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setMaxAlternatives(I)V
    .locals 1
    .param p1, "maxAlternatives"    # I

    .line 91
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_max_alternatives(Lcom/sun/jna/Pointer;I)V

    .line 92
    return-void
.end method

.method public setPartialWords(Z)V
    .locals 1
    .param p1, "partial_words"    # Z

    .line 137
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_partial_words(Lcom/sun/jna/Pointer;Z)V

    .line 138
    return-void
.end method

.method public setSpeakerModel(Lorg/vosk/SpeakerModel;)V
    .locals 2
    .param p1, "spkModel"    # Lorg/vosk/SpeakerModel;

    .line 149
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/vosk/SpeakerModel;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_spk_model(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)V

    .line 150
    return-void
.end method

.method public setWords(Z)V
    .locals 1
    .param p1, "words"    # Z

    .line 128
    invoke-virtual {p0}, Lorg/vosk/Recognizer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_words(Lcom/sun/jna/Pointer;Z)V

    .line 129
    return-void
.end method
