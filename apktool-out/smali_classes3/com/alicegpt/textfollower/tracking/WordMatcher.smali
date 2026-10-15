.class public final Lcom/alicegpt/textfollower/tracking/WordMatcher;
.super Ljava/lang/Object;
.source "WordMatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/tracking/WordMatcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/WordMatcher;",
        "",
        "<init>",
        "()V",
        "rowA",
        "",
        "rowB",
        "similarity",
        "",
        "a",
        "",
        "b",
        "commonPrefix",
        "",
        "levenshtein",
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
.field public static final Companion:Lcom/alicegpt/textfollower/tracking/WordMatcher$Companion;

.field public static final MATCH_MIN:D = 0.7


# instance fields
.field private rowA:[I

.field private rowB:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/tracking/WordMatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/tracking/WordMatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->Companion:Lcom/alicegpt/textfollower/tracking/WordMatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowA:[I

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowB:[I

    .line 12
    return-void
.end method

.method private final commonPrefix(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 36
    .local v0, "n":I
    const/4 v1, 0x0

    .line 37
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return v1
.end method

.method private final levenshtein(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    .local v0, "m":I
    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowA:[I

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 44
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowA:[I

    .line 45
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowB:[I

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowA:[I

    .line 48
    .local v1, "prev":[I
    iget-object v2, p0, Lcom/alicegpt/textfollower/tracking/WordMatcher;->rowB:[I

    .line 49
    .local v2, "cur":[I
    const/4 v3, 0x0

    .local v3, "j":I
    if-gt v3, v0, :cond_1

    :goto_0
    aput v3, v1, v3

    if-eq v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "j":I
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 51
    :goto_1
    const/4 v5, 0x0

    aput v3, v2, v5

    .line 52
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 53
    .local v6, "ca":C
    const/4 v7, 0x1

    .local v7, "j":I
    if-gt v7, v0, :cond_3

    .line 54
    :goto_2
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v9

    .line 55
    .local v8, "cost":I
    :goto_3
    add-int/lit8 v10, v7, -0x1

    aget v10, v2, v10

    add-int/2addr v10, v9

    aget v11, v1, v7

    add-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v7, -0x1

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v2, v7

    .line 53
    .end local v8    # "cost":I
    if-eq v7, v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 57
    .end local v7    # "j":I
    :cond_3
    move-object v5, v1

    .line 58
    .local v5, "t":[I
    move-object v1, v2

    .line 59
    move-object v2, v5

    .line 50
    .end local v5    # "t":[I
    .end local v6    # "ca":C
    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "i":I
    :cond_4
    aget v3, v1, v0

    return v3
.end method


# virtual methods
.method public final similarity(Ljava/lang/String;Ljava/lang/String;)D
    .locals 12
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    return-wide v1

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 21
    .local v0, "minLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 23
    .local v3, "maxLen":I
    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-ge v0, v6, :cond_1

    return-wide v4

    .line 24
    :cond_1
    sub-int v7, v3, v0

    mul-int/lit8 v8, v3, 0x2

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x2

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-le v7, v8, :cond_2

    return-wide v4

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/tracking/WordMatcher;->commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 27
    .local v7, "prefix":I
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/tracking/WordMatcher;->levenshtein(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    int-to-double v8, v8

    int-to-double v10, v3

    div-double/2addr v8, v10

    sub-double/2addr v1, v8

    .line 29
    .local v1, "sim":D
    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    mul-int/lit8 v9, v7, 0x5

    mul-int/lit8 v10, v3, 0x3

    if-lt v9, v10, :cond_3

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    .line 30
    :cond_3
    if-lt v7, v6, :cond_4

    if-lt v0, v8, :cond_4

    mul-int/lit8 v6, v7, 0x5

    mul-int/lit8 v8, v3, 0x3

    if-lt v6, v8, :cond_4

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 31
    :cond_4
    :goto_0
    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v1, v8

    if-ltz v6, :cond_5

    move-wide v4, v1

    :cond_5
    return-wide v4
.end method
