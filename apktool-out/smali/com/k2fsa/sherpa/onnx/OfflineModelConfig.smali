.class public final Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u007f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00ff\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u0008\u0008\u0002\u0010 \u001a\u00020!\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020#\u0012\u0008\u0008\u0002\u0010$\u001a\u00020%\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010(\u001a\u00020)\u0012\u0008\u0008\u0002\u0010*\u001a\u00020%\u0012\u0008\u0008\u0002\u0010+\u001a\u00020%\u0012\u0008\u0008\u0002\u0010,\u001a\u00020%\u0012\u0008\u0008\u0002\u0010-\u001a\u00020%\u0012\u0008\u0008\u0002\u0010.\u001a\u00020%\u00a2\u0006\u0002\u0010/J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0015H\u00c6\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0017H\u00c6\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0019H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020\u001bH\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u001dH\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u001fH\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020!H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020#H\u00c6\u0003J\n\u0010\u0093\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u0094\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020)H\u00c6\u0003J\n\u0010\u0097\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u0099\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020%H\u00c6\u0003J\n\u0010\u009c\u0001\u001a\u00020\u0007H\u00c6\u0003J\n\u0010\u009d\u0001\u001a\u00020\tH\u00c6\u0003J\n\u0010\u009e\u0001\u001a\u00020\u000bH\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\rH\u00c6\u0003J\n\u0010\u00a0\u0001\u001a\u00020\u000fH\u00c6\u0003J\n\u0010\u00a1\u0001\u001a\u00020\u0011H\u00c6\u0003J\n\u0010\u00a2\u0001\u001a\u00020\u0013H\u00c6\u0003J\u0084\u0002\u0010\u00a3\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020%2\u0008\u0008\u0002\u0010+\u001a\u00020%2\u0008\u0008\u0002\u0010,\u001a\u00020%2\u0008\u0008\u0002\u0010-\u001a\u00020%2\u0008\u0008\u0002\u0010.\u001a\u00020%H\u00c6\u0001J\u0015\u0010\u00a4\u0001\u001a\u00020)2\t\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00a6\u0001\u001a\u00020\'H\u00d6\u0001J\n\u0010\u00a7\u0001\u001a\u00020%H\u00d6\u0001R\u001a\u0010.\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010(\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u001a\u0010+\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u00101\"\u0004\u0008U\u00103R\u001a\u0010-\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u00101\"\u0004\u0008W\u00103R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\u001a\u0010*\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u00101\"\u0004\u0008m\u00103R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u00101\"\u0004\u0008w\u00103R\u001a\u0010,\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u00101\"\u0004\u0008y\u00103R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u001c\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001e\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001e\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;",
        "",
        "transducer",
        "Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;",
        "paraformer",
        "Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;",
        "whisper",
        "Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;",
        "fireRedAsr",
        "Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;",
        "moonshine",
        "Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;",
        "nemo",
        "Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;",
        "senseVoice",
        "Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;",
        "dolphin",
        "Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;",
        "zipformerCtc",
        "Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;",
        "wenetCtc",
        "Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;",
        "omnilingual",
        "Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;",
        "medasr",
        "Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;",
        "funasrNano",
        "Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;",
        "qwen3Asr",
        "Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;",
        "fireRedAsrCtc",
        "Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;",
        "canary",
        "Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;",
        "cohereTranscribe",
        "Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;",
        "teleSpeech",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "modelType",
        "tokens",
        "modelingUnit",
        "bpeVocab",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBpeVocab",
        "()Ljava/lang/String;",
        "setBpeVocab",
        "(Ljava/lang/String;)V",
        "getCanary",
        "()Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;",
        "setCanary",
        "(Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;)V",
        "getCohereTranscribe",
        "()Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;",
        "setCohereTranscribe",
        "(Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getDolphin",
        "()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;",
        "setDolphin",
        "(Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;)V",
        "getFireRedAsr",
        "()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;",
        "setFireRedAsr",
        "(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;)V",
        "getFireRedAsrCtc",
        "()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;",
        "setFireRedAsrCtc",
        "(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;)V",
        "getFunasrNano",
        "()Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;",
        "setFunasrNano",
        "(Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;)V",
        "getMedasr",
        "()Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;",
        "setMedasr",
        "(Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;)V",
        "getModelType",
        "setModelType",
        "getModelingUnit",
        "setModelingUnit",
        "getMoonshine",
        "()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;",
        "setMoonshine",
        "(Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;)V",
        "getNemo",
        "()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;",
        "setNemo",
        "(Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getOmnilingual",
        "()Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;",
        "setOmnilingual",
        "(Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;)V",
        "getParaformer",
        "()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;",
        "setParaformer",
        "(Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;)V",
        "getProvider",
        "setProvider",
        "getQwen3Asr",
        "()Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;",
        "setQwen3Asr",
        "(Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;)V",
        "getSenseVoice",
        "()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;",
        "setSenseVoice",
        "(Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;)V",
        "getTeleSpeech",
        "setTeleSpeech",
        "getTokens",
        "setTokens",
        "getTransducer",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;",
        "setTransducer",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;)V",
        "getWenetCtc",
        "()Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;",
        "setWenetCtc",
        "(Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;)V",
        "getWhisper",
        "()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;",
        "setWhisper",
        "(Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;)V",
        "getZipformerCtc",
        "()Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;",
        "setZipformerCtc",
        "(Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;)V",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private bpeVocab:Ljava/lang/String;

.field private canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

.field private cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

.field private debug:Z

.field private dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

.field private fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

.field private fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

.field private funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

.field private medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

.field private modelType:Ljava/lang/String;

.field private modelingUnit:Ljava/lang/String;

.field private moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

.field private nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

.field private numThreads:I

.field private omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

.field private paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

.field private provider:Ljava/lang/String;

.field private qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

.field private senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

.field private teleSpeech:Ljava/lang/String;

.field private tokens:Ljava/lang/String;

.field private transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

.field private wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

.field private whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

.field private zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 28

    move-object/from16 v0, p0

    const v26, 0x1ffffff

    const/16 v27, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "transducer"    # Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;
    .param p2, "paraformer"    # Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;
    .param p3, "whisper"    # Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;
    .param p4, "fireRedAsr"    # Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;
    .param p5, "moonshine"    # Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;
    .param p6, "nemo"    # Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;
    .param p7, "senseVoice"    # Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;
    .param p8, "dolphin"    # Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;
    .param p9, "zipformerCtc"    # Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;
    .param p10, "wenetCtc"    # Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;
    .param p11, "omnilingual"    # Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;
    .param p12, "medasr"    # Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;
    .param p13, "funasrNano"    # Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
    .param p14, "qwen3Asr"    # Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
    .param p15, "fireRedAsrCtc"    # Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;
    .param p16, "canary"    # Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;
    .param p17, "cohereTranscribe"    # Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;
    .param p18, "teleSpeech"    # Ljava/lang/String;
    .param p19, "numThreads"    # I
    .param p20, "debug"    # Z
    .param p21, "provider"    # Ljava/lang/String;
    .param p22, "modelType"    # Ljava/lang/String;
    .param p23, "tokens"    # Ljava/lang/String;
    .param p24, "modelingUnit"    # Ljava/lang/String;
    .param p25, "bpeVocab"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "transducer"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whisper"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireRedAsr"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moonshine"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nemo"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senseVoice"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dolphin"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformerCtc"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wenetCtc"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omnilingual"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "medasr"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funasrNano"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qwen3Asr"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireRedAsrCtc"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canary"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cohereTranscribe"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teleSpeech"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    .line 139
    iput-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    .line 140
    iput-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    .line 141
    iput-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    .line 142
    iput-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    .line 143
    iput-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    .line 144
    iput-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    .line 145
    iput-object v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    .line 146
    iput-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    .line 147
    iput-object v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    .line 148
    iput-object v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    .line 149
    iput-object v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    .line 150
    iput-object v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    .line 151
    iput-object v14, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    .line 152
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    .line 153
    iput-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    .line 154
    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    .line 156
    iput-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    .line 157
    move/from16 v1, p19

    iput v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    .line 158
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    .line 159
    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    .line 160
    iput-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    .line 161
    move-object/from16 v1, p23

    move-object/from16 v2, p24

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    .line 162
    iput-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    .line 163
    move-object/from16 v15, p25

    iput-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 32

    .line 137
    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 137
    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 139
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-direct {v2, v4, v4, v3, v4}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;-><init>(Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 137
    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 140
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    const/16 v14, 0x7f

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v15}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 137
    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 141
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-direct {v6, v4, v4, v3, v4}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 137
    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 142
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    const/16 v14, 0x1f

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    .line 137
    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    .line 143
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-direct {v8, v4, v9, v4}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    .line 137
    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    .line 144
    new-instance v10, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p1, v10

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move/from16 p4, v15

    move-object/from16 p5, v16

    move/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p1 .. p7}, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    .line 137
    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 145
    new-instance v11, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-direct {v11, v4, v9, v4}, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    .line 137
    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    .line 146
    new-instance v12, Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    invoke-direct {v12, v4, v4, v3, v4}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;-><init>(Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/QnnConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    .line 137
    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_9

    .line 147
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    invoke-direct {v3, v4, v9, v4}, Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    .line 137
    :cond_9
    move-object/from16 v3, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    .line 148
    new-instance v13, Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    invoke-direct {v13, v4, v9, v4}, Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    .line 137
    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    .line 149
    new-instance v14, Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    invoke-direct {v14, v4, v9, v4}, Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    .line 137
    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    .line 150
    new-instance v15, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    const/16 v30, 0x1fff

    const/16 v31, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v31}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFFILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_c

    .line 137
    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    .line 151
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 p2, v4

    move-object/from16 p3, v18

    move-object/from16 p4, v19

    move-object/from16 p5, v20

    move-object/from16 p6, v21

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v24

    move/from16 p10, v25

    move/from16 p11, v26

    move-object/from16 p12, v27

    move/from16 p13, v16

    move-object/from16 p14, v17

    invoke-direct/range {p2 .. p14}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFFILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    .line 137
    :cond_d
    move-object/from16 v4, p14

    :goto_d
    and-int/lit16 v9, v0, 0x4000

    if-eqz v9, :cond_e

    .line 152
    new-instance v9, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    move-object/from16 p27, v4

    move-object/from16 v16, v15

    const/4 v4, 0x0

    const/4 v15, 0x1

    invoke-direct {v9, v4, v15, v4}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    .line 137
    :cond_e
    move-object/from16 p27, v4

    move-object/from16 v16, v15

    const/4 v15, 0x1

    move-object/from16 v9, p15

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    .line 153
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p1, v4

    move-object/from16 p2, v19

    move-object/from16 p3, v20

    move-object/from16 p4, v21

    move-object/from16 p5, v22

    move/from16 p6, v23

    move/from16 p7, v17

    move-object/from16 p8, v18

    invoke-direct/range {p1 .. p8}, Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_f

    .line 137
    :cond_f
    move-object/from16 v4, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    .line 155
    new-instance v17, Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    const/16 v18, 0x1f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p1, v17

    move-object/from16 p2, v20

    move-object/from16 p3, v21

    move-object/from16 p4, v22

    move/from16 p5, v23

    move/from16 p6, v24

    move/from16 p7, v18

    move-object/from16 p8, v19

    invoke-direct/range {p1 .. p8}, Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_10

    .line 137
    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    const-string v19, ""

    if-eqz v18, :cond_11

    .line 156
    move-object/from16 v18, v19

    goto :goto_11

    .line 137
    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    .line 157
    goto :goto_12

    .line 137
    :cond_12
    move/from16 v15, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    .line 158
    const/16 v20, 0x0

    goto :goto_13

    .line 137
    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 159
    const-string v21, "cpu"

    goto :goto_14

    .line 137
    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    .line 160
    move-object/from16 v22, v19

    goto :goto_15

    .line 137
    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    .line 161
    move-object/from16 v23, v19

    goto :goto_16

    .line 137
    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    .line 162
    move-object/from16 v24, v19

    goto :goto_17

    .line 137
    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    .line 163
    goto :goto_18

    .line 137
    :cond_18
    move-object/from16 v19, p25

    :goto_18
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v3

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v16

    move-object/from16 p15, p27

    move-object/from16 p16, v9

    move-object/from16 p17, v4

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move/from16 p20, v15

    move/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v19

    invoke-direct/range {p1 .. p26}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    goto :goto_12

    :cond_12
    move/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_13

    iget-boolean v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    goto :goto_13

    :cond_13
    move/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-object v0
.end method

.method public final component10()Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    return-object v0
.end method

.method public final component11()Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    return-object v0
.end method

.method public final component12()Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    return-object v0
.end method

.method public final component13()Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    return-object v0
.end method

.method public final component14()Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    return-object v0
.end method

.method public final component15()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    return-object v0
.end method

.method public final component16()Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    return-object v0
.end method

.method public final component17()Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-object v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-object v0
.end method

.method public final component5()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-object v0
.end method

.method public final component6()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-object v0
.end method

.method public final component7()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-object v0
.end method

.method public final component8()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-object v0
.end method

.method public final component9()Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "transducer"

    move-object/from16 v26, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whisper"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireRedAsr"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moonshine"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nemo"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senseVoice"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dolphin"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformerCtc"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wenetCtc"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omnilingual"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "medasr"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funasrNano"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qwen3Asr"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireRedAsrCtc"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canary"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cohereTranscribe"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teleSpeech"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v27, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v25}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v27
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    iget v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-boolean v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    iget-boolean v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v2

    :cond_16
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    iget-object v4, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v2

    :cond_19
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    iget-object v1, v1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getBpeVocab()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanary()Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    return-object v0
.end method

.method public final getCohereTranscribe()Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return v0
.end method

.method public final getDolphin()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-object v0
.end method

.method public final getFireRedAsr()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-object v0
.end method

.method public final getFireRedAsrCtc()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    return-object v0
.end method

.method public final getFunasrNano()Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    return-object v0
.end method

.method public final getMedasr()Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    return-object v0
.end method

.method public final getModelType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelingUnit()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getMoonshine()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-object v0
.end method

.method public final getNemo()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-object v0
.end method

.method public final getNumThreads()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return v0
.end method

.method public final getOmnilingual()Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    return-object v0
.end method

.method public final getParaformer()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getQwen3Asr()Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    return-object v0
.end method

.method public final getSenseVoice()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-object v0
.end method

.method public final getTeleSpeech()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransducer()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-object v0
.end method

.method public final getWenetCtc()Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    return-object v0
.end method

.method public final getWhisper()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-object v0
.end method

.method public final getZipformerCtc()Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    invoke-virtual {v2}, Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setBpeVocab(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public final setCanary(Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    return-void
.end method

.method public final setCohereTranscribe(Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    .line 155
    return-void
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 158
    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return-void
.end method

.method public final setDolphin(Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-void
.end method

.method public final setFireRedAsr(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-void
.end method

.method public final setFireRedAsrCtc(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    return-void
.end method

.method public final setFunasrNano(Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    return-void
.end method

.method public final setMedasr(Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    return-void
.end method

.method public final setModelType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-void
.end method

.method public final setModelingUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-void
.end method

.method public final setMoonshine(Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-void
.end method

.method public final setNemo(Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 157
    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return-void
.end method

.method public final setOmnilingual(Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    return-void
.end method

.method public final setParaformer(Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setQwen3Asr(Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    return-void
.end method

.method public final setSenseVoice(Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-void
.end method

.method public final setTeleSpeech(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-void
.end method

.method public final setTransducer(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-void
.end method

.method public final setWenetCtc(Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    return-void
.end method

.method public final setWhisper(Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-void
.end method

.method public final setZipformerCtc(Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineModelConfig(transducer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paraformer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", whisper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fireRedAsr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", moonshine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nemo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", senseVoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dolphin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zipformerCtc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->zipformerCtc:Lcom/k2fsa/sherpa/onnx/OfflineZipformerCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wenetCtc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->wenetCtc:Lcom/k2fsa/sherpa/onnx/OfflineWenetCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", omnilingual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->omnilingual:Lcom/k2fsa/sherpa/onnx/OfflineOmnilingualAsrCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", medasr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->medasr:Lcom/k2fsa/sherpa/onnx/OfflineMedAsrCtcModelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", funasrNano="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->funasrNano:Lcom/k2fsa/sherpa/onnx/OfflineFunAsrNanoModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qwen3Asr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->qwen3Asr:Lcom/k2fsa/sherpa/onnx/OfflineQwen3AsrModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fireRedAsrCtc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsrCtc:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrCtcModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->canary:Lcom/k2fsa/sherpa/onnx/OfflineCanaryModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cohereTranscribe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->cohereTranscribe:Lcom/k2fsa/sherpa/onnx/OfflineCohereTranscribeModelConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", teleSpeech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numThreads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modelType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelingUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bpeVocab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
