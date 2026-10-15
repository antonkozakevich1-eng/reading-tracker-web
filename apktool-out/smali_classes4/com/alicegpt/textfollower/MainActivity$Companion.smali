.class public final Lcom/alicegpt/textfollower/MainActivity$Companion;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R6\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR0\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0003\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020 X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001eX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0017X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/MainActivity$Companion;",
        "",
        "<init>",
        "()V",
        "engineFactory",
        "Lkotlin/Function2;",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
        "getEngineFactory$annotations",
        "getEngineFactory",
        "()Lkotlin/jvm/functions/Function2;",
        "setEngineFactory",
        "(Lkotlin/jvm/functions/Function2;)V",
        "storeFactory",
        "Lkotlin/Function1;",
        "Lcom/alicegpt/textfollower/speech/ModelStore;",
        "getStoreFactory$annotations",
        "getStoreFactory",
        "()Lkotlin/jvm/functions/Function1;",
        "setStoreFactory",
        "(Lkotlin/jvm/functions/Function1;)V",
        "modelRetryDelayMs",
        "",
        "getModelRetryDelayMs$annotations",
        "getModelRetryDelayMs",
        "()J",
        "setModelRetryDelayMs",
        "(J)V",
        "MODEL_ATTEMPTS",
        "",
        "ASSET_TEXT",
        "",
        "CUSTOM_FILE",
        "REQ_AUDIO",
        "REQ_OPEN_FILE",
        "MAX_FILE_BYTES",
        "HEARD_CHARS",
        "SEARCH_SHOWN_AFTER_MS",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getEngineFactory$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getModelRetryDelayMs$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getStoreFactory$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getEngineFactory()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
            ">;"
        }
    .end annotation

    .line 807
    invoke-static {}, Lcom/alicegpt/textfollower/MainActivity;->access$getEngineFactory$cp()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public final getModelRetryDelayMs()J
    .locals 2

    .line 817
    invoke-static {}, Lcom/alicegpt/textfollower/MainActivity;->access$getModelRetryDelayMs$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStoreFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "Lcom/alicegpt/textfollower/speech/ModelStore;",
            ">;"
        }
    .end annotation

    .line 813
    invoke-static {}, Lcom/alicegpt/textfollower/MainActivity;->access$getStoreFactory$cp()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final setEngineFactory(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "-",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "+",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    invoke-static {p1}, Lcom/alicegpt/textfollower/MainActivity;->access$setEngineFactory$cp(Lkotlin/jvm/functions/Function2;)V

    .line 810
    return-void
.end method

.method public final setModelRetryDelayMs(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 817
    invoke-static {p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->access$setModelRetryDelayMs$cp(J)V

    .line 818
    return-void
.end method

.method public final setStoreFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "+",
            "Lcom/alicegpt/textfollower/speech/ModelStore;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    invoke-static {p1}, Lcom/alicegpt/textfollower/MainActivity;->access$setStoreFactory$cp(Lkotlin/jvm/functions/Function1;)V

    .line 814
    return-void
.end method
