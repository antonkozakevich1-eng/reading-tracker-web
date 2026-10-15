.class public final Lcom/alicegpt/textfollower/text/Doc;
.super Ljava/lang/Object;
.source "Doc.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/text/Doc$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 $2\u00020\u0001:\u0001$BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u001dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/Doc;",
        "",
        "text",
        "",
        "norm",
        "",
        "wordStart",
        "",
        "wordEnd",
        "sections",
        "",
        "Lcom/alicegpt/textfollower/text/Section;",
        "markerRanges",
        "headingRanges",
        "<init>",
        "(Ljava/lang/String;[Ljava/lang/String;[I[ILjava/util/List;[I[I)V",
        "getText",
        "()Ljava/lang/String;",
        "getNorm",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getWordStart",
        "()[I",
        "getWordEnd",
        "getSections",
        "()Ljava/util/List;",
        "getMarkerRanges",
        "getHeadingRanges",
        "size",
        "",
        "getSize",
        "()I",
        "sectionOfWord",
        "word",
        "wordAtOffset",
        "offset",
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
.field private static final BOM:Ljava/lang/String;

.field public static final Companion:Lcom/alicegpt/textfollower/text/Doc$Companion;

.field public static final DEFAULT_SECTION_CHARS:I = 0x7530

.field private static final HEADING_KEYWORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIXED_CASE_HEADING:Lkotlin/text/Regex;


# instance fields
.field private final headingRanges:[I

.field private final markerRanges:[I

.field private final norm:[Ljava/lang/String;

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/Section;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final wordEnd:[I

.field private final wordStart:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alicegpt/textfollower/text/Doc$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/text/Doc$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/text/Doc;->Companion:Lcom/alicegpt/textfollower/text/Doc$Companion;

    .line 70
    const v0, 0xfeff

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/text/Doc;->BOM:Ljava/lang/String;

    .line 72
    nop

    .line 73
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043f\u0435\u0441\u043d\u044c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0433\u043b\u0430\u0432\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0447\u0430\u0441\u0442\u044c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u043a\u043d\u0438\u0433\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0430\u043a\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0441\u0446\u0435\u043d\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043f\u0440\u043e\u043b\u043e\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u044d\u043f\u0438\u043b\u043e\u0433"

    aput-object v2, v0, v1

    .line 74
    const-string v1, "\u043f\u0440\u0435\u0434\u0438\u0441\u043b\u043e\u0432\u0438\u0435"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 73
    nop

    .line 74
    const-string v1, "\u0432\u0441\u0442\u0443\u043f\u043b\u0435\u043d\u0438\u0435"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 73
    nop

    .line 74
    const-string v1, "\u043f\u0440\u0438\u043c\u0435\u0447\u0430\u043d\u0438\u044f"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 73
    nop

    .line 74
    const-string v1, "\u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 73
    nop

    .line 74
    const-string v1, "\u043e\u0433\u043b\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 73
    nop

    .line 74
    const-string v1, "\u0441\u043e\u0434\u0435\u0440\u0436\u0430\u043d\u0438\u0435"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 73
    nop

    .line 72
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/text/Doc;->HEADING_KEYWORDS:Ljava/util/List;

    .line 78
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(\u043f\u0435\u0441\u043d\u044c|\u0433\u043b\u0430\u0432\u0430|\u0447\u0430\u0441\u0442\u044c|\u043a\u043d\u0438\u0433\u0430|\u0430\u043a\u0442|\u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435)\\s+([ivxlcdm]+|\\d+\\.?|[\u0430-\u044f\u0451]+)$"

    sget-object v2, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    sput-object v0, Lcom/alicegpt/textfollower/text/Doc;->MIXED_CASE_HEADING:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[I[ILjava/util/List;[I[I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "norm"    # [Ljava/lang/String;
    .param p3, "wordStart"    # [I
    .param p4, "wordEnd"    # [I
    .param p5, "sections"    # Ljava/util/List;
    .param p6, "markerRanges"    # [I
    .param p7, "headingRanges"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I[I",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/Section;",
            ">;[I[I)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "norm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wordStart"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wordEnd"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sections"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markerRanges"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headingRanges"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alicegpt/textfollower/text/Doc;->text:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/alicegpt/textfollower/text/Doc;->norm:[Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alicegpt/textfollower/text/Doc;->wordStart:[I

    .line 29
    iput-object p4, p0, Lcom/alicegpt/textfollower/text/Doc;->wordEnd:[I

    .line 30
    iput-object p5, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    .line 32
    iput-object p6, p0, Lcom/alicegpt/textfollower/text/Doc;->markerRanges:[I

    .line 34
    iput-object p7, p0, Lcom/alicegpt/textfollower/text/Doc;->headingRanges:[I

    .line 25
    return-void
.end method

.method public static final synthetic access$getBOM$cp()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/alicegpt/textfollower/text/Doc;->BOM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHEADING_KEYWORDS$cp()Ljava/util/List;
    .locals 1

    .line 25
    sget-object v0, Lcom/alicegpt/textfollower/text/Doc;->HEADING_KEYWORDS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMIXED_CASE_HEADING$cp()Lkotlin/text/Regex;
    .locals 1

    .line 25
    sget-object v0, Lcom/alicegpt/textfollower/text/Doc;->MIXED_CASE_HEADING:Lkotlin/text/Regex;

    return-object v0
.end method


# virtual methods
.method public final getHeadingRanges()[I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->headingRanges:[I

    return-object v0
.end method

.method public final getMarkerRanges()[I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->markerRanges:[I

    return-object v0
.end method

.method public final getNorm()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->norm:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/Section;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->norm:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getWordEnd()[I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->wordEnd:[I

    return-object v0
.end method

.method public final getWordStart()[I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->wordStart:[I

    return-object v0
.end method

.method public final sectionOfWord(I)I
    .locals 5
    .param p1, "word"    # I

    .line 40
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 42
    .local v0, "w":I
    const/4 v1, 0x0

    .line 43
    .local v1, "lo":I
    iget-object v2, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 44
    .local v2, "hi":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 45
    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    .line 46
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alicegpt/textfollower/text/Section;

    invoke-virtual {v4}, Lcom/alicegpt/textfollower/text/Section;->getFirstWord()I

    move-result v4

    if-gt v4, v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "mid":I
    goto :goto_0

    .line 49
    :cond_2
    move v3, v1

    .line 50
    .local v3, "s":I
    :goto_1
    iget-object v4, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/alicegpt/textfollower/text/Doc;->sections:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alicegpt/textfollower/text/Section;

    invoke-virtual {v4}, Lcom/alicegpt/textfollower/text/Section;->getEndWord()I

    move-result v4

    if-gt v4, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :cond_3
    return v3
.end method

.method public final wordAtOffset(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 56
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    .local v0, "lo":I
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 59
    .local v1, "hi":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 60
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 61
    .local v2, "mid":I
    iget-object v3, p0, Lcom/alicegpt/textfollower/text/Doc;->wordEnd:[I

    aget v3, v3, v2

    if-le v3, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "mid":I
    goto :goto_0

    .line 63
    :cond_2
    return v0
.end method
