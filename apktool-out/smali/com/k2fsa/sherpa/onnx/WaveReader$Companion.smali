.class public final Lcom/k2fsa/sherpa/onnx/WaveReader$Companion;
.super Ljava/lang/Object;
.source "WaveReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k2fsa/sherpa/onnx/WaveReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u0019\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086 J\u0011\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0086 \u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/WaveReader$Companion;",
        "",
        "()V",
        "readWave",
        "Lcom/k2fsa/sherpa/onnx/WaveData;",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "filename",
        "",
        "readWaveFromAsset",
        "readWaveFromFile",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/WaveReader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final readWave(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "filename"    # Ljava/lang/String;

    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/WaveReader$Companion;->readWaveFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;

    move-result-object v0

    return-object v0
.end method

.method public final readWave(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/k2fsa/sherpa/onnx/WaveReader$Companion;->readWaveFromFile(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;

    move-result-object v0

    return-object v0
.end method

.method public final native readWaveFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;
.end method

.method public final native readWaveFromFile(Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/WaveData;
.end method
