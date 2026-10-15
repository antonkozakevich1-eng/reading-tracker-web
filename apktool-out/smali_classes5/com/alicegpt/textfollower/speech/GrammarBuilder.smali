.class public final Lcom/alicegpt/textfollower/speech/GrammarBuilder;
.super Ljava/lang/Object;
.source "GrammarBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGrammarBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GrammarBuilder.kt\ncom/alicegpt/textfollower/speech/GrammarBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1863#2,2:56\n774#2:58\n865#2,2:59\n1#3:61\n*S KotlinDebug\n*F\n+ 1 GrammarBuilder.kt\ncom/alicegpt/textfollower/speech/GrammarBuilder\n*L\n30#1:56,2\n39#1:58\n39#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005J\u0014\u0010\u000e\u001a\u00020\u00072\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0010J\u001b\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010\u0013\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/GrammarBuilder;",
        "",
        "<init>",
        "()V",
        "DEFAULT_WINDOW",
        "",
        "UNKNOWN",
        "",
        "BACK_SHARE",
        "forWindow",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "center",
        "window",
        "fromWords",
        "words",
        "",
        "REBUILD_DISTANCE",
        "yoVariants",
        "word",
        "yoVariants$app_debug",
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
.field private static final BACK_SHARE:I = 0x6

.field public static final DEFAULT_WINDOW:I = 0x12c

.field public static final INSTANCE:Lcom/alicegpt/textfollower/speech/GrammarBuilder;

.field public static final REBUILD_DISTANCE:I = 0x64

.field private static final UNKNOWN:Ljava/lang/String; = "[unk]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/speech/GrammarBuilder;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/GrammarBuilder;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->INSTANCE:Lcom/alicegpt/textfollower/speech/GrammarBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic forWindow$default(Lcom/alicegpt/textfollower/speech/GrammarBuilder;Lcom/alicegpt/textfollower/text/Doc;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 20
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x12c

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->forWindow(Lcom/alicegpt/textfollower/text/Doc;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final forWindow(Lcom/alicegpt/textfollower/text/Doc;II)Ljava/lang/String;
    .locals 3
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "center"    # I
    .param p3, "window"    # I

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    div-int/lit8 v0, p3, 0x6

    .line 22
    .local v0, "back":I
    sget-object v1, Lcom/alicegpt/textfollower/speech/ContextWords;->INSTANCE:Lcom/alicegpt/textfollower/speech/ContextWords;

    sub-int v2, p3, v0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/alicegpt/textfollower/speech/ContextWords;->window(Lcom/alicegpt/textfollower/text/Doc;III)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->fromWords(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final fromWords(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p1, "words"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .local v0, "all":Ljava/util/LinkedHashSet;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "w":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alicegpt/textfollower/speech/GrammarBuilder;->yoVariants$app_debug(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v2    # "w":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    .local v1, "arr":Lorg/json/JSONArray;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 30
    .local v7, "$i$a$-forEach-GrammarBuilder$fromWords$1":I
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-forEach-GrammarBuilder$fromWords$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 57
    :cond_2
    nop

    .line 31
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    const-string v2, "[unk]"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final yoVariants$app_debug(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->getIndices(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .local v8, "it":I
    const/4 v9, 0x0

    .line 39
    .local v9, "$i$a$-filter-GrammarBuilder$yoVariants$idx$1":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x435

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 59
    .end local v8    # "it":I
    .end local v9    # "$i$a$-filter-GrammarBuilder$yoVariants$idx$1":I
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 58
    nop

    .line 39
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    move-object v0, v2

    .line 40
    .local v0, "idx":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 41
    :cond_3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 42
    .local v1, "out":Ljava/util/LinkedHashSet;
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x451

    if-gt v2, v3, :cond_6

    .line 44
    const/4 v2, 0x1

    .local v2, "mask":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    shl-int v3, v7, v3

    :goto_2
    if-ge v2, v3, :cond_7

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "b":I
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_3
    if-ge v6, v8, :cond_5

    shr-int v9, v2, v6

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v5, v9, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 47
    .end local v6    # "b":I
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 50
    .end local v2    # "mask":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    move-object v6, v5

    .local v6, "it":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 50
    .local v7, "$i$a$-also-GrammarBuilder$yoVariants$1":I
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .end local v6    # "it":Ljava/lang/StringBuilder;
    .end local v7    # "$i$a$-also-GrammarBuilder$yoVariants$1":I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 52
    .end local v3    # "i":I
    :cond_7
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
