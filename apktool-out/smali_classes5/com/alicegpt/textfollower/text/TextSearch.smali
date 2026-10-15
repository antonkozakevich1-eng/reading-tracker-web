.class public final Lcom/alicegpt/textfollower/text/TextSearch;
.super Ljava/lang/Object;
.source "TextSearch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/text/TextSearch$Hit;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J \u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000cH\u0002R\u000e\u0010\u0017\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/TextSearch;",
        "",
        "<init>",
        "()V",
        "find",
        "",
        "Lcom/alicegpt/textfollower/text/TextSearch$Hit;",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "query",
        "",
        "limit",
        "",
        "matches",
        "",
        "m",
        "Lcom/alicegpt/textfollower/tracking/WordMatcher;",
        "q",
        "w",
        "isLast",
        "hit",
        "firstWord",
        "lastWord",
        "SNIPPET_BEFORE",
        "SNIPPET_AFTER",
        "Hit",
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
.field public static final INSTANCE:Lcom/alicegpt/textfollower/text/TextSearch;

.field private static final SNIPPET_AFTER:I = 0x46

.field private static final SNIPPET_BEFORE:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/text/TextSearch;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/text/TextSearch;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/text/TextSearch;->INSTANCE:Lcom/alicegpt/textfollower/text/TextSearch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic find$default(Lcom/alicegpt/textfollower/text/TextSearch;Lcom/alicegpt/textfollower/text/Doc;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 17
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x3c

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alicegpt/textfollower/text/TextSearch;->find(Lcom/alicegpt/textfollower/text/Doc;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final hit(Lcom/alicegpt/textfollower/text/Doc;II)Lcom/alicegpt/textfollower/text/TextSearch$Hit;
    .locals 12
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "firstWord"    # I
    .param p3, "lastWord"    # I

    .line 48
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getText()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getWordStart()[I

    move-result-object v1

    aget v1, v1, p2

    add-int/lit8 v1, v1, -0x28

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 50
    .local v1, "from":I
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getWordEnd()[I

    move-result-object v2

    aget v2, v2, p3

    add-int/lit8 v2, v2, 0x46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 51
    .local v2, "to":I
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .local v3, "raw":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "\\[\\d+]"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v4, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v7, "\\s*\\n\\s*"

    invoke-direct {v5, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v5, v4, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const-string v7, "\\s{2,}"

    invoke-direct {v5, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "clean":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getSections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, p2}, Lcom/alicegpt/textfollower/text/Doc;->sectionOfWord(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alicegpt/textfollower/text/Section;

    .line 54
    .local v5, "section":Lcom/alicegpt/textfollower/text/Section;
    new-instance v6, Lcom/alicegpt/textfollower/text/TextSearch$Hit;

    invoke-virtual {v5}, Lcom/alicegpt/textfollower/text/Section;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u2026"

    const-string v9, ""

    if-lez v1, :cond_0

    move-object v10, v8

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p2, v7, v8}, Lcom/alicegpt/textfollower/text/TextSearch$Hit;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private final matches(Lcom/alicegpt/textfollower/tracking/WordMatcher;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "m"    # Lcom/alicegpt/textfollower/tracking/WordMatcher;
    .param p2, "q"    # Ljava/lang/String;
    .param p3, "w"    # Ljava/lang/String;
    .param p4, "isLast"    # Z

    .line 41
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 42
    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-static {p3, p2, v0, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/alicegpt/textfollower/tracking/WordMatcher;->similarity(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1

    .line 43
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public final find(Lcom/alicegpt/textfollower/text/Doc;Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alicegpt/textfollower/text/Doc;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/TextSearch$Hit;",
            ">;"
        }
    .end annotation

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {v0, p2}, Lcom/alicegpt/textfollower/text/Words;->recognized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 19
    .local v0, "q":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 20
    :cond_0
    new-instance v1, Lcom/alicegpt/textfollower/tracking/WordMatcher;

    invoke-direct {v1}, Lcom/alicegpt/textfollower/tracking/WordMatcher;-><init>()V

    .line 21
    .local v1, "matcher":Lcom/alicegpt/textfollower/tracking/WordMatcher;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v2, "hits":Ljava/util/ArrayList;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 23
    .local v3, "last":I
    const/4 v5, 0x0

    .line 24
    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v7

    if-gt v6, v7, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p3, :cond_6

    .line 25
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getNorm()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    if-nez v3, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    invoke-direct {p0, v1, v7, v8, v9}, Lcom/alicegpt/textfollower/text/TextSearch;->matches(Lcom/alicegpt/textfollower/tracking/WordMatcher;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 26
    const/4 v7, 0x1

    .line 27
    .local v7, "ok":Z
    const/4 v8, 0x1

    .local v8, "k":I
    if-gt v8, v3, :cond_4

    .line 28
    :goto_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getNorm()[Ljava/lang/String;

    move-result-object v10

    add-int v11, v5, v8

    aget-object v10, v10, v11

    if-ne v8, v3, :cond_2

    move v11, v4

    goto :goto_3

    :cond_2
    move v11, v6

    :goto_3
    invoke-direct {p0, v1, v9, v10, v11}, Lcom/alicegpt/textfollower/text/TextSearch;->matches(Lcom/alicegpt/textfollower/tracking/WordMatcher;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    .line 29
    const/4 v7, 0x0

    .line 30
    goto :goto_4

    .line 27
    :cond_3
    if-eq v8, v3, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 33
    .end local v8    # "k":I
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    add-int v6, v5, v3

    invoke-direct {p0, p1, v5, v6}, Lcom/alicegpt/textfollower/text/TextSearch;->hit(Lcom/alicegpt/textfollower/text/Doc;II)Lcom/alicegpt/textfollower/text/TextSearch$Hit;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v7    # "ok":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 37
    :cond_6
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    return-object v4

    .line 19
    .end local v1    # "matcher":Lcom/alicegpt/textfollower/tracking/WordMatcher;
    .end local v2    # "hits":Ljava/util/ArrayList;
    .end local v3    # "last":I
    .end local v5    # "i":I
    :cond_7
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
