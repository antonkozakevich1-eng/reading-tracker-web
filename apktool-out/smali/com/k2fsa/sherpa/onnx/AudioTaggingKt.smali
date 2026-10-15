.class public final Lcom/k2fsa/sherpa/onnx/AudioTaggingKt;
.super Ljava/lang/Object;
.source "AudioTagging.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "getAudioTaggingConfig",
        "Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;",
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
.method public static final getAudioTaggingConfig(II)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;
    .locals 14
    .param p0, "type"    # I
    .param p1, "numThreads"    # I

    .line 94
    const/4 v0, 0x3

    const-string v1, "/class_labels_indices.csv"

    const-string v2, "/model.int8.onnx"

    packed-switch p0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 161
    :pswitch_0
    const-string v3, "sherpa-onnx-ced-base-audio-tagging-2024-04-19"

    .line 162
    .local v3, "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 163
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 165
    nop

    .line 166
    nop

    .line 163
    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    nop

    .line 162
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    .line 148
    .end local v3    # "modelDir":Ljava/lang/String;
    :pswitch_1
    const-string v3, "sherpa-onnx-ced-small-audio-tagging-2024-04-19"

    .line 149
    .restart local v3    # "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 150
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    nop

    .line 153
    nop

    .line 150
    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    nop

    .line 149
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    .line 135
    .end local v3    # "modelDir":Ljava/lang/String;
    :pswitch_2
    const-string v3, "sherpa-onnx-ced-mini-audio-tagging-2024-04-19"

    .line 136
    .restart local v3    # "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 137
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    nop

    .line 140
    nop

    .line 137
    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    nop

    .line 136
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    .line 122
    .end local v3    # "modelDir":Ljava/lang/String;
    :pswitch_3
    const-string v3, "sherpa-onnx-ced-tiny-audio-tagging-2024-04-19"

    .line 123
    .restart local v3    # "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 124
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 126
    nop

    .line 127
    nop

    .line 124
    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    nop

    .line 123
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    .line 109
    .end local v3    # "modelDir":Ljava/lang/String;
    :pswitch_4
    const-string v3, "sherpa-onnx-zipformer-audio-tagging-2024-04-09"

    .line 110
    .restart local v3    # "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 111
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 112
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;-><init>(Ljava/lang/String;)V

    .line 111
    nop

    .line 113
    nop

    .line 114
    nop

    .line 111
    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    nop

    .line 110
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    .line 96
    .end local v3    # "modelDir":Ljava/lang/String;
    :pswitch_5
    const-string v3, "sherpa-onnx-zipformer-small-audio-tagging-2024-04-15"

    .line 97
    .restart local v3    # "modelDir":Ljava/lang/String;
    new-instance v4, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    .line 98
    new-instance v13, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;

    .line 99
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;-><init>(Ljava/lang/String;)V

    .line 98
    nop

    .line 100
    nop

    .line 101
    nop

    .line 98
    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v13

    move v8, p1

    invoke-direct/range {v5 .. v12}, Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineZipformerAudioTaggingModelConfig;Ljava/lang/String;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    nop

    .line 97
    invoke-direct {v4, v13, v1, v0}, Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;-><init>(Lcom/k2fsa/sherpa/onnx/AudioTaggingModelConfig;Ljava/lang/String;I)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic getAudioTaggingConfig$default(IIILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;
    .locals 0

    .line 93
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lcom/k2fsa/sherpa/onnx/AudioTaggingKt;->getAudioTaggingConfig(II)Lcom/k2fsa/sherpa/onnx/AudioTaggingConfig;

    move-result-object p0

    return-object p0
.end method
