.class public final Lcom/alicegpt/textfollower/text/Doc$Companion;
.super Ljava/lang/Object;
.source "Doc.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/text/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDoc.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Doc.kt\ncom/alicegpt/textfollower/text/Doc$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n37#2,2:252\n295#3,2:254\n434#4:256\n507#4,5:257\n1069#4,2:262\n434#4:264\n507#4,5:265\n1069#4,2:270\n1#5:272\n*S KotlinDebug\n*F\n+ 1 Doc.kt\ncom/alicegpt/textfollower/text/Doc$Companion\n*L\n111#1:252,2\n118#1:254,2\n121#1:256\n121#1:257,5\n122#1:262,2\n128#1:264\n128#1:265,5\n129#1:270,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0080\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0016\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u001aj\u0008\u0012\u0004\u0012\u00020\u0007`\u001b2\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001aj\u0008\u0012\u0004\u0012\u00020\u0005`\u001b2\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001aj\u0008\u0012\u0004\u0012\u00020\u0005`\u001b2\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001aj\u0008\u0012\u0004\u0012\u00020\u0005`\u001bH\u0002J \u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0002JB\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\t2\u0006\u0010\u0016\u001a\u00020\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0005H\u0002J(\u0010(\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020\u0005H\u0002J\u0018\u0010+\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&2\u0006\u0010,\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/Doc$Companion;",
        "",
        "<init>",
        "()V",
        "DEFAULT_SECTION_CHARS",
        "",
        "BOM",
        "",
        "HEADING_KEYWORDS",
        "",
        "MIXED_CASE_HEADING",
        "Lkotlin/text/Regex;",
        "parse",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "raw",
        "maxSectionChars",
        "isHeading",
        "",
        "line",
        "prettyTitle",
        "tokenizeLine",
        "",
        "text",
        "from",
        "to",
        "norm",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "starts",
        "ends",
        "markers",
        "markerEnd",
        "i",
        "buildSections",
        "Lcom/alicegpt/textfollower/text/Section;",
        "headings",
        "titles",
        "wordStart",
        "",
        "maxChars",
        "pieceEnd",
        "start",
        "limit",
        "firstWordIndex",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/alicegpt/textfollower/text/Doc$Companion;-><init>()V

    return-void
.end method

.method private final buildSections(Ljava/lang/String;Ljava/util/List;Ljava/util/List;[II)Ljava/util/List;
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "headings"    # Ljava/util/List;
    .param p3, "titles"    # Ljava/util/List;
    .param p4, "wordStart"    # [I
    .param p5, "maxChars"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[II)",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/Section;",
            ">;"
        }
    .end annotation

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v4, "bounds":Ljava/util/ArrayList;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 192
    new-instance v5, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    const-string v7, "\u0412\u0435\u0441\u044c \u0442\u0435\u043a\u0441\u0442"

    invoke-direct {v5, v7, v6}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 195
    .local v5, "firstHeading":I
    invoke-direct {v0, v3, v6}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v7

    invoke-direct {v0, v3, v5}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 196
    new-instance v7, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    const-string v8, "\u041d\u0430\u0447\u0430\u043b\u043e"

    invoke-direct {v7, v8, v6}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    const/4 v6, 0x0

    .local v6, "k":I
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    new-instance v8, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    mul-int/lit8 v10, v6, 0x2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    .end local v5    # "firstHeading":I
    .end local v6    # "k":I
    :cond_2
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, "sections":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "b":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_7

    .line 203
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->getStart()I

    move-result v8

    .line 204
    .local v8, "bStart":I
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    invoke-virtual {v9}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->getStart()I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    :goto_3
    move v15, v9

    .line 205
    .local v15, "bEnd":I
    move v9, v8

    .line 206
    .local v9, "pieceStart":I
    const/4 v10, 0x1

    move v14, v9

    move/from16 v23, v10

    .line 207
    .end local v9    # "pieceStart":I
    .local v14, "pieceStart":I
    .local v23, "first":Z
    :goto_4
    if-ge v14, v15, :cond_5

    .line 208
    move-object/from16 v13, p1

    move/from16 v12, p5

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/alicegpt/textfollower/text/Doc$Companion;->pieceEnd(Ljava/lang/String;III)I

    move-result v9

    .line 209
    .local v9, "pieceEnd":I
    nop

    .line 210
    new-instance v10, Lcom/alicegpt/textfollower/text/Section;

    .line 211
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    invoke-virtual {v11}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->getTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v23, :cond_4

    move-object/from16 v17, v11

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " (\u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u0435)"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    .line 212
    :goto_5
    nop

    .line 213
    nop

    .line 214
    nop

    .line 215
    invoke-direct {v0, v3, v14}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v21

    .line 216
    invoke-direct {v0, v3, v9}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v22

    .line 210
    move-object/from16 v16, v10

    move/from16 v18, v23

    move/from16 v19, v14

    move/from16 v20, v9

    invoke-direct/range {v16 .. v22}, Lcom/alicegpt/textfollower/text/Section;-><init>(Ljava/lang/String;ZIIII)V

    .line 209
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/16 v23, 0x0

    .line 220
    move v14, v9

    move-object/from16 v1, p2

    .end local v9    # "pieceEnd":I
    goto :goto_4

    .line 222
    :cond_5
    move-object/from16 v13, p1

    move/from16 v12, p5

    if-eqz v23, :cond_6

    .line 223
    nop

    .line 224
    new-instance v1, Lcom/alicegpt/textfollower/text/Section;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;

    invoke-virtual {v9}, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v3, v8}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v16

    invoke-direct {v0, v3, v8}, Lcom/alicegpt/textfollower/text/Doc$Companion;->firstWordIndex([II)I

    move-result v17

    const/4 v11, 0x1

    move-object v9, v1

    move v12, v8

    move v13, v15

    move/from16 v18, v14

    .end local v14    # "pieceStart":I
    .local v18, "pieceStart":I
    move/from16 v14, v16

    move/from16 v16, v15

    .end local v15    # "bEnd":I
    .local v16, "bEnd":I
    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lcom/alicegpt/textfollower/text/Section;-><init>(Ljava/lang/String;ZIIII)V

    .line 223
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 222
    .end local v16    # "bEnd":I
    .end local v18    # "pieceStart":I
    .restart local v14    # "pieceStart":I
    .restart local v15    # "bEnd":I
    :cond_6
    move/from16 v18, v14

    move/from16 v16, v15

    .line 202
    .end local v8    # "bStart":I
    .end local v14    # "pieceStart":I
    .end local v15    # "bEnd":I
    .end local v23    # "first":Z
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_2

    .line 228
    .end local v6    # "b":I
    :cond_7
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final firstWordIndex([II)I
    .locals 4
    .param p1, "wordStart"    # [I
    .param p2, "offset"    # I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "lo":I
    array-length v1, p1

    .line 243
    .local v1, "hi":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 244
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 245
    .local v2, "mid":I
    aget v3, p1, v2

    if-lt v3, p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "mid":I
    goto :goto_0

    .line 247
    :cond_1
    return v0
.end method

.method private final markerEnd(Ljava/lang/String;II)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "to"    # I

    .line 174
    add-int/lit8 v0, p2, 0x1

    .line 175
    .local v0, "j":I
    move v1, v0

    .line 176
    .local v1, "digitsFrom":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, p3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_0

    const/16 v5, 0x3a

    if-ge v4, v5, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    sub-int v4, v0, v1

    .line 178
    .local v4, "digits":I
    if-gt v3, v4, :cond_2

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    if-ge v0, p3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5d

    if-ne v3, v5, :cond_3

    add-int/lit8 v2, v0, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic parse$default(Lcom/alicegpt/textfollower/text/Doc$Companion;Ljava/lang/String;IILjava/lang/Object;)Lcom/alicegpt/textfollower/text/Doc;
    .locals 0

    .line 80
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x7530

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alicegpt/textfollower/text/Doc$Companion;->parse(Ljava/lang/String;I)Lcom/alicegpt/textfollower/text/Doc;

    move-result-object p0

    return-object p0
.end method

.method private final pieceEnd(Ljava/lang/String;III)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "maxChars"    # I

    .line 233
    sub-int v0, p3, p2

    if-gt v0, p4, :cond_0

    return p3

    .line 234
    :cond_0
    add-int v0, p2, p4

    .line 235
    .local v0, "hard":I
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 236
    .local v1, "nl":I
    div-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p2

    if-le v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method private final prettyTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "line"    # Ljava/lang/String;

    .line 127
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\s+"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "t":Ljava/lang/String;
    move-object v2, v0

    .local v2, "$this$filter$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 264
    .local v4, "$i$f$filter":I
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v6, Ljava/lang/Appendable;

    .local v6, "destination$iv$iv":Ljava/lang/Appendable;
    const/4 v7, 0x0

    .line 265
    .local v7, "$i$f$filterTo":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_1

    .line 266
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 267
    .local v10, "element$iv$iv":C
    move v11, v10

    .local v11, "it":C
    const/4 v12, 0x0

    .line 128
    .local v12, "$i$a$-filter-Doc$Companion$prettyTitle$letters$1":I
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    .line 267
    .end local v11    # "it":C
    .end local v12    # "$i$a$-filter-Doc$Companion$prettyTitle$letters$1":I
    if-eqz v13, :cond_0

    invoke-interface {v6, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 265
    .end local v10    # "element$iv$iv":C
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 269
    .end local v8    # "index$iv$iv":I
    :cond_1
    nop

    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    .end local v6    # "destination$iv$iv":Ljava/lang/Appendable;
    .end local v7    # "$i$f$filterTo":I
    move-object v5, v6

    check-cast v5, Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .end local v2    # "$this$filter$iv":Ljava/lang/String;
    .end local v4    # "$i$f$filter":I
    move-object v2, v5

    .line 129
    .local v2, "letters":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$all$iv":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$f$all":I
    move v6, v3

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .local v7, "element$iv":C
    move v8, v7

    .local v8, "it":C
    const/4 v9, 0x0

    .line 129
    .local v9, "$i$a$-all-Doc$Companion$prettyTitle$shout$1":I
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    .line 270
    .end local v8    # "it":C
    .end local v9    # "$i$a$-all-Doc$Companion$prettyTitle$shout$1":I
    if-nez v10, :cond_3

    move v4, v3

    goto :goto_3

    .end local v7    # "element$iv":C
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 271
    :cond_4
    move v4, v1

    .line 129
    .end local v4    # "$this$all$iv":Ljava/lang/CharSequence;
    .end local v5    # "$i$f$all":I
    :goto_3
    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v3

    .line 130
    .local v4, "shout":Z
    :goto_4
    if-eqz v4, :cond_6

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object v5, v0

    .line 131
    .local v5, "base":Ljava/lang/String;
    :goto_5
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    move v6, v1

    goto :goto_6

    :cond_7
    move v6, v3

    :goto_6
    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 272
    nop

    .local v3, "it":C
    const/4 v7, 0x0

    .line 131
    .local v7, "$i$a$-replaceFirstCharWithCharSequence-Doc$Companion$prettyTitle$1":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toUpperCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    .end local v3    # "it":C
    .end local v7    # "$i$a$-replaceFirstCharWithCharSequence-Doc$Companion$prettyTitle$1":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "substring(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v5

    :goto_7
    return-object v1
.end method

.method private final tokenizeLine(Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "norm"    # Ljava/util/ArrayList;
    .param p5, "starts"    # Ljava/util/ArrayList;
    .param p6, "ends"    # Ljava/util/ArrayList;
    .param p7, "markers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 144
    move v0, p2

    .line 145
    .local v0, "i":I
    :cond_0
    :goto_0
    if-ge v0, p3, :cond_5

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 147
    .local v1, "c":C
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 148
    invoke-direct {p0, p1, v0, p3}, Lcom/alicegpt/textfollower/text/Doc$Companion;->markerEnd(Ljava/lang/String;II)I

    move-result v2

    .line 149
    .local v2, "close":I
    if-lez v2, :cond_1

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move v0, v2

    .line 153
    goto :goto_0

    .line 156
    .end local v2    # "close":I
    :cond_1
    sget-object v2, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {v2, v1}, Lcom/alicegpt/textfollower/text/Words;->isWordStart(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    move v2, v0

    .line 158
    .local v2, "s":I
    add-int/lit8 v0, v0, 0x1

    .line 159
    :goto_1
    if-ge v0, p3, :cond_2

    sget-object v3, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alicegpt/textfollower/text/Words;->isWordPart(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_2
    sget-object v3, Lcom/alicegpt/textfollower/text/Words;->INSTANCE:Lcom/alicegpt/textfollower/text/Words;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/alicegpt/textfollower/text/Words;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "w":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v2    # "s":I
    .end local v3    # "w":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "c":C
    :cond_5
    return-void
.end method


# virtual methods
.method public final isHeading(Ljava/lang/String;)Z
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "line"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "t":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x3c

    if-le v2, v5, :cond_1

    goto/16 :goto_8

    .line 117
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "toLowerCase(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .local v2, "lower":Ljava/lang/String;
    invoke-static {}, Lcom/alicegpt/textfollower/text/Doc;->access$getHEADING_KEYWORDS$cp()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 254
    .local v6, "$i$f$firstOrNull":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 118
    .local v11, "$i$a$-firstOrNull-Doc$Companion$isHeading$keyword$1":I
    const/4 v12, 0x2

    invoke-static {v2, v10, v4, v12, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    .line 254
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-firstOrNull-Doc$Companion$isHeading$keyword$1":I
    if-eqz v9, :cond_2

    move-object v9, v8

    goto :goto_1

    .line 255
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 118
    .end local v5    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_4

    return v4

    :cond_4
    move-object v5, v9

    .line 119
    .local v5, "keyword":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .local v6, "rest":Ljava/lang/String;
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v4

    :goto_2
    if-eqz v7, :cond_6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_6

    return v4

    .line 121
    :cond_6
    move-object v7, v1

    .local v7, "$this$filter$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 256
    .local v8, "$i$f$filter":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v10, Ljava/lang/Appendable;

    .local v10, "destination$iv$iv":Ljava/lang/Appendable;
    const/4 v11, 0x0

    .line 257
    .local v11, "$i$f$filterTo":I
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    :goto_3
    if-ge v12, v13, :cond_8

    .line 258
    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 259
    .local v14, "element$iv$iv":C
    move v15, v14

    .local v15, "it":C
    const/16 v16, 0x0

    .line 121
    .local v16, "$i$a$-filter-Doc$Companion$isHeading$letters$1":I
    invoke-static {v15}, Ljava/lang/Character;->isLetter(C)Z

    move-result v17

    .line 259
    .end local v15    # "it":C
    .end local v16    # "$i$a$-filter-Doc$Companion$isHeading$letters$1":I
    if-eqz v17, :cond_7

    invoke-interface {v10, v14}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 257
    .end local v14    # "element$iv$iv":C
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 261
    .end local v12    # "index$iv$iv":I
    :cond_8
    nop

    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    .end local v10    # "destination$iv$iv":Ljava/lang/Appendable;
    .end local v11    # "$i$f$filterTo":I
    move-object v9, v10

    check-cast v9, Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "toString(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .end local v7    # "$this$filter$iv":Ljava/lang/String;
    .end local v8    # "$i$f$filter":I
    move-object v7, v9

    .line 122
    .local v7, "letters":Ljava/lang/String;
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_9

    move v8, v3

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    if-eqz v8, :cond_c

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    .local v8, "$this$all$iv":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 262
    .local v9, "$i$f$all":I
    move v10, v4

    :goto_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    invoke-interface {v8, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .local v11, "element$iv":C
    move v12, v11

    .local v12, "it":C
    const/4 v13, 0x0

    .line 122
    .local v13, "$i$a$-all-Doc$Companion$isHeading$1":I
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    .line 262
    .end local v12    # "it":C
    .end local v13    # "$i$a$-all-Doc$Companion$isHeading$1":I
    if-nez v14, :cond_a

    move v8, v4

    goto :goto_6

    .end local v11    # "element$iv":C
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 263
    :cond_b
    move v8, v3

    .line 122
    .end local v8    # "$this$all$iv":Ljava/lang/CharSequence;
    .end local v9    # "$i$f$all":I
    :goto_6
    if-eqz v8, :cond_c

    return v3

    .line 123
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x1e

    if-gt v8, v9, :cond_d

    invoke-static {}, Lcom/alicegpt/textfollower/text/Doc;->access$getMIXED_CASE_HEADING$cp()Lkotlin/text/Regex;

    move-result-object v8

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    move v3, v4

    :goto_7
    return v3

    .line 116
    .end local v2    # "lower":Ljava/lang/String;
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "rest":Ljava/lang/String;
    .end local v7    # "letters":Ljava/lang/String;
    :cond_e
    :goto_8
    return v4
.end method

.method public final parse(Ljava/lang/String;I)Lcom/alicegpt/textfollower/text/Doc;
    .locals 21
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "maxSectionChars"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "raw"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/alicegpt/textfollower/text/Doc;->access$getBOM$cp()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v9, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\r\n"

    const-string v3, "\n"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v11, 0xd

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, "text":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 84
    .local v11, "norm":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 85
    .local v12, "starts":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 86
    .local v13, "ends":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 87
    .local v14, "markers":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 88
    .local v15, "headings":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 90
    .local v7, "headingTitles":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .line 91
    .local v0, "lineStart":I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 92
    move-object v1, v10

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 93
    .local v1, "lineEnd":I
    if-gez v1, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    move v6, v1

    .line 94
    .end local v1    # "lineEnd":I
    .local v6, "lineEnd":I
    invoke-virtual {v10, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    .line 95
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lcom/alicegpt/textfollower/text/Doc$Companion;->isHeading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 97
    .local v1, "trimmedStart":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v6, v2

    .line 98
    .local v2, "trimmedEnd":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {v8, v5}, Lcom/alicegpt/textfollower/text/Doc$Companion;->prettyTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v0

    move-object/from16 v17, v5

    move v8, v6

    move-object/from16 v18, v7

    .end local v1    # "trimmedStart":I
    .end local v2    # "trimmedEnd":I
    goto :goto_1

    .line 102
    :cond_1
    move/from16 v16, v0

    .end local v0    # "lineStart":I
    .local v16, "lineStart":I
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move v3, v6

    move-object v4, v11

    move-object/from16 v17, v5

    .end local v5    # "line":Ljava/lang/String;
    .local v17, "line":Ljava/lang/String;
    move-object v5, v12

    move v8, v6

    .end local v6    # "lineEnd":I
    .local v8, "lineEnd":I
    move-object v6, v13

    move-object/from16 v18, v7

    .end local v7    # "headingTitles":Ljava/util/ArrayList;
    .local v18, "headingTitles":Ljava/util/ArrayList;
    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/alicegpt/textfollower/text/Doc$Companion;->tokenizeLine(Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 104
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 105
    add-int/lit8 v0, v8, 0x1

    move-object/from16 v8, p0

    move-object/from16 v7, v18

    .end local v8    # "lineEnd":I
    .end local v16    # "lineStart":I
    .end local v17    # "line":Ljava/lang/String;
    .restart local v0    # "lineStart":I
    goto/16 :goto_0

    .line 91
    .end local v18    # "headingTitles":Ljava/util/ArrayList;
    .restart local v7    # "headingTitles":Ljava/util/ArrayList;
    :cond_2
    move/from16 v16, v0

    move-object/from16 v18, v7

    .line 108
    .end local v0    # "lineStart":I
    .end local v7    # "headingTitles":Ljava/util/ArrayList;
    .restart local v16    # "lineStart":I
    .restart local v18    # "headingTitles":Ljava/util/ArrayList;
    :cond_3
    move-object v0, v12

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 109
    .local v8, "wordStart":[I
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v17

    .line 110
    .local v17, "wordEnd":[I
    move-object v2, v15

    check-cast v2, Ljava/util/List;

    move-object/from16 v3, v18

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v4, v8

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alicegpt/textfollower/text/Doc$Companion;->buildSections(Ljava/lang/String;Ljava/util/List;Ljava/util/List;[II)Ljava/util/List;

    move-result-object v19

    .line 111
    .local v19, "sections":Ljava/util/List;
    new-instance v20, Lcom/alicegpt/textfollower/text/Doc;

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 252
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 253
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 111
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v6

    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v10

    move-object v3, v8

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v7}, Lcom/alicegpt/textfollower/text/Doc;-><init>(Ljava/lang/String;[Ljava/lang/String;[I[ILjava/util/List;[I[I)V

    return-object v20
.end method
