.class public abstract Lcom/alicegpt/textfollower/speech/StreamingEngine;
.super Ljava/lang/Object;
.source "StreamingEngine.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/SpeechEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/StreamingEngine$Companion;,
        Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;,
        Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008&\u0018\u0000 @2\u00020\u0001:\u0003>?@B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H$J\u0018\u00100\u001a\u0002012\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%H$J\u0008\u00103\u001a\u00020-H$J \u00104\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%H\u0016J\u0018\u00105\u001a\u00020-2\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%H\u0016J\u0008\u00107\u001a\u00020-H\u0016J\u0008\u00108\u001a\u00020-H\u0016J\u0018\u00109\u001a\u00020-2\u0006\u0010:\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u0010;\u001a\u00020-H\u0002J\u001e\u0010<\u001a\u00020-2\u0006\u0010:\u001a\u00020\u001d2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020-0\u0005H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0012\u0010)\u001a\u00020&X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006A"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/StreamingEngine;",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
        "listener",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
        "audioFactory",
        "Lkotlin/Function0;",
        "Lcom/alicegpt/textfollower/speech/AudioSource;",
        "clock",
        "",
        "nanoClock",
        "<init>",
        "(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "getListener",
        "()Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
        "main",
        "Landroid/os/Handler;",
        "getMain",
        "()Landroid/os/Handler;",
        "main$delegate",
        "Lkotlin/Lazy;",
        "gain",
        "Lcom/alicegpt/textfollower/speech/AutoGain;",
        "getGain",
        "()Lcom/alicegpt/textfollower/speech/AutoGain;",
        "lock",
        "",
        "modelLoaded",
        "",
        "session",
        "Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;",
        "lastSession",
        "thread",
        "Ljava/lang/Thread;",
        "pendingContext",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;",
        "initialContext",
        "",
        "",
        "isRunning",
        "()Z",
        "threadName",
        "getThreadName",
        "()Ljava/lang/String;",
        "loadModel",
        "",
        "modelDir",
        "Ljava/io/File;",
        "createDecoder",
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "context",
        "unloadModel",
        "start",
        "setContext",
        "words",
        "stop",
        "release",
        "loop",
        "s",
        "unload",
        "post",
        "block",
        "Session",
        "ContextRequest",
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
.field private static final Companion:Lcom/alicegpt/textfollower/speech/StreamingEngine$Companion;

.field public static final FORCE_CONTEXT_AFTER_MS:J = 0x4e20L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NANOS_PER_SECOND:J = 0x3b9aca00L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SLOW_CHUNKS:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOO_SLOW:Ljava/lang/String; = "\u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0443\u0441\u043f\u0435\u0432\u0430\u0435\u0442 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0442\u044c \u0437\u0432\u0443\u043a"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WARM_UP_CHUNKS:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final audioFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/alicegpt/textfollower/speech/AudioSource;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final gain:Lcom/alicegpt/textfollower/speech/AutoGain;

.field private volatile initialContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSession:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

.field private final listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

.field private final lock:Ljava/lang/Object;

.field private final main$delegate:Lkotlin/Lazy;

.field private modelLoaded:Z

.field private final nanoClock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$0Fcl4PaRcZlnBshCq_TiZ4H7T90()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->main_delegate$lambda$1()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$2p7vsZlwQi8joZQiJ7ZNCur5gcw(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$15(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3d_5ij5ABpoilrT0fv1TDdVmt-E(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$12(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CC8bcSx3SQ6ApRh8M8TsbIW0Gjc(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$6(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Doc_cYj88Dsy8Eca6AWL-Sj4NE4(Lcom/alicegpt/textfollower/speech/StreamingEngine;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$8(Lcom/alicegpt/textfollower/speech/StreamingEngine;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hjd2aMruw6yJSzV6JykRD1o0sJs(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$16(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TCgYdUA7fbC_qBuMccGCv5SbQvg(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$9(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_PuJQ4FxsUdBAsXjZ-L7AzMWbrE()Lcom/alicegpt/textfollower/speech/AudioInput;
    .locals 1

    invoke-static {}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->_init_$lambda$0()Lcom/alicegpt/textfollower/speech/AudioInput;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$_owFJpPlZ40oerA0R0yzC3RaVk0(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->start$lambda$2(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$agU34FLFEUU45ZGxNso-lgUAVWo(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$10(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dmU8UvKGzsWfWo0AM1n8LcN-iQs(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post$lambda$18(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKKbq5dNdVlNJJcYqGPMfCT4zQY(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$7(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nwBNjqiq5hRFpGXyg3u88Lx2tZw(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop$lambda$14$lambda$13(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->Companion:Lcom/alicegpt/textfollower/speech/StreamingEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "listener"    # Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;
    .param p2, "audioFactory"    # Lkotlin/jvm/functions/Function0;
    .param p3, "clock"    # Lkotlin/jvm/functions/Function0;
    .param p4, "nanoClock"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/alicegpt/textfollower/speech/AudioSource;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanoClock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    .line 28
    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->audioFactory:Lkotlin/jvm/functions/Function0;

    .line 29
    iput-object p3, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->clock:Lkotlin/jvm/functions/Function0;

    .line 30
    iput-object p4, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->nanoClock:Lkotlin/jvm/functions/Function0;

    .line 33
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->main$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/alicegpt/textfollower/speech/AutoGain;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/AutoGain;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->gain:Lcom/alicegpt/textfollower/speech/AutoGain;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->pendingContext:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 28
    new-instance p2, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda6;-><init>()V

    .line 26
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 29
    sget-object p3, Lcom/alicegpt/textfollower/speech/StreamingEngine$2;->INSTANCE:Lcom/alicegpt/textfollower/speech/StreamingEngine$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 26
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 30
    sget-object p4, Lcom/alicegpt/textfollower/speech/StreamingEngine$3;->INSTANCE:Lcom/alicegpt/textfollower/speech/StreamingEngine$3;

    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alicegpt/textfollower/speech/StreamingEngine;-><init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    return-void
.end method

.method private static final _init_$lambda$0()Lcom/alicegpt/textfollower/speech/AudioInput;
    .locals 1

    .line 28
    new-instance v0, Lcom/alicegpt/textfollower/speech/AudioInput;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/AudioInput;-><init>()V

    return-object v0
.end method

.method private final getMain()Landroid/os/Handler;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->main$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final loop(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V
    .locals 29
    .param p1, "s"    # Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .param p2, "modelDir"    # Ljava/io/File;

    .line 117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 118
    iget-object v0, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->audioFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alicegpt/textfollower/speech/AudioSource;

    .line 119
    .local v3, "input":Lcom/alicegpt/textfollower/speech/AudioSource;
    const/4 v4, 0x0

    .line 120
    .local v4, "decoder":Ljava/lang/Object;
    nop

    .line 121
    nop

    .line 122
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v7, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$a$-synchronized-StreamingEngine$loop$1":I
    :try_start_1
    iget-boolean v8, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->modelLoaded:Z

    if-nez v8, :cond_0

    .line 124
    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loadModel(Ljava/io/File;)V

    .line 125
    iput-boolean v6, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->modelLoaded:Z

    goto :goto_0

    .line 123
    :cond_0
    move-object/from16 v8, p2

    .line 127
    :goto_0
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 122
    :try_start_2
    monitor-exit v7

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getActive()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v0, :cond_2

    .line 199
    invoke-virtual {v2, v5}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    nop

    .line 205
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v5, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-StreamingEngine$loop$12":I
    :try_start_3
    invoke-virtual {v2, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_1
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    monitor-exit v5

    .line 128
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 129
    :cond_2
    :try_start_4
    iget-object v0, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->initialContext:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v4, v0

    .line 136
    :try_start_5
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->open()V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->getGain()Lcom/alicegpt/textfollower/speech/AutoGain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/speech/AutoGain;->reset()V

    .line 138
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda10;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 140
    const/16 v0, 0x640

    new-array v0, v0, [S

    move-object v7, v0

    .line 141
    .local v7, "buf":[S
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v9, v0

    .local v9, "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    const-string v0, ""

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 142
    const-wide/16 v10, 0x0

    .line 143
    .local v10, "lastLevelAt":J
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v12, v0

    .local v12, "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v0, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    iput-wide v13, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "chunks":I
    const/4 v13, 0x0

    .line 146
    .local v13, "slowStreak":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getActive()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 147
    invoke-interface {v3, v7}, Lcom/alicegpt/textfollower/speech/AudioSource;->read([S)I

    move-result v14

    .line 148
    .local v14, "n":I
    if-eqz v14, :cond_d

    .line 149
    iget-object v15, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->nanoClock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 151
    .local v15, "started":J
    invoke-virtual/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->getGain()Lcom/alicegpt/textfollower/speech/AutoGain;

    move-result-object v6

    invoke-virtual {v6, v7, v14}, Lcom/alicegpt/textfollower/speech/AutoGain;->process([SI)F

    move-result v6

    .line 152
    .local v6, "level":F
    iget-object v5, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 153
    .local v21, "now":J
    move-object v5, v9

    move-wide/from16 v8, v21

    .end local v9    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v21    # "now":J
    .local v5, "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "now":J
    sub-long v21, v8, v10

    const-wide/16 v19, 0x3c

    cmp-long v19, v21, v19

    if-ltz v19, :cond_3

    .line 154
    move-wide v10, v8

    .line 155
    move-wide/from16 v19, v10

    .end local v10    # "lastLevelAt":J
    .local v19, "lastLevelAt":J
    new-instance v10, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda11;

    invoke-direct {v10, v1, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda11;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;F)V

    invoke-direct {v1, v2, v10}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    move-wide/from16 v10, v19

    .line 158
    .end local v19    # "lastLevelAt":J
    .restart local v10    # "lastLevelAt":J
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v19, v4

    .line 159
    .local v19, "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    move-wide/from16 v20, v8

    move-object/from16 v8, v19

    .end local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .local v8, "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .local v20, "now":J
    invoke-interface {v8, v7, v14}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->accept([SI)Z

    move-result v9

    .line 161
    .local v9, "finished":Z
    move-object/from16 v19, v8

    move/from16 v22, v9

    .end local v8    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .end local v9    # "finished":Z
    .restart local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .local v22, "finished":Z
    int-to-long v8, v14

    const-wide/32 v23, 0x3b9aca00

    mul-long v8, v8, v23

    move-object/from16 v23, v7

    .end local v7    # "buf":[S
    .local v23, "buf":[S
    const/16 v7, 0x3e80

    move-wide/from16 v24, v10

    .end local v10    # "lastLevelAt":J
    .local v24, "lastLevelAt":J
    int-to-long v10, v7

    div-long/2addr v8, v10

    move-wide v7, v8

    .line 162
    .local v7, "budget":J
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "chunks":I
    .local v9, "chunks":I
    const/16 v0, 0x14

    if-le v9, v0, :cond_4

    iget-object v0, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->nanoClock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v15

    const/16 v0, 0xa

    move/from16 v26, v14

    move-wide/from16 v27, v15

    .end local v14    # "n":I
    .end local v15    # "started":J
    .local v26, "n":I
    .local v27, "started":J
    int-to-long v14, v0

    mul-long/2addr v10, v14

    const/16 v0, 0x9

    int-to-long v14, v0

    mul-long/2addr v14, v7

    cmp-long v0, v10, v14

    if-ltz v0, :cond_5

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v26    # "n":I
    .end local v27    # "started":J
    .restart local v14    # "n":I
    .restart local v15    # "started":J
    :cond_4
    move/from16 v26, v14

    move-wide/from16 v27, v15

    .end local v14    # "n":I
    .end local v15    # "started":J
    .restart local v26    # "n":I
    .restart local v27    # "started":J
    :cond_5
    const/4 v0, 0x0

    move v13, v0

    .line 163
    :goto_2
    const/16 v0, 0x28

    if-lt v13, v0, :cond_7

    .line 164
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda12;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda12;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 165
    nop

    .line 199
    .end local v5    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "level":F
    .end local v7    # "budget":J
    .end local v9    # "chunks":I
    .end local v12    # "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v13    # "slowStreak":I
    .end local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .end local v20    # "now":J
    .end local v22    # "finished":Z
    .end local v23    # "buf":[S
    .end local v24    # "lastLevelAt":J
    .end local v26    # "n":I
    .end local v27    # "started":J
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    :try_start_6
    invoke-interface {v4}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 203
    :catch_0
    move-exception v0

    .line 205
    :goto_3
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v10, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-StreamingEngine$loop$12":I
    const/4 v11, 0x1

    :try_start_7
    invoke-virtual {v2, v11}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_6
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    monitor-exit v10

    move-object v0, v5

    .local v0, "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    move v5, v6

    .local v5, "level":F
    move/from16 v6, v26

    .local v6, "n":I
    move-wide/from16 v10, v27

    .restart local v9    # "chunks":I
    .local v10, "started":J
    .restart local v12    # "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v13    # "slowStreak":I
    move-wide/from16 v14, v24

    .local v14, "lastLevelAt":J
    move-object/from16 v16, v23

    .local v16, "buf":[S
    move-wide/from16 v17, v20

    .local v17, "now":J
    move/from16 v20, v22

    .line 165
    .restart local v7    # "budget":J
    .restart local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .local v20, "finished":Z
    return-void

    .line 206
    .end local v0    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "level":F
    .end local v6    # "n":I
    .end local v7    # "budget":J
    .end local v9    # "chunks":I
    .end local v10    # "started":J
    .end local v12    # "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v13    # "slowStreak":I
    .end local v14    # "lastLevelAt":J
    .end local v16    # "buf":[S
    .end local v17    # "now":J
    .end local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .end local v20    # "finished":Z
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    .line 167
    .local v5, "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "level":F
    .restart local v7    # "budget":J
    .restart local v9    # "chunks":I
    .restart local v12    # "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v13    # "slowStreak":I
    .restart local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .local v20, "now":J
    .restart local v22    # "finished":Z
    .restart local v23    # "buf":[S
    .restart local v24    # "lastLevelAt":J
    .restart local v26    # "n":I
    .restart local v27    # "started":J
    :cond_7
    const/4 v0, 0x0

    if-eqz v22, :cond_a

    .line 168
    :try_start_8
    invoke-interface/range {v19 .. v19}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->finalText()Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "text":Ljava/lang/String;
    const-string v11, ""

    iput-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    move-wide/from16 v14, v20

    .end local v20    # "now":J
    .local v14, "now":J
    iput-wide v14, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 171
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    new-instance v11, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1, v10}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda1;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)V

    invoke-direct {v1, v2, v11}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 173
    :cond_8
    iget-object v11, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->pendingContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;

    if-eqz v0, :cond_9

    .local v0, "req":Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;
    const/4 v11, 0x0

    .line 174
    .local v11, "$i$a$-let-StreamingEngine$loop$7":I
    invoke-interface/range {v19 .. v19}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V

    .line 175
    move/from16 v16, v6

    .end local v6    # "level":F
    .local v16, "level":F
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;->getWords()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    move-result-object v6

    move-object v4, v6

    .line 176
    nop

    .line 173
    .end local v0    # "req":Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;
    .end local v11    # "$i$a$-let-StreamingEngine$loop$7":I
    move-object/from16 v8, p2

    move v0, v9

    move-object/from16 v7, v23

    move-wide/from16 v10, v24

    const/4 v6, 0x1

    move-object v9, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v16    # "level":F
    .restart local v6    # "level":F
    :cond_9
    move/from16 v16, v6

    .end local v6    # "level":F
    .end local v10    # "text":Ljava/lang/String;
    .restart local v16    # "level":F
    goto :goto_4

    .line 178
    .end local v14    # "now":J
    .end local v16    # "level":F
    .restart local v6    # "level":F
    .restart local v20    # "now":J
    :cond_a
    move/from16 v16, v6

    move-wide/from16 v14, v20

    .end local v6    # "level":F
    .end local v20    # "now":J
    .restart local v14    # "now":J
    .restart local v16    # "level":F
    invoke-interface/range {v19 .. v19}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->partialText()Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "partial":Ljava/lang/String;
    iget-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 180
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    new-instance v10, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda2;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)V

    invoke-direct {v1, v2, v10}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 184
    :cond_b
    iget-wide v10, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v10, v14, v10

    const-wide/16 v20, 0x4e20

    cmp-long v10, v10, v20

    if-lez v10, :cond_c

    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 185
    iget-object v10, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->pendingContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;

    if-eqz v0, :cond_c

    .restart local v0    # "req":Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;
    const/4 v10, 0x0

    .line 186
    .local v10, "$i$a$-let-StreamingEngine$loop$9":I
    const-string v11, ""

    iput-object v11, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 187
    iput-wide v14, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 188
    new-instance v11, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda3;

    invoke-direct {v11, v1, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda3;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)V

    invoke-direct {v1, v2, v11}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 189
    invoke-interface/range {v19 .. v19}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V

    .line 190
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;->getWords()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    move-result-object v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v4, v11

    .line 191
    nop

    .line 185
    .end local v0    # "req":Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;
    .end local v10    # "$i$a$-let-StreamingEngine$loop$9":I
    move-object/from16 v8, p2

    move v0, v9

    move-object/from16 v7, v23

    move-wide/from16 v10, v24

    const/4 v6, 0x1

    move-object v9, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 146
    .end local v6    # "partial":Ljava/lang/String;
    .end local v7    # "budget":J
    .end local v14    # "now":J
    .end local v16    # "level":F
    .end local v19    # "dec":Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .end local v22    # "finished":Z
    .end local v26    # "n":I
    .end local v27    # "started":J
    :cond_c
    :goto_4
    move-object/from16 v8, p2

    move v0, v9

    move-object/from16 v7, v23

    move-wide/from16 v10, v24

    const/4 v6, 0x1

    move-object v9, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 148
    .end local v5    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v23    # "buf":[S
    .end local v24    # "lastLevelAt":J
    .local v0, "chunks":I
    .local v7, "buf":[S
    .local v9, "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v10, "lastLevelAt":J
    .local v14, "n":I
    :cond_d
    move-object/from16 v23, v7

    move-object v5, v9

    move/from16 v26, v14

    .end local v7    # "buf":[S
    .end local v9    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "n":I
    .restart local v5    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v23    # "buf":[S
    .restart local v26    # "n":I
    move-object/from16 v8, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 146
    .end local v5    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v23    # "buf":[S
    .end local v26    # "n":I
    .restart local v7    # "buf":[S
    .restart local v9    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_e
    move-object/from16 v23, v7

    move-object v5, v9

    .line 199
    .end local v0    # "chunks":I
    .end local v7    # "buf":[S
    .end local v9    # "lastPartial":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v10    # "lastLevelAt":J
    .end local v12    # "utteranceStart":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v13    # "slowStreak":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    if-eqz v4, :cond_f

    :try_start_9
    invoke-interface {v4}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_5

    .line 203
    :catch_1
    move-exception v0

    .line 205
    :cond_f
    :goto_5
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v5, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-StreamingEngine$loop$12":I
    const/4 v6, 0x1

    :try_start_a
    invoke-virtual {v2, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_10
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_8

    .line 206
    :catchall_2
    move-exception v0

    monitor-exit v5

    throw v0

    .line 122
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v7

    .end local v3    # "input":Lcom/alicegpt/textfollower/speech/AudioSource;
    .end local v4    # "decoder":Ljava/lang/Object;
    .end local p1    # "s":Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .end local p2    # "modelDir":Ljava/io/File;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 130
    .restart local v3    # "input":Lcom/alicegpt/textfollower/speech/AudioSource;
    .restart local v4    # "decoder":Ljava/lang/Object;
    .restart local p1    # "s":Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .restart local p2    # "modelDir":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object v5, v0

    .line 132
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_11
    move-object v6, v0

    .line 133
    .local v6, "msg":Ljava/lang/String;
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda9;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 134
    nop

    .line 199
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v6    # "msg":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    :try_start_d
    move-object v0, v4

    check-cast v0, Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_6

    .line 203
    :catch_2
    move-exception v0

    .line 205
    :goto_6
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v7, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    .line 207
    .restart local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    const/4 v8, 0x1

    :try_start_e
    invoke-virtual {v2, v8}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_12
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 206
    monitor-exit v7

    move-object v0, v6

    .line 134
    .local v0, "msg":Ljava/lang/String;
    .restart local v5    # "e":Ljava/lang/Throwable;
    return-void

    .line 206
    .end local v0    # "msg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    monitor-exit v7

    throw v0

    .line 195
    :catchall_6
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "msg":Ljava/lang/String;
    :cond_13
    new-instance v6, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda8;

    invoke-direct {v6, v1, v5}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda8;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 199
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "msg":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    :try_start_10
    move-object v0, v4

    check-cast v0, Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_7

    .line 203
    :catch_3
    move-exception v0

    .line 205
    :cond_14
    :goto_7
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v5, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-synchronized-StreamingEngine$loop$12":I
    const/4 v6, 0x1

    :try_start_11
    invoke-virtual {v2, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_15
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 206
    :goto_8
    monitor-exit v5

    .line 210
    nop

    .line 211
    return-void

    .line 206
    :catchall_7
    move-exception v0

    monitor-exit v5

    throw v0

    .line 199
    :catchall_8
    move-exception v0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 200
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/AudioSource;->close()V

    .line 201
    nop

    .line 202
    :try_start_12
    move-object v0, v4

    check-cast v0, Lcom/alicegpt/textfollower/speech/SpeechDecoder;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechDecoder;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_9

    .line 203
    :catch_4
    move-exception v0

    .line 205
    :cond_16
    :goto_9
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;)V

    invoke-direct {v1, v2, v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    .line 206
    iget-object v6, v1, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    .line 207
    .restart local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    const/4 v7, 0x1

    :try_start_13
    invoke-virtual {v2, v7}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setFinished(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getUnloadRequested()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 209
    :cond_17
    nop

    .end local v0    # "$i$a$-synchronized-StreamingEngine$loop$12":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 206
    monitor-exit v6

    throw v5

    :catchall_9
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static final loop$lambda$10(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$text"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onFinal(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$12(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$partial"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onPartial(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$14$lambda$13(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$partial"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onFinal(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$15(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$msg"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onError(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$16(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;

    .line 205
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onListeningChanged(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$6(Lcom/alicegpt/textfollower/speech/StreamingEngine;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$msg"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onEngineFailure(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$7(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;

    .line 138
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onListeningChanged(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$8(Lcom/alicegpt/textfollower/speech/StreamingEngine;F)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$level"    # F

    .line 155
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-interface {v0, p1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onLevel(F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final loop$lambda$9(Lcom/alicegpt/textfollower/speech/StreamingEngine;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;

    .line 164
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const-string v1, "\u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0443\u0441\u043f\u0435\u0432\u0430\u0435\u0442 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0442\u044c \u0437\u0432\u0443\u043a"

    invoke-interface {v0, v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;->onEngineFailure(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final main_delegate$lambda$1()Landroid/os/Handler;
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final post(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "s"    # Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda5;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private static final post$lambda$18(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$s"    # Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .param p2, "$block"    # Lkotlin/jvm/functions/Function0;

    .line 224
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    .line 225
    .local v0, "current":Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 226
    :cond_1
    return-void
.end method

.method private static final start$lambda$2(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/speech/StreamingEngine;
    .param p1, "$s"    # Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    .param p2, "$modelDir"    # Ljava/io/File;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->loop(Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V

    return-void
.end method

.method private final unload()V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->modelLoaded:Z

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->modelLoaded:Z

    .line 217
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unloadModel()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createDecoder(Ljava/util/List;)Lcom/alicegpt/textfollower/speech/SpeechDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alicegpt/textfollower/speech/SpeechDecoder;"
        }
    .end annotation
.end method

.method public getGain()Lcom/alicegpt/textfollower/speech/AutoGain;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->gain:Lcom/alicegpt/textfollower/speech/AutoGain;

    return-object v0
.end method

.method protected final getListener()Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->listener:Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    return-object v0
.end method

.method protected abstract getThreadName()Ljava/lang/String;
.end method

.method public isRunning()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method protected abstract loadModel(Ljava/io/File;)V
.end method

.method public release()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->stop()V

    .line 109
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lastSession:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    .line 111
    .local v0, "s":Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 112
    .local v2, "$i$a$-synchronized-StreamingEngine$release$1":I
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->getFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setUnloadRequested(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->unload()V

    .line 113
    :goto_1
    nop

    .end local v2    # "$i$a$-synchronized-StreamingEngine$release$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v1

    .line 114
    return-void

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setContext(Ljava/util/List;)V
    .locals 2
    .param p1, "words"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->pendingContext:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;

    invoke-direct {v1, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$ContextRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public start(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .param p1, "modelDir"    # Ljava/io/File;
    .param p2, "context"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modelDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;-><init>()V

    .line 80
    .local v0, "s":Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    .line 81
    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->lastSession:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    .line 82
    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->initialContext:Ljava/util/List;

    .line 83
    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->pendingContext:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;-><init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    .local v1, "t":Ljava/lang/Thread;
    iput-object v1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->thread:Ljava/lang/Thread;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->setActive(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$a$-let-StreamingEngine$stop$1":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 97
    nop

    .line 98
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 102
    :cond_1
    :goto_0
    nop

    .line 95
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v1    # "$i$a$-let-StreamingEngine$stop$1":I
    nop

    .line 103
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->thread:Ljava/lang/Thread;

    .line 104
    iput-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine;->session:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    .line 105
    return-void
.end method

.method protected abstract unloadModel()V
.end method
