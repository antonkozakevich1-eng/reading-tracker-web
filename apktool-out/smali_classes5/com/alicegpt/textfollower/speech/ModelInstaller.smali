.class public final Lcom/alicegpt/textfollower/speech/ModelInstaller;
.super Ljava/lang/Object;
.source "ModelInstaller.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/ModelStore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelInstaller.kt\ncom/alicegpt/textfollower/speech/ModelInstaller\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J$\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cH\u0016J9\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00142\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cH\u0000\u00a2\u0006\u0002\u0008$R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/ModelInstaller;",
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
        "MODEL_NAME",
        "",
        "MODEL_URL",
        "ASSET",
        "MARKER",
        "DOWNLOAD_SIZE_FALLBACK",
        "",
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
        "unzip",
        "raw",
        "Ljava/io/InputStream;",
        "total",
        "root",
        "unzip$app_debug",
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
.field private static final ASSET:Ljava/lang/String; = "vosk-model-small-ru-0.22.zip"

.field private static final DOWNLOAD_SIZE_FALLBACK:J = 0x2c1844eL

.field public static final INSTANCE:Lcom/alicegpt/textfollower/speech/ModelInstaller;

.field private static final MARKER:Ljava/lang/String; = ".installed"

.field public static final MODEL_NAME:Ljava/lang/String; = "vosk-model-small-ru-0.22"

.field public static final MODEL_URL:Ljava/lang/String; = "https://alphacephei.com/vosk/models/vosk-model-small-ru-0.22.zip"

.field private static final downloadMb:I

.field private static final kind:Lcom/alicegpt/textfollower/speech/EngineKind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/ModelInstaller;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->INSTANCE:Lcom/alicegpt/textfollower/speech/ModelInstaller;

    .line 21
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    sput-object v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 22
    const/16 v0, 0x2e

    sput v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->downloadMb:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadMb()I
    .locals 1

    .line 22
    sget v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->downloadMb:I

    return v0
.end method

.method public getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1

    .line 21
    sget-object v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->kind:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method

.method public install(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Ljava/io/File;
    .locals 12
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

    .line 40
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->modelDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "target":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "model"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "vosk-model-small-ru-0.22"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->isBundled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "vosk-model-small-ru-0.22.zip"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/content/res/AssetFileDescriptor;

    .line 111
    .local v5, "it":Landroid/content/res/AssetFileDescriptor;
    const/4 v6, 0x0

    .line 49
    .local v6, "$i$a$-use-ModelInstaller$install$total$1":I
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v5    # "it":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "$i$a$-use-ModelInstaller$install$total$1":I
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-wide v6, v7

    .line 50
    .local v6, "total":J
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_1
    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;

    .line 111
    .local v5, "it":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 50
    .local v10, "$i$a$-use-ModelInstaller$install$1":I
    sget-object v4, Lcom/alicegpt/textfollower/speech/ModelInstaller;->INSTANCE:Lcom/alicegpt/textfollower/speech/ModelInstaller;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->unzip$app_debug(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function1;)V

    .end local v5    # "it":Ljava/io/InputStream;
    .end local v10    # "$i$a$-use-ModelInstaller$install$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    .end local v6    # "total":J
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v6    # "total":J
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 49
    .end local v6    # "total":J
    :catchall_2
    move-exception v3

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "root":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_3
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 52
    :cond_1
    new-instance v2, Ljava/net/URL;

    const-string v4, "https://alphacephei.com/vosk/models/vosk-model-small-ru-0.22.zip"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 53
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x4e20

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    const/16 v4, 0x7530

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    nop

    .line 56
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 59
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 111
    .local v5, "it":J
    const/4 v7, 0x0

    .line 59
    .local v7, "$i$a$-takeIf-ModelInstaller$install$total$2":I
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .end local v5    # "it":J
    .end local v7    # "$i$a$-takeIf-ModelInstaller$install$total$2":I
    :goto_0
    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/32 v4, 0x2c1844e

    :goto_2
    move-wide v6, v4

    .line 60
    .restart local v6    # "total":J
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/io/Closeable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    move-object v5, v10

    check-cast v5, Ljava/io/InputStream;

    .line 111
    .local v5, "it":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 60
    .local v11, "$i$a$-use-ModelInstaller$install$2":I
    sget-object v4, Lcom/alicegpt/textfollower/speech/ModelInstaller;->INSTANCE:Lcom/alicegpt/textfollower/speech/ModelInstaller;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->unzip$app_debug(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function1;)V

    .end local v5    # "it":Ljava/io/InputStream;
    .end local v11    # "$i$a$-use-ModelInstaller$install$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v10, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 62
    .end local v6    # "total":J
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 63
    nop

    .line 65
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :goto_3
    new-instance v2, Ljava/io/File;

    const-string v4, ".installed"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "ok"

    const/4 v5, 0x2

    invoke-static {v2, v4, v3, v5, v3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 66
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0

    .line 60
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "total":J
    :catchall_4
    move-exception v3

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "total":J
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "total":J
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_5
    move-exception v4

    :try_start_8
    invoke-static {v10, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    throw v4

    .line 57
    .end local v6    # "total":J
    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043a\u0430\u0447\u0430\u0442\u044c \u043c\u043e\u0434\u0435\u043b\u044c: HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "target":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 62
    .restart local v0    # "target":Ljava/io/File;
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_6
    move-exception v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
.end method

.method public isBundled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "vosk-model-small-ru-0.22.zip"

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/speech/ModelInstaller;->modelDir(Landroid/content/Context;)Ljava/io/File;

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

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "model/vosk-model-small-ru-0.22"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final unzip$app_debug(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 19
    .param p1, "raw"    # Ljava/io/InputStream;
    .param p2, "total"    # J
    .param p4, "root"    # Ljava/io/File;
    .param p5, "onProgress"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v0, "raw"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v4, v0

    .line 73
    .local v4, "read":Lkotlin/jvm/internal/Ref$LongRef;
    const/4 v0, 0x0

    .local v0, "lastReport":F
    const/high16 v5, -0x40800000    # -1.0f

    .line 74
    .end local v0    # "lastReport":F
    .local v5, "lastReport":F
    new-instance v0, Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;

    invoke-direct {v0, v1, v4}, Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;-><init>(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v6, v0

    .line 81
    .local v6, "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "rootPath":Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipInputStream;

    move-object v8, v6

    check-cast v8, Ljava/io/InputStream;

    instance-of v9, v8, Ljava/io/BufferedInputStream;

    if-eqz v9, :cond_0

    check-cast v8, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v10, 0x2000

    invoke-direct {v9, v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v8, v9

    :goto_0
    check-cast v8, Ljava/io/InputStream;

    invoke-direct {v0, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v8

    check-cast v0, Ljava/util/zip/ZipInputStream;

    move-object v9, v0

    .local v9, "zip":Ljava/util/zip/ZipInputStream;
    const/4 v10, 0x0

    .line 83
    .local v10, "$i$a$-use-ModelInstaller$unzip$1":I
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    move-object v11, v0

    .line 84
    .local v11, "buf":[B
    :goto_1
    nop

    .line 85
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v12, 0x0

    if-nez v0, :cond_1

    .line 107
    nop

    .end local v9    # "zip":Ljava/util/zip/ZipInputStream;
    .end local v10    # "$i$a$-use-ModelInstaller$unzip$1":I
    .end local v11    # "buf":[B
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {v8, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    return-void

    .line 82
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    goto/16 :goto_5

    .line 85
    .restart local v9    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "$i$a$-use-ModelInstaller$unzip$1":I
    .restart local v11    # "buf":[B
    :cond_1
    move-object v13, v0

    .line 86
    .local v13, "entry":Ljava/util/zip/ZipEntry;
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 88
    .local v14, "out":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v15, "getCanonicalPath(...)"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v7, v1, v15, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v0, :cond_2

    .line 90
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 92
    :cond_2
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    :cond_3
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    check-cast v15, Ljava/io/Closeable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    move-object v0, v15

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 94
    .local v16, "$i$a$-use-ModelInstaller$unzip$1$2":I
    :goto_2
    nop

    .line 95
    invoke-virtual {v9, v11}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v18, v17

    .line 96
    .local v18, "n":I
    move/from16 v12, v18

    .end local v18    # "n":I
    .local v12, "n":I
    if-ltz v12, :cond_4

    .line 97
    :try_start_8
    invoke-virtual {v0, v11, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v12, 0x0

    .end local v12    # "n":I
    goto :goto_2

    .line 93
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "$i$a$-use-ModelInstaller$unzip$1$2":I
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    goto :goto_4

    .line 99
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "$i$a$-use-ModelInstaller$unzip$1$2":I
    :cond_4
    nop

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "$i$a$-use-ModelInstaller$unzip$1$2":I
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 93
    const/4 v0, 0x0

    :try_start_a
    invoke-static {v15, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 101
    :goto_3
    iget-wide v0, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    long-to-float v0, v0

    const-wide/16 v1, 0x1

    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    .end local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v7    # "rootPath":Ljava/lang/String;
    .local v12, "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .local v16, "rootPath":Ljava/lang/String;
    :try_start_b
    invoke-static {v6, v7, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    .line 102
    .local v0, "p":F
    sub-float v1, v0, v5

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 103
    move v5, v0

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v6, v12

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 102
    :cond_5
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v6, v12

    move-object/from16 v7, v16

    goto/16 :goto_1

    .line 93
    .end local v0    # "p":F
    .end local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v16    # "rootPath":Ljava/lang/String;
    .restart local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v7    # "rootPath":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    move-object v1, v0

    .end local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "lastReport":F
    .end local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v7    # "rootPath":Ljava/lang/String;
    .end local v9    # "zip":Ljava/util/zip/ZipInputStream;
    .end local v10    # "$i$a$-use-ModelInstaller$unzip$1":I
    .end local v11    # "buf":[B
    .end local v13    # "entry":Ljava/util/zip/ZipEntry;
    .end local v14    # "out":Ljava/io/File;
    .end local p1    # "raw":Ljava/io/InputStream;
    .end local p2    # "total":J
    .end local p4    # "root":Ljava/io/File;
    .end local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :goto_4
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .restart local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "lastReport":F
    .restart local v9    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "$i$a$-use-ModelInstaller$unzip$1":I
    .restart local v11    # "buf":[B
    .restart local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v13    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "out":Ljava/io/File;
    .restart local v16    # "rootPath":Ljava/lang/String;
    .restart local p1    # "raw":Ljava/io/InputStream;
    .restart local p2    # "total":J
    .restart local p4    # "root":Ljava/io/File;
    .restart local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "lastReport":F
    .end local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v16    # "rootPath":Ljava/lang/String;
    .end local p1    # "raw":Ljava/io/InputStream;
    .end local p2    # "total":J
    .end local p4    # "root":Ljava/io/File;
    .end local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    throw v2

    .line 111
    .restart local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "lastReport":F
    .restart local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v7    # "rootPath":Ljava/lang/String;
    .restart local p1    # "raw":Ljava/io/InputStream;
    .restart local p2    # "total":J
    .restart local p4    # "root":Ljava/io/File;
    .restart local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :cond_6
    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    .end local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v7    # "rootPath":Ljava/lang/String;
    .restart local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v16    # "rootPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 88
    .local v0, "$i$a$-require-ModelInstaller$unzip$1$1":I
    const-string v1, "\u041d\u0435\u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u044b\u0439 \u043f\u0443\u0442\u044c \u0432 \u0430\u0440\u0445\u0438\u0432\u0435"

    .end local v0    # "$i$a$-require-ModelInstaller$unzip$1$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "lastReport":F
    .end local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v16    # "rootPath":Ljava/lang/String;
    .end local p1    # "raw":Ljava/io/InputStream;
    .end local p2    # "total":J
    .end local p4    # "root":Ljava/io/File;
    .end local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 82
    .end local v9    # "zip":Ljava/util/zip/ZipInputStream;
    .end local v10    # "$i$a$-use-ModelInstaller$unzip$1":I
    .end local v11    # "buf":[B
    .end local v13    # "entry":Ljava/util/zip/ZipEntry;
    .end local v14    # "out":Ljava/io/File;
    .restart local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "lastReport":F
    .restart local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v16    # "rootPath":Ljava/lang/String;
    .restart local p1    # "raw":Ljava/io/InputStream;
    .restart local p2    # "total":J
    .restart local p4    # "root":Ljava/io/File;
    .restart local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .end local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v16    # "rootPath":Ljava/lang/String;
    .restart local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v7    # "rootPath":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v12, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, p2

    move-object v1, v0

    .end local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v5    # "lastReport":F
    .end local v6    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .end local v7    # "rootPath":Ljava/lang/String;
    .end local p1    # "raw":Ljava/io/InputStream;
    .end local p2    # "total":J
    .end local p4    # "root":Ljava/io/File;
    .end local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :goto_5
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .restart local v4    # "read":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v5    # "lastReport":F
    .restart local v12    # "counting":Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
    .restart local v16    # "rootPath":Ljava/lang/String;
    .restart local p1    # "raw":Ljava/io/InputStream;
    .restart local p2    # "total":J
    .restart local p4    # "root":Ljava/io/File;
    .restart local p5    # "onProgress":Lkotlin/jvm/functions/Function1;
    :catchall_6
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
