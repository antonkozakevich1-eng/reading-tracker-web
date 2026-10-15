.class public final Lcom/alicegpt/textfollower/ui/SectionText;
.super Ljava/lang/Object;
.source "SectionText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSectionText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SectionText.kt\ncom/alicegpt/textfollower/ui/SectionText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1755#2,3:123\n*S KotlinDebug\n*F\n+ 1 SectionText.kt\ncom/alicegpt/textfollower/ui/SectionText\n*L\n102#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/SectionText;",
        "",
        "<init>",
        "()V",
        "build",
        "Landroid/text/SpannableString;",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "sectionIndex",
        "",
        "gutter",
        "Lcom/alicegpt/textfollower/ui/GutterStyle;",
        "headingColor",
        "firstRangeAtOrAfter",
        "ranges",
        "",
        "offset",
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
.field public static final INSTANCE:Lcom/alicegpt/textfollower/ui/SectionText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/ui/SectionText;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/ui/SectionText;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/ui/SectionText;->INSTANCE:Lcom/alicegpt/textfollower/ui/SectionText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final firstRangeAtOrAfter([II)I
    .locals 4
    .param p1, "ranges"    # [I
    .param p2, "offset"    # I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "lo":I
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 115
    .local v1, "hi":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 117
    .local v2, "mid":I
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    if-le v3, p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "mid":I
    goto :goto_0

    .line 119
    :cond_1
    return v0
.end method


# virtual methods
.method public final build(Lcom/alicegpt/textfollower/text/Doc;ILcom/alicegpt/textfollower/ui/GutterStyle;I)Landroid/text/SpannableString;
    .locals 22
    .param p1, "doc"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "sectionIndex"    # I
    .param p3, "gutter"    # Lcom/alicegpt/textfollower/ui/GutterStyle;
    .param p4, "headingColor"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "doc"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gutter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getSections()Ljava/util/List;

    move-result-object v2

    move/from16 v4, p2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alicegpt/textfollower/text/Section;

    .line 57
    .local v2, "sec":Lcom/alicegpt/textfollower/text/Section;
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getEnd()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v5, "text":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableString;

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v7, "sp":Landroid/text/SpannableString;
    const/16 v8, 0x21

    .line 63
    .local v8, "flags":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v9, "markers":Ljava/util/ArrayList;
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getMarkerRanges()[I

    move-result-object v10

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v11

    invoke-direct {v0, v10, v11}, Lcom/alicegpt/textfollower/ui/SectionText;->firstRangeAtOrAfter([II)I

    move-result v10

    .line 65
    .local v10, "mi":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getMarkerRanges()[I

    move-result-object v11

    array-length v11, v11

    div-int/lit8 v11, v11, 0x2

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getMarkerRanges()[I

    move-result-object v11

    mul-int/lit8 v13, v10, 0x2

    aget v11, v11, v13

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getEnd()I

    move-result v13

    if-ge v11, v13, :cond_1

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getMarkerRanges()[I

    move-result-object v11

    mul-int/lit8 v13, v10, 0x2

    aget v11, v11, v13

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v13

    sub-int/2addr v11, v13

    .line 67
    .local v11, "a":I
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getMarkerRanges()[I

    move-result-object v13

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v12

    aget v12, v13, v14

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v13

    sub-int/2addr v12, v13

    .line 68
    .local v12, "b":I
    move v13, v12

    .line 69
    .local v13, "e":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_0

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 70
    :cond_0
    new-instance v14, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;

    add-int/lit8 v15, v11, 0x1

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v5, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v11, v13, v3}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;-><init>(IILjava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    nop

    .end local v11    # "a":I
    .end local v12    # "b":I
    .end local v13    # "e":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v6, "iterator(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v11, "next(...)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;

    .local v6, "m":Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;
    new-instance v11, Lcom/alicegpt/textfollower/ui/HiddenSpan;

    invoke-direct {v11}, Lcom/alicegpt/textfollower/ui/HiddenSpan;-><init>()V

    invoke-virtual {v6}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->getFrom()I

    move-result v13

    invoke-virtual {v6}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->getTo()I

    move-result v14

    invoke-virtual {v7, v11, v13, v14, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .end local v6    # "m":Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getHeadingRanges()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v6

    invoke-direct {v0, v3, v6}, Lcom/alicegpt/textfollower/ui/SectionText;->firstRangeAtOrAfter([II)I

    move-result v3

    .line 77
    .local v3, "hi":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v6, "headingParagraphs":Ljava/util/HashSet;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getHeadingRanges()[I

    move-result-object v11

    array-length v11, v11

    div-int/lit8 v11, v11, 0x2

    if-ge v3, v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getHeadingRanges()[I

    move-result-object v11

    mul-int/lit8 v13, v3, 0x2

    aget v11, v11, v13

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getEnd()I

    move-result v13

    if-ge v11, v13, :cond_3

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getHeadingRanges()[I

    move-result-object v11

    mul-int/lit8 v13, v3, 0x2

    aget v11, v11, v13

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v13

    sub-int/2addr v11, v13

    .line 80
    .restart local v11    # "a":I
    invoke-virtual/range {p1 .. p1}, Lcom/alicegpt/textfollower/text/Doc;->getHeadingRanges()[I

    move-result-object v13

    mul-int/lit8 v14, v3, 0x2

    add-int/2addr v14, v12

    aget v13, v13, v14

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v14

    sub-int/2addr v13, v14

    .line 81
    .local v13, "b":I
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    move/from16 v15, p4

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v14, v11, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    new-instance v14, Landroid/text/style/StyleSpan;

    invoke-direct {v14, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v14, v11, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const/high16 v12, 0x3fa00000    # 1.25f

    invoke-direct {v14, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7, v14, v11, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    nop

    .end local v11    # "a":I
    .end local v13    # "b":I
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x1

    goto :goto_3

    .line 78
    :cond_3
    move/from16 v15, p4

    .line 89
    const/4 v11, 0x0

    .line 90
    .local v11, "p0":I
    const/4 v12, 0x0

    .line 91
    .local v12, "mk":I
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v11, v13, :cond_e

    .line 92
    const/4 v13, 0x0

    .local v13, "p1":I
    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v17, 0xa

    const/16 v19, 0x0

    move/from16 v18, v11

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v13

    .line 93
    if-gez v13, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    .line 94
    :cond_4
    if-le v13, v11, :cond_c

    .line 95
    const/4 v14, 0x0

    .line 96
    .local v14, "label":Ljava/lang/String;
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_6

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->getFrom()I

    move-result v0

    if-ge v0, v13, :cond_6

    .line 97
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->getFrom()I

    move-result v0

    if-lt v0, v11, :cond_5

    if-nez v14, :cond_5

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 98
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 100
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v13, v0, :cond_7

    add-int/lit8 v0, v13, 0x1

    goto :goto_6

    :cond_7
    move v0, v13

    .line 101
    .local v0, "end":I
    :goto_6
    move-object/from16 v16, v2

    .end local v2    # "sec":Lcom/alicegpt/textfollower/text/Section;
    .local v16, "sec":Lcom/alicegpt/textfollower/text/Section;
    new-instance v2, Lcom/alicegpt/textfollower/ui/GutterSpan;

    invoke-direct {v2, v14, v1}, Lcom/alicegpt/textfollower/ui/GutterSpan;-><init>(Ljava/lang/String;Lcom/alicegpt/textfollower/ui/GutterStyle;)V

    invoke-virtual {v7, v2, v11, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    move-object v2, v6

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 123
    .local v17, "$i$f$any":I
    instance-of v1, v2, Ljava/util/Collection;

    const/16 v18, 0x0

    if-eqz v1, :cond_8

    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    .line 124
    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "element$iv":Ljava/lang/Object;
    move-object/from16 v20, v19

    check-cast v20, Ljava/lang/Number;

    move-object/from16 v21, v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v1

    .local v1, "it":I
    const/16 v20, 0x0

    .line 102
    .local v20, "$i$a$-any-SectionText$build$1":I
    if-gt v11, v1, :cond_9

    if-ge v1, v13, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    move/from16 v1, v18

    .line 124
    .end local v1    # "it":I
    .end local v20    # "$i$a$-any-SectionText$build$1":I
    :goto_8
    if-eqz v1, :cond_a

    const/16 v18, 0x1

    goto :goto_9

    :cond_a
    move-object/from16 v1, v21

    goto :goto_7

    .line 125
    .end local v19    # "element$iv":Ljava/lang/Object;
    :cond_b
    nop

    .line 102
    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$any":I
    :goto_9
    if-eqz v18, :cond_d

    .line 103
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v7, v1, v11, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 94
    .end local v0    # "end":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v16    # "sec":Lcom/alicegpt/textfollower/text/Section;
    .local v2, "sec":Lcom/alicegpt/textfollower/text/Section;
    :cond_c
    move-object/from16 v16, v2

    .line 106
    .end local v2    # "sec":Lcom/alicegpt/textfollower/text/Section;
    .restart local v16    # "sec":Lcom/alicegpt/textfollower/text/Section;
    :cond_d
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v13, v0, :cond_f

    .line 107
    add-int/lit8 v11, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    .end local v13    # "p1":I
    goto/16 :goto_4

    .line 91
    .end local v16    # "sec":Lcom/alicegpt/textfollower/text/Section;
    .restart local v2    # "sec":Lcom/alicegpt/textfollower/text/Section;
    :cond_e
    move-object/from16 v16, v2

    .line 109
    .end local v2    # "sec":Lcom/alicegpt/textfollower/text/Section;
    .restart local v16    # "sec":Lcom/alicegpt/textfollower/text/Section;
    :cond_f
    return-object v7
.end method
