.class public final Lcom/k2fsa/sherpa/onnx/VadKt;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getVadModelConfig",
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "type",
        "",
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
.method public static final getVadModelConfig(I)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 20
    .param p0, "type"    # I

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    new-instance v9, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 138
    new-instance v10, Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 138
    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, "ten-vad.onnx"

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3e800000    # 0.25f

    const/16 v5, 0x100

    const/4 v6, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 137
    const/16 v7, 0x21

    const/4 v1, 0x0

    const/16 v3, 0x3e80

    const/4 v4, 0x1

    const-string v5, "cpu"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v10

    invoke-direct/range {v0 .. v8}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    .line 122
    :pswitch_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 123
    new-instance v12, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 123
    const/16 v8, 0x20

    const/4 v9, 0x0

    const-string v2, "silero_vad.onnx"

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3e800000    # 0.25f

    const/16 v6, 0x200

    const/4 v7, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 122
    const/16 v18, 0x22

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e80

    const/4 v15, 0x1

    const-string v16, "cpu"

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;Lcom/k2fsa/sherpa/onnx/TenVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
