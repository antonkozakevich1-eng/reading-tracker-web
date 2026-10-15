.class public final Lcom/k2fsa/sherpa/onnx/SpeakerKt;
.super Ljava/lang/Object;
.source "Speaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "modelName",
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


# static fields
.field private static final modelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-string v0, "3dspeaker_speech_eres2net_base_sv_zh-cn_3dspeaker_16k.onnx"

    sput-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerKt;->modelName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getModelName$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/k2fsa/sherpa/onnx/SpeakerKt;->modelName:Ljava/lang/String;

    return-object v0
.end method
