.class public final Lcom/alicegpt/textfollower/SessionStats;
.super Ljava/lang/Object;
.source "SessionStats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/SessionStats$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionStats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionStats.kt\ncom/alicegpt/textfollower/SessionStats\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0017\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0008J\u0006\u0010\u001c\u001a\u00020\u0008J\u0006\u0010\u001d\u001a\u00020\u0015R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/SessionStats;",
        "",
        "clock",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "value",
        "",
        "wordsRead",
        "getWordsRead",
        "()I",
        "activeMs",
        "runningSince",
        "recent",
        "Lkotlin/collections/ArrayDeque;",
        "Lkotlin/Pair;",
        "isRunning",
        "",
        "()Z",
        "start",
        "",
        "pause",
        "activeMillis",
        "getActiveMillis",
        "()J",
        "onForwardMove",
        "words",
        "wordsPerMinute",
        "reset",
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
.field private static final Companion:Lcom/alicegpt/textfollower/SessionStats$Companion;

.field public static final MAX_STEP:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_MS:J = 0x1388L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_MS:J = 0xea60L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private activeMs:J

.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final recent:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private runningSince:J

.field private wordsRead:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/SessionStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/SessionStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/SessionStats;->Companion:Lcom/alicegpt/textfollower/SessionStats$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/alicegpt/textfollower/SessionStats;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "clock"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    .line 16
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/alicegpt/textfollower/SessionStats$1;->INSTANCE:Lcom/alicegpt/textfollower/SessionStats$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/SessionStats;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getActiveMillis()J
    .locals 6

    .line 32
    iget-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->activeMs:J

    iget-wide v2, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    sub-long v4, v2, v4

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public final getWordsRead()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    return v0
.end method

.method public final isRunning()Z
    .locals 4

    .line 18
    iget-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onForwardMove(I)V
    .locals 3
    .param p1, "words"    # I

    .line 35
    if-lez p1, :cond_1

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    .line 37
    iget-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    iget-object v1, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 38
    return-void

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 8

    .line 25
    iget-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 26
    iget-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->activeMs:J

    iget-object v4, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->activeMs:J

    .line 27
    iput-wide v2, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    .line 29
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->activeMs:J

    .line 54
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/SessionStats;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    .line 55
    iget-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 56
    return-void
.end method

.method public final start()V
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/SessionStats;->runningSince:J

    .line 22
    :cond_0
    return-void
.end method

.method public final wordsPerMinute()I
    .locals 13

    .line 42
    iget-object v0, p0, Lcom/alicegpt/textfollower/SessionStats;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 43
    .local v0, "now":J
    :goto_0
    iget-object v2, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-wide/32 v3, 0xea60

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/SessionStats;->getActiveMillis()J

    move-result-wide v5

    .line 45
    .local v5, "active":J
    const-wide/16 v7, 0x1388

    cmp-long v2, v5, v7

    const/4 v7, 0x0

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    if-nez v2, :cond_1

    goto :goto_3

    .line 46
    :cond_1
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 47
    .local v8, "windowMs":J
    cmp-long v2, v5, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/alicegpt/textfollower/SessionStats;->wordsRead:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alicegpt/textfollower/SessionStats;->recent:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    .line 65
    nop

    .local v10, "it":Lkotlin/Pair;
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$a$-sumOfInt-SessionStats$wordsPerMinute$words$1":I
    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v10

    .end local v10    # "it":Lkotlin/Pair;
    .end local v11    # "$i$a$-sumOfInt-SessionStats$wordsPerMinute$words$1":I
    add-int/2addr v7, v10

    goto :goto_1

    :cond_3
    move v2, v7

    .line 48
    .local v2, "words":I
    :goto_2
    int-to-long v10, v2

    mul-long/2addr v10, v3

    div-long/2addr v10, v8

    long-to-int v3, v10

    return v3

    .line 45
    .end local v2    # "words":I
    .end local v8    # "windowMs":J
    :cond_4
    :goto_3
    return v7
.end method
