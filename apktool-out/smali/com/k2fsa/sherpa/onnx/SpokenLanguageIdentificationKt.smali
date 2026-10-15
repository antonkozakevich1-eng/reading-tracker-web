.class public final Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationKt;
.super Ljava/lang/Object;
.source "SpokenLanguageIdentification.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "getSpokenLanguageIdentificationConfig",
        "Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;",
        "type",
        "",
        "numThreads",
        "sherpa_onnx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getSpokenLanguageIdentificationConfig(II)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;
    .locals 10
    .param p0, "type"    # I
    .param p1, "numThreads"    # I

    .line 80
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "sherpa-onnx-whisper-base"

    .line 95
    .local v0, "modelDir":Ljava/lang/String;
    new-instance v8, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    .line 96
    new-instance v7, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base-encoder.int8.onnx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/base-decoder.int8.onnx"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    nop

    .line 101
    nop

    .line 95
    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, v7

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    .line 82
    .end local v0    # "modelDir":Ljava/lang/String;
    :pswitch_1
    const-string v0, "sherpa-onnx-whisper-tiny"

    .line 83
    .restart local v0    # "modelDir":Ljava/lang/String;
    new-instance v8, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    .line 84
    new-instance v7, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tiny-encoder.int8.onnx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/tiny-decoder.int8.onnx"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    nop

    .line 89
    nop

    .line 83
    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, v7

    move v3, p1

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationWhisperConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic getSpokenLanguageIdentificationConfig$default(IIILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;
    .locals 0

    .line 76
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 78
    const/4 p1, 0x1

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationKt;->getSpokenLanguageIdentificationConfig(II)Lcom/k2fsa/sherpa/onnx/SpokenLanguageIdentificationConfig;

    move-result-object p0

    return-object p0
.end method
