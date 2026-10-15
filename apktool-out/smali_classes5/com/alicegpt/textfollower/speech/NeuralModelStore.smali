.class public final Lcom/alicegpt/textfollower/speech/NeuralModelStore;
.super Ljava/lang/Object;
.source "NeuralModelStore.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/ModelStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeuralModelStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeuralModelStore.kt\ncom/alicegpt/textfollower/speech/NeuralModelStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1734#2,3:133\n1#3:136\n*S KotlinDebug\n*F\n+ 1 NeuralModelStore.kt\ncom/alicegpt/textfollower/speech/NeuralModelStore\n*L\n44#1:133,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J$\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0016JK\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00182\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\'0 H\u0000\u00a2\u0006\u0002\u0008(J\u0015\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008+J,\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00182\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\"0 H\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/NeuralModelStore;",
        "Lcom/alicegpt/textfollower/speech/ModelStore;",
        "<init>",
        "()V",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "getKind",
        "()Lcom/alicegpt/textfollower/speech/EngineKind;",
        "downloadMb",
        "",
        "getDownloadMb",
        "()I",
        "DIR_NAME",
        "",
        "ASSET_DIR",
        "MARKER",
        "SHERPA_REPO",
        "VOSK_REPO",
        "FILES",
        "",
        "Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;",
        "getFILES",
        "()Ljava/util/List;",
        "modelDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "isInstalled",
        "",
        "isBundled",
        "install",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "installInto",
        "target",
        "files",
        "open",
        "Ljava/io/InputStream;",
        "installInto$app_debug",
        "openRemote",
        "f",
        "openRemote$app_debug",
        "copy",
        "input",
        "to",
        "progress",
        "",
        "RemoteFile",
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


# static fields
.field public static final ASSET_DIR:Ljava/lang/String; = "neural-ru"

.field private static final DIR_NAME:Ljava/lang/String; = "neural-ru-streaming-zipformer-small-2025-08-16"

.field private static final FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/alicegpt/textfollower/speech/NeuralModelStore;

.field private static final MARKER:Ljava/lang/String; = ".installed"

.field private static final SHERPA_REPO:Ljava/lang/String; = "https://huggingface.co/csukuangfj/sherpa-onnx-streaming-zipformer-small-ru-vosk-int8-2025-08-16/resolve/main"

.field private static final VOSK_REPO:Ljava/lang/String; = "https://huggingface.co/alphacep/vosk-model-small-streaming-ru/resolve/main"

.field private static final downloadMb:I

.field private static final kind:Lcom/alicegpt/textfollower/speech/EngineKind;


# direct methods
.method public static synthetic $r8$lambda$4u2YG9YKLb_4-0hcBt71y8tzHWI(ZLandroid/content/Context;Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->install$lambda$1(ZLandroid/content/Context;Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L2XufDfFBgbF9oMoEyzDq8QKGxI(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->installInto$lambda$4$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->INSTANCE:Lcom/alicegpt/textfollower/speech/NeuralModelStore;

    .line 17
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    sput-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 18
    const/16 v0, 0x1c

    sput v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->downloadMb:I

    .line 30
    nop

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v2, "https://huggingface.co/csukuangfj/sherpa-onnx-streaming-zipformer-small-ru-vosk-int8-2025-08-16/resolve/main/encoder.int8.onnx"

    const-wide/32 v3, 0x18ffeac

    const-string v5, "encoder.int8.onnx"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v2, "https://huggingface.co/csukuangfj/sherpa-onnx-streaming-zipformer-small-ru-vosk-int8-2025-08-16/resolve/main/decoder.onnx"

    const-wide/32 v3, 0x1ff018

    const-string v5, "decoder.onnx"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    nop

    .line 33
    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v2, "https://huggingface.co/csukuangfj/sherpa-onnx-streaming-zipformer-small-ru-vosk-int8-2025-08-16/resolve/main/joiner.int8.onnx"

    const-wide/32 v3, 0x3f559

    const-string v5, "joiner.int8.onnx"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    nop

    .line 34
    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v2, "https://huggingface.co/csukuangfj/sherpa-onnx-streaming-zipformer-small-ru-vosk-int8-2025-08-16/resolve/main/tokens.txt"

    const-wide/16 v3, 0x18f4

    const-string v5, "tokens.txt"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    nop

    .line 35
    new-instance v1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v2, "https://huggingface.co/alphacep/vosk-model-small-streaming-ru/resolve/main/lang/unigram_500.vocab"

    const-wide/16 v3, 0x22bb

    const-string v5, "unigram_500.vocab"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 31
    nop

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->FILES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final copy(Ljava/io/InputStream;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "to"    # Ljava/io/File;
    .param p3, "progress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/FileOutputStream;

    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-use-NeuralModelStore$copy$1":I
    const/high16 v3, 0x10000

    new-array v3, v3, [B

    .line 121
    .local v3, "buf":[B
    const-wide/16 v4, 0x0

    .line 122
    .local v4, "read":J
    :goto_0
    nop

    .line 123
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 124
    .local v6, "n":I
    if-ltz v6, :cond_0

    .line 125
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 126
    int-to-long v7, v6

    add-long/2addr v4, v7

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    .end local v6    # "n":I
    :cond_0
    nop

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "$i$a$-use-NeuralModelStore$copy$1":I
    .end local v3    # "buf":[B
    .end local v4    # "read":J
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "to":Ljava/io/File;
    .end local p3    # "progress":Lkotlin/jvm/functions/Function1;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "input":Ljava/io/InputStream;
    .restart local p2    # "to":Ljava/io/File;
    .restart local p3    # "progress":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static final install$lambda$1(ZLandroid/content/Context;Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;
    .locals 4
    .param p0, "$bundled"    # Z
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "f"    # Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "neural-ru/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->INSTANCE:Lcom/alicegpt/textfollower/speech/NeuralModelStore;

    invoke-virtual {v0, p2}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->openRemote$app_debug(Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final installInto$lambda$4$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)Lkotlin/Unit;
    .locals 1
    .param p0, "$done"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "$total"    # F
    .param p2, "$lastReport"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p3, "$onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p4, "it"    # J

    .line 79
    invoke-static/range {p0 .. p5}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->installInto$report(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final installInto$report(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)V
    .locals 3
    .param p0, "done"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p1, "total"    # F
    .param p2, "lastReport"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p3, "$onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p4, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "F",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v0, p4

    long-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    .line 71
    .local v0, "p":F
    iget v1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v1, v0, v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 72
    iput v0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 73
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadMb()I
    .locals 1

    .line 18
    sget v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->downloadMb:I

    return v0
.end method

.method public final getFILES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->FILES:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1

    .line 17
    sget-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method

.method public install(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->modelDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "target":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->isBundled(Landroid/content/Context;)Z

    move-result v1

    .line 53
    .local v1, "bundled":Z
    sget-object v2, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->FILES:Ljava/util/List;

    new-instance v3, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {p0, v0, v2, p2, v3}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->installInto$app_debug(Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 56
    return-object v0
.end method

.method public final installInto$app_debug(Ljava/io/File;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1, "target"    # Ljava/io/File;
    .param p2, "files"    # Ljava/util/List;
    .param p3, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .param p4, "open"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;",
            "+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "target"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "open"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 66
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    .line 136
    nop

    .local v7, "it":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-sumOfLong-NeuralModelStore$installInto$total$1":I
    invoke-virtual {v7}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getSize()J

    move-result-wide v7

    .end local v7    # "it":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .end local v8    # "$i$a$-sumOfLong-NeuralModelStore$installInto$total$1":I
    add-long/2addr v5, v7

    goto :goto_0

    :cond_0
    long-to-float v5, v5

    .line 67
    .local v5, "total":F
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v6, v0

    .line 68
    .local v6, "done":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v7, v0

    .local v7, "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 76
    nop

    .line 77
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    .line 78
    .local v8, "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    new-instance v10, Ljava/io/File;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".part"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v10, "part":Ljava/io/File;
    invoke-interface {v4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v12, v11

    check-cast v12, Ljava/io/InputStream;

    .line 136
    .local v12, "input":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 79
    .local v13, "$i$a$-use-NeuralModelStore$installInto$1":I
    sget-object v14, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->INSTANCE:Lcom/alicegpt/textfollower/speech/NeuralModelStore;

    new-instance v15, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;

    invoke-direct {v15, v6, v5, v7, v3}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v14, v12, v10, v15}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->copy(Ljava/io/InputStream;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .end local v12    # "input":Ljava/io/InputStream;
    .end local v13    # "$i$a$-use-NeuralModelStore$installInto$1":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v11, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getSize()J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-nez v9, :cond_2

    .line 83
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 84
    iget-wide v11, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getSize()J

    move-result-wide v13

    add-long/2addr v11, v13

    iput-wide v11, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .end local v8    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .end local v10    # "part":Ljava/io/File;
    goto :goto_1

    .line 83
    .restart local v8    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .restart local v10    # "part":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "total":F
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "files":Ljava/util/List;
    .end local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .end local p4    # "open":Lkotlin/jvm/functions/Function1;
    throw v0

    .line 81
    .restart local v5    # "total":F
    .restart local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "files":Ljava/util/List;
    .restart local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "open":Lkotlin/jvm/functions/Function1;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getSize()J

    move-result-wide v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0424\u0430\u0439\u043b "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u043f\u043e\u043b\u0443\u0447\u0435\u043d \u043d\u0435 \u043f\u043e\u043b\u043d\u043e\u0441\u0442\u044c\u044e: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u0438\u0437 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u0431\u0430\u0439\u0442"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "total":F
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "files":Ljava/util/List;
    .end local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .end local p4    # "open":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    .restart local v5    # "total":F
    .restart local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "files":Ljava/util/List;
    .restart local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "open":Lkotlin/jvm/functions/Function1;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v5    # "total":F
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v8    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .end local v10    # "part":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "files":Ljava/util/List;
    .end local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .end local p4    # "open":Lkotlin/jvm/functions/Function1;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v5    # "total":F
    .restart local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .restart local v8    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .restart local v10    # "part":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "files":Ljava/util/List;
    .restart local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "open":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v5    # "total":F
    .end local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "files":Ljava/util/List;
    .end local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .end local p4    # "open":Lkotlin/jvm/functions/Function1;
    throw v9

    .line 86
    .end local v8    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .end local v10    # "part":Ljava/io/File;
    .restart local v5    # "total":F
    .restart local v6    # "done":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v7    # "lastReport":Lkotlin/jvm/internal/Ref$FloatRef;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "files":Ljava/util/List;
    .restart local p3    # "onProgress":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "open":Lkotlin/jvm/functions/Function1;
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, ".installed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "ok"

    const/4 v8, 0x2

    invoke-static {v0, v2, v9, v8, v9}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void

    .line 87
    :catchall_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 89
    throw v0
.end method

.method public isBundled(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "neural-ru"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 44
    .local v1, "present":Ljava/util/Set;
    :cond_1
    sget-object v2, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->FILES:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$f$all":I
    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v5

    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    .local v7, "it":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$a$-all-NeuralModelStore$isBundled$1":I
    invoke-virtual {v7}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v7    # "it":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    .end local v8    # "$i$a$-all-NeuralModelStore$isBundled$1":I
    if-nez v9, :cond_3

    goto :goto_0

    .line 135
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_4
    move v0, v5

    .end local v1    # "present":Ljava/util/Set;
    .end local v2    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$all":I
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 47
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->modelDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".installed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public modelDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "model/neural-ru-streaming-zipformer-small-2025-08-16"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final openRemote$app_debug(Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;
    .locals 6
    .param p1, "f"    # Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 97
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    nop

    .line 100
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;

    invoke-direct {v2, v0, v1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/InputStream;

    return-object v2

    .line 101
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043a\u0430\u0447\u0430\u0442\u044c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": HTTP "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local p1    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local p1    # "f":Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;
    :catchall_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    throw v1
.end method
