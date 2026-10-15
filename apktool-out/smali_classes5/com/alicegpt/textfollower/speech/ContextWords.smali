.class public final Lcom/alicegpt/textfollower/speech/ContextWords;
.super Ljava/lang/Object;
.source "ContextWords.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/ContextWords;",
        "",
        "<init>",
        "()V",
        "window",
        "",
        "",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "center",
        "",
        "back",
        "ahead",
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
.field public static final INSTANCE:Lcom/alicegpt/textfollower/speech/ContextWords;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/speech/ContextWords;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/ContextWords;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/speech/ContextWords;->INSTANCE:Lcom/alicegpt/textfollower/speech/ContextWords;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final window(Lcom/alicegpt/textfollower/text/Doc;III)Ljava/util/List;
    .locals 13
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "center"    # I
    .param p3, "back"    # I
    .param p4, "ahead"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alicegpt/textfollower/text/Doc;",
            "III)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "doc"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sub-int v0, p2, p3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 15
    .local v0, "from":I
    add-int v2, p2, p4

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 16
    .local v2, "to":I
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .local v3, "words":Ljava/util/LinkedHashSet;
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getNorm()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getWordStart()[I

    move-result-object v6

    aget v6, v6, v4

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/text/Doc;->getWordEnd()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .local v5, "raw":Ljava/lang/String;
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v7, 0x451

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_0

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/16 v8, 0x401

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {v6, v5}, Lcom/alicegpt/textfollower/text/Words;->spelled(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .end local v5    # "raw":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    .end local v4    # "i":I
    :cond_2
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method
