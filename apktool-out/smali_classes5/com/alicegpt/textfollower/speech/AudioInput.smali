.class public final Lcom/alicegpt/textfollower/speech/AudioInput;
.super Ljava/lang/Object;
.source "AudioInput.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/AudioSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/AudioInput$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioInput.kt\ncom/alicegpt/textfollower/speech/AudioInput\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1863#2,2:91\n*S KotlinDebug\n*F\n+ 1 AudioInput.kt\ncom/alicegpt/textfollower/speech/AudioInput\n*L\n77#1:91,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0017\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0017J \u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000bH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/AudioInput;",
        "Lcom/alicegpt/textfollower/speech/AudioSource;",
        "<init>",
        "()V",
        "record",
        "Landroid/media/AudioRecord;",
        "effects",
        "Ljava/util/ArrayList;",
        "Landroid/media/audiofx/AudioEffect;",
        "Lkotlin/collections/ArrayList;",
        "open",
        "",
        "addEffect",
        "enabled",
        "",
        "create",
        "Lkotlin/Function0;",
        "read",
        "",
        "buf",
        "",
        "close",
        "Companion",
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
.field public static final CHUNK_SAMPLES:I = 0x640

.field public static final Companion:Lcom/alicegpt/textfollower/speech/AudioInput$Companion;

.field public static final SAMPLE_RATE:I = 0x3e80


# instance fields
.field private final effects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiofx/AudioEffect;",
            ">;"
        }
    .end annotation
.end field

.field private record:Landroid/media/AudioRecord;


# direct methods
.method public static synthetic $r8$lambda$aTBQ_wot8EpYMM9o7_5UWNSq6nE(I)Landroid/media/audiofx/AudioEffect;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/AudioInput;->open$lambda$2(I)Landroid/media/audiofx/AudioEffect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kP9OfgzpQNfU9igK8GevHppuO28(I)Landroid/media/audiofx/AudioEffect;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/AudioInput;->open$lambda$1(I)Landroid/media/audiofx/AudioEffect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qGrMfsq3mxNyffkALfTPoKpPlnI(I)Landroid/media/audiofx/AudioEffect;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/AudioInput;->open$lambda$0(I)Landroid/media/audiofx/AudioEffect;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/speech/AudioInput$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/AudioInput$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/AudioInput;->Companion:Lcom/alicegpt/textfollower/speech/AudioInput$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->effects:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private final addEffect(ZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "create"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/media/audiofx/AudioEffect;",
            ">;)V"
        }
    .end annotation

    .line 57
    nop

    .line 58
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/media/audiofx/AudioEffect;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-let-AudioInput$addEffect$1":I
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 60
    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->effects:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    nop

    .line 58
    .end local v0    # "it":Landroid/media/audiofx/AudioEffect;
    .end local v1    # "$i$a$-let-AudioInput$addEffect$1":I
    :cond_0
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 64
    :goto_0
    return-void
.end method

.method private static final open$lambda$0(I)Landroid/media/audiofx/AudioEffect;
    .locals 1
    .param p0, "$session"    # I

    .line 48
    invoke-static {p0}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    return-object v0
.end method

.method private static final open$lambda$1(I)Landroid/media/audiofx/AudioEffect;
    .locals 1
    .param p0, "$session"    # I

    .line 49
    invoke-static {p0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    return-object v0
.end method

.method private static final open$lambda$2(I)Landroid/media/audiofx/AudioEffect;
    .locals 1
    .param p0, "$session"    # I

    .line 51
    invoke-static {p0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 73
    nop

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->record:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->effects:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/media/audiofx/AudioEffect;

    .local v4, "it":Landroid/media/audiofx/AudioEffect;
    const/4 v5, 0x0

    .line 77
    .local v5, "$i$a$-forEach-AudioInput$close$1":I
    :try_start_1
    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 91
    .end local v4    # "it":Landroid/media/audiofx/AudioEffect;
    .end local v5    # "$i$a$-forEach-AudioInput$close$1":I
    :goto_2
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 92
    :cond_1
    nop

    .line 78
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->record:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 80
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->record:Landroid/media/AudioRecord;

    .line 81
    return-void
.end method

.method public open()V
    .locals 9

    .line 34
    const/16 v0, 0x10

    const/4 v1, 0x2

    const/16 v2, 0x3e80

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 35
    .local v0, "minBuf":I
    if-lez v0, :cond_4

    .line 37
    mul-int/lit8 v1, v0, 0x4

    const/16 v2, 0x7d00

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    .local v1, "bufBytes":I
    new-instance v2, Landroid/media/AudioRecord;

    .line 39
    nop

    .line 40
    nop

    .line 38
    const/4 v4, 0x6

    const/16 v5, 0x3e80

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v2

    move v8, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 42
    .local v2, "r":Landroid/media/AudioRecord;
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 46
    iput-object v2, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->record:Landroid/media/AudioRecord;

    .line 47
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    .line 48
    .local v3, "session":I
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v4, v5}, Lcom/alicegpt/textfollower/speech/AudioInput;->addEffect(ZLkotlin/jvm/functions/Function0;)V

    .line 49
    :cond_0
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v4, v5}, Lcom/alicegpt/textfollower/speech/AudioInput;->addEffect(ZLkotlin/jvm/functions/Function0;)V

    .line 51
    :cond_1
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/alicegpt/textfollower/speech/AudioInput$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/alicegpt/textfollower/speech/AudioInput;->addEffect(ZLkotlin/jvm/functions/Function0;)V

    .line 52
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 53
    return-void

    .line 43
    .end local v3    # "session":I
    :cond_3
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 35
    .end local v1    # "bufBytes":I
    .end local v2    # "r":Landroid/media/AudioRecord;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([S)I
    .locals 4
    .param p1, "buf"    # [S

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/AudioInput;->record:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 68
    .local v0, "n":I
    :goto_0
    if-ltz v0, :cond_1

    .line 69
    return v0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0447\u0442\u0435\u043d\u0438\u044f \u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u0430 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
