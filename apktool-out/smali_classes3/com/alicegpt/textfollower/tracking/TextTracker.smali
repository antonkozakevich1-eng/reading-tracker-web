.class public final Lcom/alicegpt/textfollower/tracking/TextTracker;
.super Ljava/lang/Object;
.source "TextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;,
        Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;,
        Lcom/alicegpt/textfollower/tracking/TextTracker$Companion;,
        Lcom/alicegpt/textfollower/tracking/TextTracker$Move;,
        Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextTracker.kt\ncom/alicegpt/textfollower/tracking/TextTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,544:1\n1#2:545\n6581#3:546\n6506#3:547\n381#4,7:548\n381#4,7:557\n37#5,2:555\n*S KotlinDebug\n*F\n+ 1 TextTracker.kt\ncom/alicegpt/textfollower/tracking/TextTracker\n*L\n458#1:546\n460#1:547\n165#1:548,7\n173#1:557,7\n170#1:555,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0013\n\u0002\u0008\u000b\u0018\u0000 i2\u00020\u0001:\u0005efghiB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0008\u0010!\u001a\u00020\u000bH\u0002J\u0018\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u0015H\u0002J\u0010\u0010A\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020\u000eH\u0002J\u0006\u0010B\u001a\u00020\u001cJ\u0010\u0010H\u001a\u00020D2\u0006\u0010I\u001a\u00020\u000bH\u0002J\u000e\u0010J\u001a\u00020\u001c2\u0006\u0010K\u001a\u00020\u000bJ\u0010\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020\u000eJ\u0010\u0010O\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020\u000eJ\u001a\u0010P\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020\u0015H\u0002J \u0010R\u001a\u00020\u001c2\u0006\u0010S\u001a\u00020\u000b2\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010T\u001a\u00020\u0015H\u0002J\u0018\u0010U\u001a\u00020\"2\u0006\u0010V\u001a\u00020D2\u0006\u0010W\u001a\u00020\u000bH\u0002J\u001e\u0010X\u001a\u00020D2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u000e0F2\u0006\u0010Z\u001a\u00020\u0015H\u0002J \u0010[\u001a\u00020D2\u0006\u0010V\u001a\u00020D2\u0006\u0010?\u001a\u00020\u000e2\u0006\u0010\\\u001a\u00020\u0015H\u0002J(\u0010]\u001a\u00020\"2\u0006\u0010V\u001a\u00020D2\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020\u000bH\u0002J\u0010\u0010b\u001a\u00020\u000b2\u0006\u0010V\u001a\u00020DH\u0002J\u0017\u0010c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010V\u001a\u00020DH\u0002\u00a2\u0006\u0002\u0010dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001d\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\"@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010&\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0018R\u001e\u0010(\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R7\u0010+\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020-0,j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020-`.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u0008/\u00100R!\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00102\u001a\u0004\u00084\u00105RW\u00107\u001a>\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e08j\u0008\u0012\u0004\u0012\u00020\u000e`90,j\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e08j\u0008\u0012\u0004\u0012\u00020\u000e`9`.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u00102\u001a\u0004\u0008:\u00100R*\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020=0,j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020=`.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u000e0FX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010G\u001a\u0012\u0012\u0004\u0012\u00020D08j\u0008\u0012\u0004\u0012\u00020D`9X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006j"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/TextTracker;",
        "",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "baseConfig",
        "Lcom/alicegpt/textfollower/tracking/TrackerConfig;",
        "<init>",
        "(Lcom/alicegpt/textfollower/text/Doc;Lcom/alicegpt/textfollower/tracking/TrackerConfig;)V",
        "getDoc",
        "()Lcom/alicegpt/textfollower/text/Doc;",
        "n",
        "",
        "norm",
        "",
        "",
        "[Ljava/lang/String;",
        "matcher",
        "Lcom/alicegpt/textfollower/tracking/WordMatcher;",
        "searchConfig",
        "cfg",
        "value",
        "",
        "searchMode",
        "getSearchMode",
        "()Z",
        "setSearchMode",
        "(Z)V",
        "stopSearching",
        "",
        "wordsSinceMove",
        "phraseWords",
        "phraseAtMove",
        "resetLostCounters",
        "unconfirmedWords",
        "",
        "confidence",
        "getConfidence",
        "()D",
        "locked",
        "getLocked",
        "position",
        "getPosition",
        "()I",
        "posOf",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getPosOf",
        "()Ljava/util/HashMap;",
        "posOf$delegate",
        "Lkotlin/Lazy;",
        "vocab",
        "getVocab",
        "()[Ljava/lang/String;",
        "vocab$delegate",
        "bucket",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getBucket",
        "bucket$delegate",
        "similarCache",
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;",
        "similar",
        "r",
        "prefix",
        "lowerBound",
        "warmUp",
        "committed",
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;",
        "cacheWords",
        "",
        "cacheBeams",
        "single",
        "at",
        "seek",
        "index",
        "onPartial",
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Move;",
        "text",
        "onFinal",
        "process",
        "isFinal",
        "trackLost",
        "count",
        "moved",
        "readingMassNear",
        "beam",
        "pos",
        "statesFor",
        "words",
        "partial",
        "step",
        "lastPartial",
        "rangeSum",
        "cum",
        "",
        "lo",
        "hi",
        "bestState",
        "decide",
        "(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;)Ljava/lang/Integer;",
        "Move",
        "Similar",
        "Beam",
        "Cell",
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
.field private static final Companion:Lcom/alicegpt/textfollower/tracking/TextTracker$Companion;

.field public static final FAR_DELTA:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREFIX_SIM:D = 0.6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIMILAR_CACHE_MAX:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

.field private final bucket$delegate:Lkotlin/Lazy;

.field private final cacheBeams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;",
            ">;"
        }
    .end annotation
.end field

.field private cacheWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

.field private committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

.field private confidence:D

.field private final doc:Lcom/alicegpt/textfollower/text/Doc;

.field private final matcher:Lcom/alicegpt/textfollower/tracking/WordMatcher;

.field private final n:I

.field private final norm:[Ljava/lang/String;

.field private phraseAtMove:I

.field private phraseWords:I

.field private final posOf$delegate:Lkotlin/Lazy;

.field private position:I

.field private final searchConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

.field private searchMode:Z

.field private final similarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;",
            ">;"
        }
    .end annotation
.end field

.field private final vocab$delegate:Lkotlin/Lazy;

.field private wordsSinceMove:I


# direct methods
.method public static synthetic $r8$lambda$7PpdssCUMt18MIyCFj8oXlVw1Xc(Lcom/alicegpt/textfollower/tracking/TextTracker;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->vocab_delegate$lambda$2(Lcom/alicegpt/textfollower/tracking/TextTracker;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$acrniE5yk4qmqOVDk1me_f3RygA(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->bucket_delegate$lambda$4(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wZeBqCa4eIlAzzas62DFO-iVfJw(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->posOf_delegate$lambda$1(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->Companion:Lcom/alicegpt/textfollower/tracking/TextTracker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/alicegpt/textfollower/text/Doc;Lcom/alicegpt/textfollower/tracking/TrackerConfig;)V
    .locals 4
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "baseConfig"    # Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->doc:Lcom/alicegpt/textfollower/text/Doc;

    iput-object p2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    .line 112
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->doc:Lcom/alicegpt/textfollower/text/Doc;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v0

    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    .line 113
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->doc:Lcom/alicegpt/textfollower/text/Doc;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getNorm()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->norm:[Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/alicegpt/textfollower/tracking/WordMatcher;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/tracking/WordMatcher;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->matcher:Lcom/alicegpt/textfollower/tracking/WordMatcher;

    .line 115
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searching()Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    .line 116
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    .line 151
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getSeekOn()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->confidence:D

    .line 163
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda0;-><init>(Lcom/alicegpt/textfollower/tracking/TextTracker;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->posOf$delegate:Lkotlin/Lazy;

    .line 170
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda1;-><init>(Lcom/alicegpt/textfollower/tracking/TextTracker;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->vocab$delegate:Lkotlin/Lazy;

    .line 171
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/alicegpt/textfollower/tracking/TextTracker$$ExternalSyntheticLambda2;-><init>(Lcom/alicegpt/textfollower/tracking/TextTracker;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->bucket$delegate:Lkotlin/Lazy;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->similarCache:Ljava/util/HashMap;

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->single(I)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 255
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    move-object v1, v0

    .local v1, "it":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 256
    .local v2, "$i$a$-also-TextTracker$cacheBeams$1":I
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "it":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-also-TextTracker$cacheBeams$1":I
    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/text/Doc;Lcom/alicegpt/textfollower/tracking/TrackerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 102
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->Companion:Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

    invoke-virtual {p2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;->getNEURAL()Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/tracking/TextTracker;-><init>(Lcom/alicegpt/textfollower/text/Doc;Lcom/alicegpt/textfollower/tracking/TrackerConfig;)V

    return-void
.end method

.method private final bestState(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;)I
    .locals 8
    .param p1, "beam"    # Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "best":I
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 496
    .local v1, "bestMass":D
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 497
    invoke-virtual {p1, v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->mass(I)D

    move-result-wide v5

    .line 498
    .local v5, "m":D
    cmpl-double v7, v5, v1

    if-lez v7, :cond_0

    .line 499
    move-wide v1, v5

    .line 500
    move v0, v3

    .line 496
    .end local v5    # "m":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getPos()[I

    move-result-object v3

    aget v3, v3, v0

    return v3
.end method

.method private static final bucket_delegate$lambda$4(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;
    .locals 11
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "b":Ljava/util/HashMap;
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .local v4, "w":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .local v5, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v6, 0x3

    invoke-static {v4, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .local v6, "key$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 557
    .local v7, "$i$f$getOrPut":I
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 558
    .local v8, "value$iv":Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 559
    const/4 v9, 0x0

    .line 173
    .local v9, "$i$a$-getOrPut-TextTracker$bucket$2$1":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .end local v9    # "$i$a$-getOrPut-TextTracker$bucket$2$1":I
    move-object v9, v10

    .line 560
    .local v9, "answer$iv":Ljava/lang/Object;
    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    nop

    .end local v9    # "answer$iv":Ljava/lang/Object;
    goto :goto_1

    .line 563
    :cond_0
    move-object v9, v8

    .line 558
    :goto_1
    nop

    .end local v5    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v6    # "key$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$getOrPut":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    check-cast v9, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "w":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return-object v0
.end method

.method private final decide(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;)Ljava/lang/Integer;
    .locals 17
    .param p1, "beam"    # Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 509
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->bestState(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;)I

    move-result v2

    .line 510
    .local v2, "s":I
    invoke-virtual {v1, v2}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->indexOf(I)I

    move-result v4

    .line 511
    .local v4, "i":I
    const-wide/16 v5, 0x0

    .local v5, "local":D
    invoke-virtual {v1, v4}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->mass(I)D

    move-result-wide v5

    .line 512
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->indexOf(I)I

    move-result v7

    .line 545
    .local v7, "it":I
    const/4 v8, 0x0

    .line 512
    .local v8, "$i$a$-let-TextTracker$decide$1":I
    if-ltz v7, :cond_1

    invoke-virtual {v1, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->mass(I)D

    move-result-wide v9

    add-double/2addr v5, v9

    .line 513
    .end local v7    # "it":I
    .end local v8    # "$i$a$-let-TextTracker$decide$1":I
    :cond_1
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->indexOf(I)I

    move-result v7

    .line 545
    .restart local v7    # "it":I
    const/4 v8, 0x0

    .line 513
    .local v8, "$i$a$-let-TextTracker$decide$2":I
    if-ltz v7, :cond_2

    invoke-virtual {v1, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->mass(I)D

    move-result-wide v9

    add-double/2addr v5, v9

    .line 514
    .end local v7    # "it":I
    .end local v8    # "$i$a$-let-TextTracker$decide$2":I
    :cond_2
    iget v7, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    sub-int v7, v2, v7

    .line 515
    .local v7, "d":I
    if-nez v7, :cond_3

    return-object v3

    .line 516
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getHist()[I

    move-result-object v8

    aget v8, v8, v4

    .line 517
    .local v8, "hist":I
    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_4

    return-object v3

    .line 518
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->bitCount(I)I

    move-result v9

    .line 519
    .local v9, "matched":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 521
    .local v10, "ad":I
    const/4 v11, 0x0

    .line 522
    .local v11, "needMatched":I
    const-wide/16 v12, 0x0

    .line 523
    .local v12, "needMass":D
    nop

    .line 524
    const/4 v14, 0x3

    const/4 v15, 0x1

    if-gt v15, v7, :cond_5

    if-ge v7, v14, :cond_5

    move/from16 v16, v15

    goto :goto_0

    :cond_5
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_6

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedNear()I

    move-result v11

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getTauMove()D

    move-result-wide v12

    goto :goto_2

    .line 525
    :cond_6
    if-gt v14, v7, :cond_7

    const/16 v14, 0xb

    if-ge v7, v14, :cond_7

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_8

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedMid()I

    move-result v11

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getTauMid()D

    move-result-wide v12

    goto :goto_2

    .line 526
    :cond_8
    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getFarAfter()I

    move-result v14

    if-gt v10, v14, :cond_9

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedFar()I

    move-result v11

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getTauMid()D

    move-result-wide v12

    goto :goto_2

    .line 527
    :cond_9
    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getHugeAfter()I

    move-result v14

    if-gt v10, v14, :cond_a

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedJump()I

    move-result v11

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getTauFar()D

    move-result-wide v12

    goto :goto_2

    .line 528
    :cond_a
    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedHuge()I

    move-result v11

    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getTauFar()D

    move-result-wide v12

    .line 530
    :goto_2
    if-gez v7, :cond_c

    .line 531
    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getJitter()I

    move-result v14

    if-gt v10, v14, :cond_b

    return-object v3

    .line 532
    :cond_b
    iget-object v14, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v14}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getNeedFar()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 534
    :cond_c
    if-lt v9, v11, :cond_e

    cmpg-double v14, v5, v12

    if-gez v14, :cond_d

    goto :goto_3

    .line 535
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 534
    :cond_e
    :goto_3
    return-object v3
.end method

.method private final getBucket()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->bucket$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getPosOf()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->posOf$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getVocab()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->vocab$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final lowerBound(Ljava/lang/String;)I
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "lo":I
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 210
    .local v1, "hi":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 211
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 212
    .local v2, "mid":I
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .end local v2    # "mid":I
    goto :goto_0

    .line 214
    :cond_1
    return v0
.end method

.method private static final posOf_delegate$lambda$1(Lcom/alicegpt/textfollower/tracking/TextTracker;)Ljava/util/HashMap;
    .locals 9
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "tmp":Ljava/util/HashMap;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    :goto_0
    if-ge v1, v2, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .local v3, "$this$getOrPut$iv":Ljava/util/Map;
    iget-object v4, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->norm:[Ljava/lang/String;

    aget-object v4, v4, v1

    .local v4, "key$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 548
    .local v5, "$i$f$getOrPut":I
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 549
    .local v6, "value$iv":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 550
    const/4 v7, 0x0

    .line 165
    .local v7, "$i$a$-getOrPut-TextTracker$posOf$2$1":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .end local v7    # "$i$a$-getOrPut-TextTracker$posOf$2$1":I
    move-object v7, v8

    .line 551
    .local v7, "answer$iv":Ljava/lang/Object;
    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    nop

    .end local v7    # "answer$iv":Ljava/lang/Object;
    goto :goto_1

    .line 554
    :cond_0
    move-object v7, v6

    .line 549
    :goto_1
    nop

    .end local v3    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v4    # "key$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$getOrPut":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    check-cast v7, Ljava/util/ArrayList;

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    .local v1, "out":Ljava/util/HashMap;
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "w":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, "l":Ljava/util/ArrayList;
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    .end local v3    # "l":Ljava/util/ArrayList;
    .end local v4    # "w":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private final process(Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFinal"    # Z

    .line 278
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 279
    :cond_0
    sget-object v0, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/text/Words;->recognized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "words":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 281
    :cond_1
    xor-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->statesFor(Ljava/util/List;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    move-result-object v1

    .line 282
    .local v1, "beam":Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    .line 283
    .local v2, "from":I
    invoke-direct {p0, v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->decide(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;)Ljava/lang/Integer;

    move-result-object v3

    .line 284
    .local v3, "newPos":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 285
    .local v4, "move":Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
    if-eqz v3, :cond_2

    .line 286
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->indexOf(I)I

    move-result v5

    .line 287
    .local v5, "idx":I
    new-instance v6, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getHist()[I

    move-result-object v8

    aget v8, v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->bitCount(I)I

    move-result v8

    invoke-direct {v6, v2, v7, v8}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;-><init>(III)V

    move-object v4, v6

    .line 288
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    .line 290
    .end local v5    # "idx":I
    :cond_2
    iget v5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    invoke-direct {p0, v1, v5}, Lcom/alicegpt/textfollower/tracking/TextTracker;->readingMassNear(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;I)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->confidence:D

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0, v5, p2, v6}, Lcom/alicegpt/textfollower/tracking/TextTracker;->trackLost(IZZ)V

    .line 292
    if-eqz p2, :cond_4

    .line 293
    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 294
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    .line 295
    iget-object v5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_4
    return-object v4
.end method

.method private final rangeSum(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;[DII)D
    .locals 7
    .param p1, "beam"    # Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .param p2, "cum"    # [D
    .param p3, "lo"    # I
    .param p4, "hi"    # I

    .line 474
    if-ge p4, p3, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 476
    .local v0, "a":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v1

    .line 477
    .local v1, "b":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 478
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 479
    .local v2, "mid":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getPos()[I

    move-result-object v3

    aget v3, v3, v2

    if-ge v3, p3, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .end local v2    # "mid":I
    goto :goto_0

    .line 481
    :cond_2
    move v2, v0

    .line 482
    .local v2, "left":I
    nop

    .line 483
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v1

    .line 484
    :goto_1
    if-ge v0, v1, :cond_4

    .line 485
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 486
    .local v3, "mid":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getPos()[I

    move-result-object v4

    aget v4, v4, v3

    if-gt v4, p4, :cond_3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    .end local v3    # "mid":I
    goto :goto_1

    .line 488
    :cond_4
    aget-wide v3, p2, v0

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    return-wide v3
.end method

.method private final readingMassNear(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;I)D
    .locals 7
    .param p1, "beam"    # Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .param p2, "pos"    # I

    .line 323
    const-wide/16 v0, 0x0

    .line 324
    .local v0, "m":D
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getPos()[I

    move-result-object v4

    aget v4, v4, v2

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getOn()[D

    move-result-object v4

    aget-wide v5, v4, v2

    add-double/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method private final resetLostCounters()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->wordsSinceMove:I

    .line 141
    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseWords:I

    .line 142
    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseAtMove:I

    .line 143
    return-void
.end method

.method private final setSearchMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchMode:Z

    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    :goto_0
    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    .line 126
    return-void
.end method

.method private final similar(Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .locals 16
    .param p1, "r"    # Ljava/lang/String;
    .param p2, "prefix"    # Z

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 184
    .local v2, "key":Ljava/lang/String;
    :goto_0
    iget-object v3, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->similarCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;

    if-eqz v3, :cond_1

    .line 545
    .local v3, "it":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    const/4 v4, 0x0

    .line 184
    .local v4, "$i$a$-let-TextTracker$similar$1":I
    return-object v3

    .line 185
    .end local v3    # "it":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .end local v4    # "$i$a$-let-TextTracker$similar$1":I
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v3, "sims":Ljava/util/HashMap;
    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getBucket()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const-wide/16 v6, 0x0

    const-string v8, "next(...)"

    if-eqz v4, :cond_4

    .local v4, "list":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .line 187
    .local v9, "$i$a$-let-TextTracker$similar$2":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-string v11, "iterator(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    .line 188
    .local v11, "w":Ljava/lang/String;
    iget-object v12, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->matcher:Lcom/alicegpt/textfollower/tracking/WordMatcher;

    invoke-virtual {v12, v1, v11}, Lcom/alicegpt/textfollower/tracking/WordMatcher;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v12

    .line 189
    .local v12, "s":D
    cmpl-double v14, v12, v6

    if-lez v14, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v3

    check-cast v15, Ljava/util/Map;

    invoke-interface {v15, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    .end local v11    # "w":Ljava/lang/String;
    .end local v12    # "s":D
    :cond_3
    nop

    .line 186
    .end local v4    # "list":Ljava/util/ArrayList;
    .end local v9    # "$i$a$-let-TextTracker$similar$2":I
    nop

    .line 192
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosOf()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_7

    .line 195
    invoke-direct/range {p0 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->lowerBound(Ljava/lang/String;)I

    move-result v4

    .line 196
    .local v4, "k":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v1, v11, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 197
    move-object v5, v3

    check-cast v5, Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getVocab()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_3

    :cond_6
    move-wide v10, v6

    :goto_3
    const-wide v12, 0x3fe3333333333333L    # 0.6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    .end local v4    # "k":I
    :cond_7
    const/4 v4, 0x0

    .line 202
    .local v4, "cnt":I
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    .local v6, "w":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosOf()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, [I

    array-length v7, v7

    add-int/2addr v4, v7

    .end local v6    # "w":Ljava/lang/String;
    goto :goto_4

    .line 203
    :cond_8
    iget-object v5, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->similarCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/16 v6, 0x4e20

    if-le v5, v6, :cond_9

    iget-object v5, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->similarCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 204
    :cond_9
    new-instance v5, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;

    invoke-direct {v5, v3, v4}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;-><init>(Ljava/util/HashMap;I)V

    move-object v6, v5

    .line 545
    .local v6, "it":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    const/4 v7, 0x0

    .line 204
    .local v7, "$i$a$-also-TextTracker$similar$3":I
    iget-object v8, v0, Lcom/alicegpt/textfollower/tracking/TextTracker;->similarCache:Ljava/util/HashMap;

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "it":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .end local v7    # "$i$a$-also-TextTracker$similar$3":I
    return-object v5
.end method

.method private final single(I)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .locals 9
    .param p1, "at"    # I

    .line 258
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 259
    filled-new-array {p1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getSeekOn()D

    move-result-wide v2

    const/4 v4, 0x1

    new-array v5, v4, [D

    const/4 v6, 0x0

    aput-wide v2, v5, v6

    int-to-double v2, v4

    iget-object v7, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v7}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getSeekOn()D

    move-result-wide v7

    sub-double/2addr v2, v7

    new-array v4, v4, [D

    aput-wide v2, v4, v6

    filled-new-array {v6}, [I

    move-result-object v2

    .line 258
    invoke-direct {v0, v1, v5, v4, v2}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;-><init>([I[D[D[I)V

    .line 260
    return-object v0
.end method

.method private final statesFor(Ljava/util/List;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .locals 8
    .param p1, "words"    # Ljava/util/List;
    .param p2, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;"
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "k":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 334
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 336
    .local v3, "beam":Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    move v4, v0

    .local v4, "idx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_4

    .line 337
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v4, v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    invoke-direct {p0, v3, v6, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    move-result-object v3

    .line 338
    iget-object v6, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 341
    .end local v4    # "idx":I
    :cond_4
    if-eqz p2, :cond_5

    .line 342
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {p1, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    .line 343
    :goto_4
    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v1, v4, :cond_6

    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 345
    :cond_5
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    .line 347
    :cond_6
    return-object v3
.end method

.method private final step(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .locals 45
    .param p1, "beam"    # Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
    .param p2, "r"    # Ljava/lang/String;
    .param p3, "lastPartial"    # Z

    .line 353
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-direct {v8, v10, v11}, Lcom/alicegpt/textfollower/tracking/TextTracker;->similar(Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;

    move-result-object v12

    .line 354
    .local v12, "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v1

    const/16 v13, 0x8

    mul-int/2addr v1, v13

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v14, v0

    .line 371
    .local v14, "acc":Ljava/util/HashMap;
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getAdvance()[D

    move-result-object v15

    .line 372
    .local v15, "adv":[D
    const/4 v7, 0x1

    int-to-double v5, v7

    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPReread()D

    move-result-wide v0

    sub-double v16, v5, v0

    .line 373
    .local v16, "keep":D
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v3

    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    :goto_0
    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    if-ge v4, v3, :cond_2

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getPos()[I

    move-result-object v0

    aget v21, v0, v4

    .line 375
    .local v21, "j":I
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getOn()[D

    move-result-object v0

    aget-wide v22, v0, v4

    .line 376
    .local v22, "on":D
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getOff()[D

    move-result-object v0

    aget-wide v24, v0, v4

    .line 377
    .local v24, "off":D
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getHist()[I

    move-result-object v0

    aget v26, v0, v4

    .line 378
    .local v26, "h":I
    cmpl-double v0, v22, v19

    if-lez v0, :cond_0

    .line 379
    aget-wide v0, v15, v18

    mul-double v27, v22, v0

    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v21

    move/from16 v31, v3

    move/from16 v32, v4

    .end local v4    # "i":I
    .local v32, "i":I
    move-wide/from16 v3, v27

    move-wide/from16 v27, v5

    move-wide/from16 v5, v29

    move v13, v7

    move/from16 v7, v26

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 380
    add-int/lit8 v2, v21, 0x1

    aget-wide v0, v15, v13

    mul-double v3, v22, v0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 381
    add-int/lit8 v2, v21, 0x2

    const/4 v0, 0x2

    aget-wide v0, v15, v0

    mul-double v3, v22, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 382
    add-int/lit8 v2, v21, 0x3

    const/4 v0, 0x3

    aget-wide v0, v15, v0

    mul-double v3, v22, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 383
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPStop()D

    move-result-wide v0

    mul-double v5, v22, v0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v21

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    goto :goto_1

    .line 378
    .end local v32    # "i":I
    .restart local v4    # "i":I
    :cond_0
    move/from16 v31, v3

    move/from16 v32, v4

    move-wide/from16 v27, v5

    move v13, v7

    .line 385
    .end local v4    # "i":I
    .restart local v32    # "i":I
    :goto_1
    cmpl-double v0, v24, v19

    if-lez v0, :cond_1

    .line 386
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPStart()D

    move-result-wide v0

    sub-double v5, v27, v0

    mul-double v5, v5, v24

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v21

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 387
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPStart()D

    move-result-wide v0

    mul-double v0, v0, v24

    mul-double v18, v0, v16

    .line 388
    .local v18, "st":D
    add-int/lit8 v2, v21, 0x1

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    mul-double v3, v18, v0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 389
    add-int/lit8 v2, v21, 0x2

    const-wide v0, 0x3fc3333333333333L    # 0.15

    mul-double v3, v18, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 390
    add-int/lit8 v2, v21, 0x3

    const-wide v0, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v3, v18, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 373
    .end local v18    # "st":D
    .end local v21    # "j":I
    .end local v22    # "on":D
    .end local v24    # "off":D
    .end local v26    # "h":I
    :cond_1
    add-int/lit8 v4, v32, 0x1

    move v7, v13

    move-wide/from16 v5, v27

    move/from16 v3, v31

    const/16 v13, 0x8

    .end local v32    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    :cond_2
    move/from16 v32, v4

    move-wide/from16 v27, v5

    move v13, v7

    .line 396
    .end local v4    # "i":I
    invoke-virtual {v12}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;->getSims()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v12}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;->getCount()I

    move-result v0

    iget-object v1, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getWideCap()I

    move-result v1

    if-gt v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v0

    add-int/2addr v0, v13

    new-array v7, v0, [D

    .line 398
    .local v7, "cumOn":[D
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v0

    add-int/2addr v0, v13

    new-array v5, v0, [D

    .line 399
    .local v5, "cumOff":[D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getSize()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_3

    .line 400
    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v7, v0

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getOn()[D

    move-result-object v6

    aget-wide v21, v6, v0

    add-double v3, v3, v21

    aput-wide v3, v7, v2

    .line 401
    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->getOff()[D

    move-result-object v6

    aget-wide v21, v6, v0

    add-double v3, v3, v21

    aput-wide v3, v5, v2

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPJump()D

    move-result-wide v0

    iget v2, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    int-to-double v2, v2

    div-double v21, v0, v2

    .line 404
    .local v21, "jump":D
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPSkip()D

    move-result-wide v0

    const/16 v2, 0x25

    int-to-double v2, v2

    div-double v23, v0, v2

    .line 405
    .local v23, "skipRate":D
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPBack()D

    move-result-wide v0

    const/16 v2, 0x8

    int-to-double v2, v2

    div-double v25, v0, v2

    .line 406
    .local v25, "backRate":D
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPStart()D

    move-result-wide v0

    iget-object v2, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPReread()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const/16 v2, 0x28

    int-to-double v2, v2

    div-double v29, v0, v2

    .line 407
    .local v29, "rereadRate":D
    invoke-virtual {v12}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;->getSims()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 408
    .local v6, "w":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosOf()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, [I

    array-length v4, v3

    move/from16 v2, v18

    :goto_4
    if-ge v2, v4, :cond_4

    aget v32, v3, v2

    .line 409
    .local v32, "wordIdx":I
    add-int/lit8 v33, v32, 0x1

    .line 410
    .local v33, "s":I
    move-wide/from16 v0, v21

    .line 411
    .local v0, "m":D
    add-int/lit8 v13, v33, -0x28

    move/from16 v35, v2

    add-int/lit8 v2, v33, -0x4

    invoke-direct {v8, v9, v7, v13, v2}, Lcom/alicegpt/textfollower/tracking/TextTracker;->rangeSum(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;[DII)D

    move-result-wide v36

    mul-double v36, v36, v23

    add-double v0, v0, v36

    .line 412
    add-int/lit8 v2, v33, 0x1

    add-int/lit8 v13, v33, 0x8

    invoke-direct {v8, v9, v7, v2, v13}, Lcom/alicegpt/textfollower/tracking/TextTracker;->rangeSum(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;[DII)D

    move-result-wide v36

    mul-double v36, v36, v25

    add-double v0, v0, v36

    .line 413
    add-int/lit8 v2, v33, 0x1

    add-int/lit8 v13, v33, 0x28

    invoke-direct {v8, v9, v5, v2, v13}, Lcom/alicegpt/textfollower/tracking/TextTracker;->rangeSum(Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;[DII)D

    move-result-wide v36

    mul-double v36, v36, v29

    add-double v36, v0, v36

    .line 414
    .end local v0    # "m":D
    .local v36, "m":D
    const-wide/16 v38, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v33

    move-object/from16 v40, v3

    move/from16 v41, v4

    move-wide/from16 v3, v36

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    .end local v5    # "cumOff":[D
    .end local v6    # "w":Ljava/lang/String;
    .local v42, "cumOff":[D
    .local v43, "w":Ljava/lang/String;
    move-wide/from16 v5, v38

    move-object/from16 v38, v7

    .end local v7    # "cumOn":[D
    .local v38, "cumOn":[D
    move v7, v13

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/tracking/TextTracker;->step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V

    .line 408
    .end local v32    # "wordIdx":I
    .end local v33    # "s":I
    .end local v36    # "m":D
    add-int/lit8 v2, v35, 0x1

    move-object/from16 v7, v38

    move-object/from16 v3, v40

    move/from16 v4, v41

    move-object/from16 v5, v42

    move-object/from16 v6, v43

    const/4 v13, 0x1

    goto :goto_4

    .end local v38    # "cumOn":[D
    .end local v42    # "cumOff":[D
    .end local v43    # "w":Ljava/lang/String;
    .restart local v5    # "cumOff":[D
    .restart local v6    # "w":Ljava/lang/String;
    .restart local v7    # "cumOn":[D
    :cond_4
    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move-object/from16 v38, v7

    .end local v5    # "cumOff":[D
    .end local v6    # "w":Ljava/lang/String;
    .end local v7    # "cumOn":[D
    .restart local v38    # "cumOn":[D
    .restart local v42    # "cumOff":[D
    .restart local v43    # "w":Ljava/lang/String;
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 407
    .end local v38    # "cumOn":[D
    .end local v42    # "cumOff":[D
    .end local v43    # "w":Ljava/lang/String;
    .restart local v5    # "cumOff":[D
    .restart local v7    # "cumOn":[D
    :cond_5
    move-object/from16 v42, v5

    move-object/from16 v38, v7

    .line 421
    .end local v5    # "cumOff":[D
    .end local v7    # "cumOn":[D
    .end local v21    # "jump":D
    .end local v23    # "skipRate":D
    .end local v25    # "backRate":D
    .end local v29    # "rereadRate":D
    :cond_6
    iget-object v0, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getRho()D

    move-result-wide v0

    .line 422
    .local v0, "rho":D
    invoke-virtual {v12}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;->getCount()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget v4, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v4}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getBackgroundFloor()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 423
    .local v2, "bg":D
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 424
    .local v4, "size":I
    new-array v5, v4, [I

    .line 425
    .local v5, "ps":[I
    new-array v6, v4, [D

    .line 426
    .local v6, "ons":[D
    new-array v7, v4, [D

    .line 427
    .local v7, "offs":[D
    new-array v13, v4, [I

    .line 428
    .local v13, "hs":[I
    const-wide/16 v21, 0x0

    .line 429
    .local v21, "total":D
    const/16 v23, 0x0

    .line 430
    .local v23, "k":I
    move-object/from16 v24, v14

    check-cast v24, Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move/from16 v44, v23

    move/from16 v23, v4

    move/from16 v4, v44

    .local v4, "k":I
    .local v23, "size":I
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Number;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v10

    .local v10, "s":I
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;

    .line 431
    .local v25, "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    const/4 v11, 0x1

    if-lt v10, v11, :cond_7

    invoke-virtual {v12}, Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;->getSims()Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v26, v12

    .end local v12    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .local v26, "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    iget-object v12, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->norm:[Ljava/lang/String;

    add-int/lit8 v29, v10, -0x1

    aget-object v12, v12, v29

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_6

    .end local v26    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .restart local v12    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    :cond_7
    move-object/from16 v26, v12

    .end local v12    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .restart local v26    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    :cond_8
    move-wide/from16 v11, v19

    .line 432
    .local v11, "sm":D
    :goto_6
    sub-double v29, v27, v0

    mul-double v31, v0, v11

    div-double v31, v31, v2

    add-double v29, v29, v31

    .line 433
    .local v29, "eOn":D
    invoke-virtual/range {v25 .. v25}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getOn()D

    move-result-wide v31

    mul-double v31, v31, v29

    .line 434
    .local v31, "on2":D
    invoke-virtual/range {v25 .. v25}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getOff()D

    move-result-wide v35

    add-double v35, v31, v35

    .line 435
    .local v35, "t":D
    cmpl-double v33, v35, v19

    if-lez v33, :cond_a

    .line 436
    aput v10, v5, v4

    .line 437
    aput-wide v31, v6, v4

    .line 438
    invoke-virtual/range {v25 .. v25}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getOff()D

    move-result-wide v37

    aput-wide v37, v7, v4

    .line 439
    invoke-virtual/range {v25 .. v25}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getHist()I

    move-result v33

    const/16 v34, 0x1

    shl-int/lit8 v33, v33, 0x1

    cmpl-double v37, v11, v19

    if-lez v37, :cond_9

    move/from16 v37, v34

    goto :goto_7

    :cond_9
    move/from16 v37, v18

    :goto_7
    move-wide/from16 v38, v0

    .end local v0    # "rho":D
    .local v38, "rho":D
    or-int v0, v33, v37

    and-int/lit16 v0, v0, 0xff

    aput v0, v13, v4

    .line 440
    add-double v21, v21, v35

    .line 441
    nop

    .end local v10    # "s":I
    .end local v11    # "sm":D
    .end local v25    # "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    .end local v29    # "eOn":D
    .end local v31    # "on2":D
    .end local v35    # "t":D
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, v26

    move-wide/from16 v0, v38

    goto/16 :goto_5

    .line 435
    .end local v38    # "rho":D
    .restart local v0    # "rho":D
    .restart local v10    # "s":I
    .restart local v11    # "sm":D
    .restart local v25    # "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    .restart local v29    # "eOn":D
    .restart local v31    # "on2":D
    .restart local v35    # "t":D
    :cond_a
    move-wide/from16 v38, v0

    const/16 v34, 0x1

    .end local v0    # "rho":D
    .restart local v38    # "rho":D
    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, v26

    goto/16 :goto_5

    .line 444
    .end local v10    # "s":I
    .end local v11    # "sm":D
    .end local v25    # "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    .end local v26    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .end local v29    # "eOn":D
    .end local v31    # "on2":D
    .end local v35    # "t":D
    .end local v38    # "rho":D
    .restart local v0    # "rho":D
    .restart local v12    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    :cond_b
    move-wide/from16 v38, v0

    move-object/from16 v26, v12

    .end local v0    # "rho":D
    .end local v12    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .restart local v26    # "sim":Lcom/alicegpt/textfollower/tracking/TextTracker$Similar;
    .restart local v38    # "rho":D
    cmpg-double v0, v21, v19

    if-lez v0, :cond_18

    if-nez v4, :cond_c

    move-wide/from16 v29, v2

    move/from16 v28, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    goto/16 :goto_10

    .line 447
    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v10, v0, v21

    .line 448
    .local v10, "inv":D
    const/4 v12, 0x0

    .line 449
    .local v12, "keepCount":I
    new-array v0, v4, [I

    .line 450
    .local v0, "idx":[I
    const/4 v1, 0x0

    .local v1, "q":I
    :goto_8
    if-ge v1, v4, :cond_e

    .line 451
    aget-wide v27, v6, v1

    mul-double v27, v27, v10

    aput-wide v27, v6, v1

    .line 452
    aget-wide v27, v7, v1

    mul-double v27, v27, v10

    aput-wide v27, v7, v1

    .line 453
    aget-wide v27, v6, v1

    aget-wide v29, v7, v1

    add-double v27, v27, v29

    move-wide/from16 v29, v2

    .end local v2    # "bg":D
    .local v29, "bg":D
    iget-object v2, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getPrune()D

    move-result-wide v2

    cmpl-double v2, v27, v2

    if-ltz v2, :cond_d

    add-int/lit8 v2, v12, 0x1

    .end local v12    # "keepCount":I
    .local v2, "keepCount":I
    aput v1, v0, v12

    move v12, v2

    .line 450
    .end local v2    # "keepCount":I
    .restart local v12    # "keepCount":I
    :cond_d
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v29

    goto :goto_8

    .end local v29    # "bg":D
    .local v2, "bg":D
    :cond_e
    move-wide/from16 v29, v2

    .line 455
    .end local v1    # "q":I
    .end local v2    # "bg":D
    .restart local v29    # "bg":D
    if-nez v12, :cond_f

    return-object v9

    .line 456
    :cond_f
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .local v1, "chosen":[I
    iget-object v2, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getBeam()I

    move-result v2

    if-le v12, v2, :cond_10

    .line 458
    move-object v2, v1

    .local v2, "$this$sortedByDescending$iv":[I
    const/4 v3, 0x0

    .line 546
    .local v3, "$i$f$sortedByDescending":I
    move-object/from16 v27, v0

    .end local v0    # "idx":[I
    .local v27, "idx":[I
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker$step$$inlined$sortedByDescending$1;

    invoke-direct {v0, v6, v7}, Lcom/alicegpt/textfollower/tracking/TextTracker$step$$inlined$sortedByDescending$1;-><init>([D[D)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v2, v0}, Lkotlin/collections/ArraysKt;->sortedWith([ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v2    # "$this$sortedByDescending$iv":[I
    .end local v3    # "$i$f$sortedByDescending":I
    check-cast v0, Ljava/lang/Iterable;

    .line 458
    iget-object v2, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getBeam()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    goto :goto_9

    .line 457
    .end local v27    # "idx":[I
    .restart local v0    # "idx":[I
    :cond_10
    move-object/from16 v27, v0

    .line 460
    .end local v0    # "idx":[I
    .restart local v27    # "idx":[I
    :goto_9
    move-object v0, v1

    .local v0, "$this$sortedBy$iv":[I
    const/4 v2, 0x0

    .line 547
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/alicegpt/textfollower/tracking/TextTracker$step$$inlined$sortedBy$1;

    invoke-direct {v3, v5}, Lcom/alicegpt/textfollower/tracking/TextTracker$step$$inlined$sortedBy$1;-><init>([I)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->sortedWith([ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "$this$sortedBy$iv":[I
    .end local v2    # "$i$f$sortedBy":I
    check-cast v0, Ljava/util/Collection;

    .line 460
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    .line 461
    .end local v1    # "chosen":[I
    .local v0, "chosen":[I
    const-wide/16 v1, 0x0

    .line 462
    .local v1, "z":D
    iget-object v3, v8, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getBeam()I

    move-result v3

    if-le v12, v3, :cond_11

    array-length v3, v0

    move/from16 v28, v4

    move/from16 v4, v18

    .end local v4    # "k":I
    .local v28, "k":I
    :goto_a
    if-ge v4, v3, :cond_12

    aget v31, v0, v4

    .local v31, "q":I
    aget-wide v32, v6, v31

    aget-wide v34, v7, v31

    add-double v32, v32, v34

    add-double v1, v1, v32

    .end local v31    # "q":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .end local v28    # "k":I
    .restart local v4    # "k":I
    :cond_11
    move/from16 v28, v4

    .line 463
    .end local v4    # "k":I
    .restart local v28    # "k":I
    :cond_12
    cmpl-double v3, v1, v19

    if-lez v3, :cond_13

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    goto :goto_b

    :cond_13
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 464
    .local v3, "scale":D
    :goto_b
    nop

    .line 465
    move-wide/from16 v19, v1

    .end local v1    # "z":D
    .local v19, "z":D
    array-length v1, v0

    new-array v2, v1, [I

    move/from16 v8, v18

    :goto_c
    if-ge v8, v1, :cond_14

    aget v24, v0, v8

    aget v24, v5, v24

    aput v24, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 466
    :cond_14
    array-length v1, v0

    new-array v8, v1, [D

    move-object/from16 v24, v5

    move/from16 v5, v18

    .end local v5    # "ps":[I
    .local v24, "ps":[I
    :goto_d
    if-ge v5, v1, :cond_15

    aget v25, v0, v5

    aget-wide v31, v6, v25

    mul-double v31, v31, v3

    aput-wide v31, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 467
    :cond_15
    array-length v1, v0

    new-array v5, v1, [D

    move-object/from16 v25, v6

    move/from16 v6, v18

    .end local v6    # "ons":[D
    .local v25, "ons":[D
    :goto_e
    if-ge v6, v1, :cond_16

    aget v31, v0, v6

    aget-wide v31, v7, v31

    mul-double v31, v31, v3

    aput-wide v31, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 468
    :cond_16
    array-length v1, v0

    new-array v6, v1, [I

    move-wide/from16 v31, v3

    move/from16 v3, v18

    .end local v3    # "scale":D
    .local v31, "scale":D
    :goto_f
    if-ge v3, v1, :cond_17

    aget v4, v0, v3

    aget v4, v13, v4

    aput v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 464
    :cond_17
    new-instance v1, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    invoke-direct {v1, v2, v8, v5, v6}, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;-><init>([I[D[D[I)V

    return-object v1

    .line 444
    .end local v0    # "chosen":[I
    .end local v10    # "inv":D
    .end local v12    # "keepCount":I
    .end local v19    # "z":D
    .end local v24    # "ps":[I
    .end local v25    # "ons":[D
    .end local v27    # "idx":[I
    .end local v28    # "k":I
    .end local v29    # "bg":D
    .end local v31    # "scale":D
    .local v2, "bg":D
    .restart local v4    # "k":I
    .restart local v5    # "ps":[I
    .restart local v6    # "ons":[D
    :cond_18
    move-wide/from16 v29, v2

    move/from16 v28, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    .end local v2    # "bg":D
    .end local v4    # "k":I
    .end local v5    # "ps":[I
    .end local v6    # "ons":[D
    .restart local v24    # "ps":[I
    .restart local v25    # "ons":[D
    .restart local v28    # "k":I
    .restart local v29    # "bg":D
    :goto_10
    return-object v9
.end method

.method private static final step$add(Lcom/alicegpt/textfollower/tracking/TextTracker;Ljava/util/HashMap;IDDI)V
    .locals 16
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/tracking/TextTracker;
    .param p1, "acc"    # Ljava/util/HashMap;
    .param p2, "s"    # I
    .param p3, "on"    # D
    .param p5, "off"    # D
    .param p7, "hist"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alicegpt/textfollower/tracking/TextTracker;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;",
            ">;IDDI)V"
        }
    .end annotation

    .line 357
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v10, p3

    if-ltz v1, :cond_3

    move-object/from16 v12, p0

    iget v2, v12, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    if-le v1, v2, :cond_0

    move/from16 v0, p7

    goto :goto_1

    .line 358
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;

    .line 359
    .local v13, "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    if-nez v13, :cond_1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 360
    move-object v15, v0

    check-cast v15, Ljava/util/Map;

    new-instance v9, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;

    move-object v2, v9

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p3

    move-object v0, v9

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;-><init>(DDDI)V

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p7

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v13}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getOn()D

    move-result-wide v2

    add-double/2addr v2, v10

    invoke-virtual {v13, v2, v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->setOn(D)V

    .line 363
    invoke-virtual {v13}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getOff()D

    move-result-wide v2

    add-double v2, v2, p5

    invoke-virtual {v13, v2, v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->setOff(D)V

    .line 364
    invoke-virtual {v13}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->getBestOn()D

    move-result-wide v2

    cmpl-double v0, v10, v2

    if-lez v0, :cond_2

    .line 365
    invoke-virtual {v13, v10, v11}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->setBestOn(D)V

    .line 366
    move/from16 v0, p7

    invoke-virtual {v13, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->setHist(I)V

    goto :goto_0

    .line 364
    :cond_2
    move/from16 v0, p7

    .line 369
    :goto_0
    return-void

    .line 357
    .end local v13    # "c":Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
    :cond_3
    move-object/from16 v12, p0

    move/from16 v0, p7

    :goto_1
    return-void
.end method

.method private final trackLost(IZZ)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "isFinal"    # Z
    .param p3, "moved"    # Z

    .line 303
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 304
    if-nez p3, :cond_0

    iget v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->wordsSinceMove:I

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseAtMove:I

    sub-int v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->wordsSinceMove:I

    .line 305
    :cond_0
    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseWords:I

    .line 306
    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseAtMove:I

    goto :goto_0

    .line 308
    :cond_1
    iput p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseWords:I

    .line 310
    :goto_0
    nop

    .line 311
    if-eqz p3, :cond_2

    .line 312
    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->wordsSinceMove:I

    .line 313
    iget v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseWords:I

    iput v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseAtMove:I

    .line 314
    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->setSearchMode(Z)V

    goto :goto_1

    .line 316
    :cond_2
    iget-boolean v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchMode:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getLocked()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->unconfirmedWords()I

    move-result v1

    iget-object v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getLostWords()I

    move-result v2

    if-lt v1, v2, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->setSearchMode(Z)V

    goto :goto_1

    .line 317
    :cond_3
    iget-boolean v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->setSearchMode(Z)V

    .line 319
    :cond_4
    :goto_1
    return-void
.end method

.method private final unconfirmedWords()I
    .locals 3

    .line 145
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->wordsSinceMove:I

    iget v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseWords:I

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->phraseAtMove:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static final vocab_delegate$lambda$2(Lcom/alicegpt/textfollower/tracking/TextTracker;)[Ljava/lang/String;
    .locals 4
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 170
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosOf()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 555
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 556
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Ljava/lang/String;

    .line 170
    return-object v0
.end method


# virtual methods
.method public final getConfidence()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->confidence:D

    return-wide v0
.end method

.method public final getDoc()Lcom/alicegpt/textfollower/text/Doc;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->doc:Lcom/alicegpt/textfollower/text/Doc;

    return-object v0
.end method

.method public final getLocked()Z
    .locals 4

    .line 155
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->confidence:D

    iget-object v2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->baseConfig:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getLockThreshold()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    return v0
.end method

.method public final getSearchMode()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->searchMode:Z

    return v0
.end method

.method public final onFinal(Ljava/lang/String;)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->process(Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;

    move-result-object v0

    return-object v0
.end method

.method public final onPartial(Ljava/lang/String;)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->process(Ljava/lang/String;Z)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;

    move-result-object v0

    return-object v0
.end method

.method public final seek(I)V
    .locals 2
    .param p1, "index"    # I

    .line 264
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->stopSearching()V

    .line 265
    const/4 v0, 0x0

    iget v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->n:I

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    .line 266
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->position:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->single(I)Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    .line 267
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cfg:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->getSeekOn()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->confidence:D

    .line 268
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheWords:Ljava/util/List;

    .line 269
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->cacheBeams:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker;->committed:Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public final stopSearching()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->setSearchMode(Z)V

    .line 131
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->resetLostCounters()V

    .line 132
    return-void
.end method

.method public final warmUp()V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosOf()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 220
    invoke-direct {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getBucket()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 221
    return-void
.end method
