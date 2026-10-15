.class public final Lcom/alicegpt/textfollower/text/TextLoader;
.super Ljava/lang/Object;
.source "TextLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLoader.kt\ncom/alicegpt/textfollower/text/TextLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,373:1\n1#2:374\n1755#3,3:375\n648#4,5:378\n*S KotlinDebug\n*F\n+ 1 TextLoader.kt\ncom/alicegpt/textfollower/text/TextLoader\n*L\n83#1:375,3\n293#1:378,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001>B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u001a\u0010\u0010\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001a\u0010\u0015\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001fH\u0002J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001f2\u0006\u0010!\u001a\u00020\u0008H\u0002J0\u0010\"\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080$\u0012\u0004\u0012\u00020\u00170#2\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0017H\u0002J\u001a\u0010\'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u00082\u0008\u0010)\u001a\u0004\u0018\u00010\u0008H\u0002J\u0010\u0010*\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0008H\u0002J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010.\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0008H\u0002J\u0010\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0008H\u0002J\u000e\u00104\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0008J$\u00105\u001a\u0002062\n\u00107\u001a\u000608j\u0002`92\u0006\u0010%\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u0019H\u0002J\u0012\u0010;\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u000e\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000800X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/TextLoader;",
        "",
        "<init>",
        "()V",
        "WINDOWS_1251",
        "Ljava/nio/charset/Charset;",
        "LATIN1",
        "BOM",
        "",
        "load",
        "bytes",
        "",
        "decode",
        "declared",
        "charsetOrNull",
        "name",
        "decodeHtml",
        "headerCharset",
        "META_CHARSET",
        "Lkotlin/text/Regex;",
        "sniffMetaCharset",
        "headAsText",
        "n",
        "",
        "looksLikeHtml",
        "",
        "looksLikeMht",
        "mhtToText",
        "findHtmlPart",
        "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;",
        "root",
        "",
        "parseMime",
        "message",
        "parseHeaders",
        "Lkotlin/Pair;",
        "",
        "s",
        "from",
        "decodeTransfer",
        "body",
        "encoding",
        "decodeQuotedPrintable",
        "hex",
        "c",
        "",
        "decodeBase64",
        "BLOCK_TAGS",
        "",
        "NAMED_ENTITIES",
        "mainRegion",
        "html",
        "htmlToText",
        "appendText",
        "",
        "out",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "preformatted",
        "decodeEntity",
        "normalizeText",
        "text",
        "MimePart",
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
.field private static final BLOCK_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOM:Ljava/lang/String;

.field public static final INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

.field private static final LATIN1:Ljava/nio/charset/Charset;

.field private static final META_CHARSET:Lkotlin/text/Regex;

.field private static final NAMED_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WINDOWS_1251:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/alicegpt/textfollower/text/TextLoader;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/text/TextLoader;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

    .line 14
    const-string v0, "windows-1251"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->WINDOWS_1251:Ljava/nio/charset/Charset;

    .line 15
    sget-object v0, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    .line 16
    const v0, 0xfeff

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->BOM:Ljava/lang/String;

    .line 64
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "charset\\s*=\\s*[\"\']?\\s*([A-Za-z0-9_\\-:.]+)"

    sget-object v2, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->META_CHARSET:Lkotlin/text/Regex;

    .line 238
    nop

    .line 239
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "p"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "div"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "br"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "li"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "ul"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "ol"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "tr"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "table"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "hr"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "h1"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "h2"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "h3"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "h4"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "h5"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "h6"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    .line 240
    const-string v1, "pre"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    .line 239
    nop

    .line 240
    const-string v1, "blockquote"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    .line 239
    nop

    .line 240
    const-string v1, "dd"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    .line 239
    nop

    .line 240
    const-string v1, "dt"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    .line 239
    nop

    .line 240
    const-string v1, "dl"

    const/16 v21, 0x13

    aput-object v1, v0, v21

    .line 239
    nop

    .line 240
    const-string v1, "section"

    const/16 v22, 0x14

    aput-object v1, v0, v22

    .line 239
    nop

    .line 240
    const-string v1, "article"

    const/16 v15, 0x15

    aput-object v1, v0, v15

    .line 239
    nop

    .line 240
    const-string v1, "header"

    const/16 v23, 0x16

    aput-object v1, v0, v23

    .line 239
    nop

    .line 240
    const-string v1, "footer"

    const/16 v23, 0x17

    aput-object v1, v0, v23

    .line 239
    nop

    .line 240
    const-string v1, "center"

    const/16 v23, 0x18

    aput-object v1, v0, v23

    .line 239
    nop

    .line 240
    const-string v1, "form"

    const/16 v23, 0x19

    aput-object v1, v0, v23

    .line 239
    nop

    .line 238
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->BLOCK_TAGS:Ljava/util/Set;

    .line 243
    nop

    .line 244
    new-array v0, v15, [Lkotlin/Pair;

    const-string v1, "nbsp"

    const-string v15, " "

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "amp"

    const-string v2, "&"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "lt"

    const-string v2, "<"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "gt"

    const-string v2, ">"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "quot"

    const-string v2, "\""

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    .line 245
    const-string v1, "mdash"

    const-string v2, "\u2014"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v8

    .line 244
    nop

    .line 245
    const-string v1, "ndash"

    const-string v2, "\u2013"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v9

    .line 244
    nop

    .line 245
    const-string v1, "laquo"

    const-string v2, "\u00ab"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v10

    .line 244
    nop

    .line 245
    const-string v1, "raquo"

    const-string v2, "\u00bb"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v11

    .line 244
    nop

    .line 245
    const-string v1, "hellip"

    const-string v2, "\u2026"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v12

    .line 244
    nop

    .line 246
    const-string v1, "bdquo"

    const-string v2, "\u201e"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v13

    .line 244
    nop

    .line 246
    const-string v1, "ldquo"

    const-string v2, "\u201c"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v14

    .line 244
    nop

    .line 246
    const-string v1, "rdquo"

    const-string v2, "\u201d"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 244
    nop

    .line 246
    const-string v1, "lsquo"

    const-string v2, "\u2018"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v16

    .line 244
    nop

    .line 246
    const-string v1, "rsquo"

    const-string v2, "\u2019"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v17

    .line 244
    nop

    .line 247
    const-string v1, "copy"

    const-string v2, "\u00a9"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v18

    .line 244
    nop

    .line 247
    const-string v1, "shy"

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v19

    .line 244
    nop

    .line 247
    const-string v1, "middot"

    const-string v2, "\u00b7"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v20

    .line 244
    nop

    .line 247
    const-string v1, "sect"

    const-string v2, "\u00a7"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v21

    .line 244
    nop

    .line 247
    const-string v1, "deg"

    const-string v2, "\u00b0"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v22

    .line 244
    nop

    .line 243
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->NAMED_ENTITIES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final appendText(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "preformatted"    # Z

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 330
    .local v3, "ch":C
    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eqz p3, :cond_1

    .line 331
    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 332
    :cond_1
    const/16 v6, 0x20

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    if-eq v3, v6, :cond_3

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 333
    :cond_3
    :goto_2
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v4

    if-eq v4, v6, :cond_5

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v4

    if-eq v4, v5, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 329
    :goto_4
    nop

    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_6
    return-void
.end method

.method private final charsetOrNull(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    nop

    .line 54
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 2
        0x22s
        0x27s
    .end array-data
.end method

.method private final decodeBase64(Ljava/lang/String;)[B
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 215
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 216
    .local v1, "buffer":I
    const/4 v2, 0x0

    .line 217
    .local v2, "bits":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_b

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 218
    .local v6, "c":C
    nop

    .line 219
    const/16 v7, 0x41

    const/4 v8, 0x1

    if-gt v7, v6, :cond_0

    const/16 v7, 0x5b

    if-ge v6, v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, -0x41

    goto :goto_6

    .line 220
    :cond_1
    const/16 v7, 0x61

    if-gt v7, v6, :cond_2

    const/16 v7, 0x7b

    if-ge v6, v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, -0x61

    add-int/lit8 v7, v7, 0x1a

    goto :goto_6

    .line 221
    :cond_3
    const/16 v7, 0x30

    if-gt v7, v6, :cond_4

    const/16 v7, 0x3a

    if-ge v6, v7, :cond_4

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    if-eqz v8, :cond_5

    add-int/lit8 v7, v6, -0x30

    add-int/lit8 v7, v7, 0x34

    goto :goto_6

    .line 222
    :cond_5
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_9

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_6

    goto :goto_5

    .line 223
    :cond_6
    const/16 v7, 0x2f

    if-eq v6, v7, :cond_8

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_7

    goto :goto_4

    .line 224
    :cond_7
    goto :goto_7

    .line 223
    :cond_8
    :goto_4
    const/16 v7, 0x3f

    goto :goto_6

    .line 222
    :cond_9
    :goto_5
    const/16 v7, 0x3e

    .line 218
    :goto_6
    nop

    .line 226
    .local v7, "v":I
    shl-int/lit8 v8, v1, 0x6

    or-int v1, v8, v7

    .line 227
    add-int/lit8 v2, v2, 0x6

    .line 228
    const/16 v8, 0x8

    if-lt v2, v8, :cond_a

    .line 229
    add-int/lit8 v2, v2, -0x8

    .line 230
    shr-int v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    .end local v6    # "c":C
    .end local v7    # "v":I
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "toByteArray(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method private final decodeEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 341
    const-string v0, "#"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    nop

    .line 343
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "substring(...)"

    const/4 v5, 0x1

    if-le v0, v5, :cond_1

    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x78

    if-eq v0, v6, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x58

    if-ne v0, v6, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    :goto_0
    nop

    .line 347
    .local v0, "code":I
    if-gt v5, v0, :cond_2

    const/high16 v2, 0x110000

    if-ge v0, v2, :cond_2

    move v1, v5

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    const-string v2, "toChars(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    :cond_3
    return-object v3

    .line 344
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v3

    .line 349
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    sget-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->NAMED_ENTITIES:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final decodeHtml([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "headerCharset"    # Ljava/lang/String;

    .line 60
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->sniffMetaCharset([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 61
    .local v0, "declared":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final decodeQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 186
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 187
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 189
    .local v2, "c":C
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    .line 190
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 191
    :cond_0
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 192
    :cond_1
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/alicegpt/textfollower/text/TextLoader;->hex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->hex(C)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    .line 193
    .local v3, "h":I
    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->hex(C)I

    move-result v4

    if-ltz v4, :cond_3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->hex(C)I

    move-result v4

    if-ltz v4, :cond_3

    .line 194
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    add-int/lit8 v1, v1, 0x3

    .line 196
    goto/16 :goto_0

    .line 199
    .end local v3    # "h":I
    :cond_3
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "toByteArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private final decodeTransfer(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 178
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    const-string v1, "quoted-printable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 180
    :cond_1
    const-string v1, "base64"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_1
    return-object v0
.end method

.method private final findHtmlPart(Ljava/util/List;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    .locals 1
    .param p1, "root"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;",
            ">;)",
            "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;"
        }
    .end annotation

    .line 114
    const-string v0, "text/html"

    invoke-static {p1, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->findHtmlPart$walk(Ljava/util/List;Ljava/lang/String;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    invoke-static {p1, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->findHtmlPart$walk(Ljava/util/List;Ljava/lang/String;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static final findHtmlPart$walk(Ljava/util/List;Ljava/lang/String;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    .locals 7
    .param p0, "parts"    # Ljava/util/List;
    .param p1, "wanted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;"
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    .line 104
    .local v1, "p":Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "content-type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .local v3, "type":Ljava/lang/String;
    const-string v4, "multipart/"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    sget-object v2, Lcom/alicegpt/textfollower/text/TextLoader;->INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;->getBody()[B

    move-result-object v5

    sget-object v6, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->parseMime(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "inner":Ljava/util/List;
    invoke-static {v2, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->findHtmlPart$walk(Ljava/util/List;Ljava/lang/String;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, v4

    .line 374
    .local v0, "it":Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$a$-let-TextLoader$findHtmlPart$walk$1":I
    return-object v0

    .line 108
    .end local v0    # "it":Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    .end local v2    # "inner":Ljava/util/List;
    .end local v4    # "$i$a$-let-TextLoader$findHtmlPart$walk$1":I
    :cond_2
    invoke-static {v3, p1, v5, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    return-object v1

    .line 112
    .end local v1    # "p":Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    .end local v3    # "type":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private final headAsText([BI)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "n"    # I

    new-instance v0, Ljava/lang/String;

    .line 73
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static synthetic headAsText$default(Lcom/alicegpt/textfollower/text/TextLoader;[BIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 73
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x800

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/text/TextLoader;->headAsText([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final hex(C)I
    .locals 3
    .param p1, "c"    # C

    .line 205
    nop

    .line 206
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x30

    goto :goto_3

    .line 207
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x47

    if-ge p1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 208
    :cond_3
    const/16 v0, 0x61

    if-gt v0, p1, :cond_4

    const/16 v0, 0x67

    if-ge p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 209
    :cond_5
    const/4 v0, -0x1

    .line 210
    :goto_3
    return v0
.end method

.method private static final htmlToText$newline(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/StringBuilder;

    .line 277
    nop

    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 278
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    return-void
.end method

.method private final mainRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "html"    # Ljava/lang/String;

    .line 252
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "<!--[^>]*\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043d\u043e \u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0435[^>]*-->"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    .line 253
    .local v0, "startMarker":Lkotlin/text/MatchResult;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/alicegpt/textfollower/text/TextLoader;

    .local v1, "$this$mainRegion_u24lambda_u243":Lcom/alicegpt/textfollower/text/TextLoader;
    const/4 v5, 0x0

    .line 254
    .local v5, "$i$a$-run-TextLoader$mainRegion$from$1":I
    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "<body[^>]*>"

    sget-object v8, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v6, v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v3

    .line 255
    .local v3, "body":Lkotlin/text/MatchResult;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 253
    .end local v1    # "$this$mainRegion_u24lambda_u243":Lcom/alicegpt/textfollower/text/TextLoader;
    .end local v3    # "body":Lkotlin/text/MatchResult;
    .end local v5    # "$i$a$-run-TextLoader$mainRegion$from$1":I
    :cond_1
    move v1, v2

    .line 257
    .local v1, "from":I
    :goto_0
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 258
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 259
    .local v2, "to":I
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "<!--[^>]*\u0411\u043b\u043e\u043a \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u044f \\(\u0441\u043b\u0435\u0432\u0430 \u0432\u043d\u0438\u0437\u0443\\)[^>]*-->"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v3

    .line 260
    .local v3, "endMarker":Lkotlin/text/MatchResult;
    if-eqz v3, :cond_3

    .line 261
    invoke-interface {v3}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    goto :goto_1

    .line 263
    :cond_3
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v5, "</body"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    .line 264
    .local v4, "bodyEnd":I
    if-le v4, v1, :cond_4

    move v2, v4

    .line 266
    .end local v4    # "bodyEnd":I
    :cond_4
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "substring(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method private final mhtToText([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .line 92
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->parseMime(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->findHtmlPart(Ljava/util/List;)Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p1, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    .local v0, "part":Lcom/alicegpt/textfollower/text/TextLoader$MimePart;
    :cond_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "content-type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    .line 95
    .local v2, "contentType":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/alicegpt/textfollower/text/TextLoader;->META_CHARSET:Lkotlin/text/Regex;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "charset":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;->getBody()[B

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeHtml([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "html":Ljava/lang/String;
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "html"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;->getBody()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->looksLikeHtml([B)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/alicegpt/textfollower/text/TextLoader;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4
.end method

.method private final parseHeaders(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 17
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .local v1, "map":Ljava/util/LinkedHashMap;
    move/from16 v2, p2

    .line 159
    .local v2, "i":I
    const/4 v3, 0x0

    .line 160
    .local v3, "lastKey":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 161
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0xa

    const/4 v7, 0x0

    move v6, v2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    .line 162
    .local v4, "eol":I
    if-gez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 163
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "substring(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v8, v7, [C

    const/16 v9, 0xd

    const/4 v10, 0x0

    aput-char v9, v8, v10

    invoke-static {v5, v8}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "line":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 165
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v10

    :goto_1
    if-eqz v7, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    return-object v6

    .line 166
    :cond_2
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_4

    :cond_3
    if-eqz v3, :cond_4

    .line 167
    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 169
    :cond_4
    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v12, 0x3a

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    .line 170
    .local v7, "colon":I
    if-gtz v7, :cond_5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    return-object v6

    .line 171
    :cond_5
    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toLowerCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v8

    .line 172
    move-object v8, v1

    check-cast v8, Ljava/util/Map;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 175
    .end local v4    # "eol":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "colon":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    return-object v4
.end method

.method private final parseMime(Ljava/lang/String;)Ljava/util/List;
    .locals 31
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alicegpt/textfollower/text/TextLoader$MimePart;",
            ">;"
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lcom/alicegpt/textfollower/text/TextLoader;->parseHeaders(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/Map;

    .local v9, "headers":Ljava/util/Map;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 120
    .local v6, "bodyStart":I
    const-string v5, "content-type"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v16, ""

    if-nez v1, :cond_0

    move-object/from16 v1, v16

    :cond_0
    move-object v4, v1

    .line 121
    .local v4, "type":Ljava/lang/String;
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "boundary\\s*=\\s*\"?([^\";\\s]+)\"?"

    sget-object v3, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v1, v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v15, 0x0

    invoke-static {v1, v2, v8, v3, v15}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v15

    :goto_0
    move-object v2, v1

    .line 122
    .local v2, "boundary":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "toLowerCase(...)"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "multipart/"

    invoke-static {v1, v13, v8, v3, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v12, "content-transfer-encoding"

    const-string v11, "substring(...)"

    if-eqz v1, :cond_b

    if-nez v2, :cond_2

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v24, v9

    move-object v8, v11

    move-object v14, v12

    move v12, v6

    goto/16 :goto_6

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 126
    .local v23, "delimiter":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "parts":Ljava/util/ArrayList;
    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v25, v12

    move v12, v6

    move-object/from16 v26, v13

    move/from16 v13, v19

    move-object/from16 v27, v14

    move/from16 v14, v17

    move-object/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v10

    .line 128
    .local v10, "pos":I
    :goto_1
    if-ltz v10, :cond_a

    .line 129
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    .line 130
    .local v11, "afterDelimiter":I
    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v14, "--"

    const/4 v15, 0x0

    move-object/from16 v28, v1

    .end local v1    # "parts":Ljava/util/ArrayList;
    .local v28, "parts":Ljava/util/ArrayList;
    move-object/from16 v1, p1

    move-object/from16 v29, v2

    .end local v2    # "boundary":Ljava/lang/String;
    .local v29, "boundary":Ljava/lang/String;
    move-object v2, v14

    move v14, v3

    move v3, v11

    move-object/from16 v30, v4

    .end local v4    # "type":Ljava/lang/String;
    .local v30, "type":Ljava/lang/String;
    move v4, v15

    move-object v15, v5

    move v5, v12

    move v12, v6

    .end local v6    # "bodyStart":I
    .local v12, "bodyStart":I
    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 131
    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v18, 0xa

    const/16 v20, 0x0

    move/from16 v19, v11

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 132
    .local v1, "lineEnd":I
    if-ltz v1, :cond_8

    .line 133
    add-int/lit8 v2, v1, 0x1

    .line 134
    .local v2, "partStart":I
    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v23

    move/from16 v19, v2

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 135
    .local v3, "next":I
    if-gez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v3

    .line 137
    .local v4, "partEnd":I
    :goto_2
    if-le v4, v2, :cond_4

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 138
    :cond_4
    if-le v4, v2, :cond_5

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 139
    :cond_5
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .local v5, "raw":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/alicegpt/textfollower/text/TextLoader;->parseHeaders(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, "partHeaders":Ljava/util/Map;
    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 141
    .local v13, "bStart":I
    move-object/from16 v14, v25

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v1

    .end local v1    # "lineEnd":I
    .local v19, "lineEnd":I
    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "encoding":Ljava/lang/String;
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move/from16 v20, v2

    if-nez v18, :cond_6

    move-object/from16 v2, v16

    goto :goto_3

    :cond_6
    move-object/from16 v2, v18

    .end local v2    # "partStart":I
    .local v20, "partStart":I
    :goto_3
    move/from16 v18, v4

    .end local v4    # "partEnd":I
    .local v18, "partEnd":I
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v27

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .local v2, "ctype":Ljava/lang/String;
    nop

    .line 144
    new-instance v4, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    .line 145
    nop

    .line 146
    move-object/from16 v24, v9

    move/from16 v21, v10

    move/from16 v17, v11

    move-object/from16 v22, v15

    move-object/from16 v10, v26

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v15, 0x0

    .end local v9    # "headers":Ljava/util/Map;
    .end local v10    # "pos":I
    .end local v11    # "afterDelimiter":I
    .local v17, "afterDelimiter":I
    .local v21, "pos":I
    .local v24, "headers":Ljava/util/Map;
    invoke-static {v2, v10, v9, v11, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const-string v11, "getBytes(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v9, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeTransfer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 144
    :goto_4
    invoke-direct {v4, v6, v9}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;-><init>(Ljava/util/Map;[B)V

    .line 143
    move-object/from16 v9, v28

    .end local v28    # "parts":Ljava/util/ArrayList;
    .local v9, "parts":Ljava/util/ArrayList;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move v1, v3

    move-object/from16 v26, v10

    move v6, v12

    move-object/from16 v25, v14

    move-object/from16 v5, v22

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    const/4 v3, 0x2

    move v10, v1

    move-object v1, v9

    move-object/from16 v9, v24

    .end local v2    # "ctype":Ljava/lang/String;
    .end local v3    # "next":I
    .end local v5    # "raw":Ljava/lang/String;
    .end local v6    # "partHeaders":Ljava/util/Map;
    .end local v13    # "bStart":I
    .end local v17    # "afterDelimiter":I
    .end local v18    # "partEnd":I
    .end local v19    # "lineEnd":I
    .end local v20    # "partStart":I
    .end local v21    # "pos":I
    .local v1, "pos":I
    goto/16 :goto_1

    .line 132
    .end local v24    # "headers":Ljava/util/Map;
    .local v1, "lineEnd":I
    .local v9, "headers":Ljava/util/Map;
    .restart local v10    # "pos":I
    .restart local v11    # "afterDelimiter":I
    .restart local v28    # "parts":Ljava/util/ArrayList;
    :cond_8
    move/from16 v19, v1

    move-object/from16 v24, v9

    move/from16 v21, v10

    move/from16 v17, v11

    move-object/from16 v9, v28

    .end local v1    # "lineEnd":I
    .end local v10    # "pos":I
    .end local v11    # "afterDelimiter":I
    .end local v28    # "parts":Ljava/util/ArrayList;
    .local v9, "parts":Ljava/util/ArrayList;
    .restart local v17    # "afterDelimiter":I
    .restart local v19    # "lineEnd":I
    .restart local v21    # "pos":I
    .restart local v24    # "headers":Ljava/util/Map;
    goto :goto_5

    .line 130
    .end local v17    # "afterDelimiter":I
    .end local v19    # "lineEnd":I
    .end local v21    # "pos":I
    .end local v24    # "headers":Ljava/util/Map;
    .local v9, "headers":Ljava/util/Map;
    .restart local v10    # "pos":I
    .restart local v11    # "afterDelimiter":I
    .restart local v28    # "parts":Ljava/util/ArrayList;
    :cond_9
    move-object/from16 v24, v9

    move/from16 v21, v10

    move/from16 v17, v11

    move-object/from16 v9, v28

    .end local v10    # "pos":I
    .end local v11    # "afterDelimiter":I
    .end local v28    # "parts":Ljava/util/ArrayList;
    .local v9, "parts":Ljava/util/ArrayList;
    .restart local v17    # "afterDelimiter":I
    .restart local v21    # "pos":I
    .restart local v24    # "headers":Ljava/util/Map;
    goto :goto_5

    .line 128
    .end local v12    # "bodyStart":I
    .end local v17    # "afterDelimiter":I
    .end local v21    # "pos":I
    .end local v24    # "headers":Ljava/util/Map;
    .end local v29    # "boundary":Ljava/lang/String;
    .end local v30    # "type":Ljava/lang/String;
    .local v1, "parts":Ljava/util/ArrayList;
    .local v2, "boundary":Ljava/lang/String;
    .local v4, "type":Ljava/lang/String;
    .local v6, "bodyStart":I
    .local v9, "headers":Ljava/util/Map;
    .restart local v10    # "pos":I
    :cond_a
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move v12, v6

    move-object/from16 v24, v9

    move/from16 v21, v10

    move-object v9, v1

    .line 152
    .end local v1    # "parts":Ljava/util/ArrayList;
    .end local v2    # "boundary":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "bodyStart":I
    .end local v10    # "pos":I
    .local v9, "parts":Ljava/util/ArrayList;
    .restart local v12    # "bodyStart":I
    .restart local v21    # "pos":I
    .restart local v24    # "headers":Ljava/util/Map;
    .restart local v29    # "boundary":Ljava/lang/String;
    .restart local v30    # "type":Ljava/lang/String;
    :goto_5
    move-object v1, v9

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 122
    .end local v12    # "bodyStart":I
    .end local v21    # "pos":I
    .end local v23    # "delimiter":Ljava/lang/String;
    .end local v24    # "headers":Ljava/util/Map;
    .end local v29    # "boundary":Ljava/lang/String;
    .end local v30    # "type":Ljava/lang/String;
    .restart local v2    # "boundary":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v6    # "bodyStart":I
    .local v9, "headers":Ljava/util/Map;
    :cond_b
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v24, v9

    move-object v8, v11

    move-object v14, v12

    move v12, v6

    .line 123
    .end local v2    # "boundary":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "bodyStart":I
    .end local v9    # "headers":Ljava/util/Map;
    .restart local v12    # "bodyStart":I
    .restart local v24    # "headers":Ljava/util/Map;
    .restart local v29    # "boundary":Ljava/lang/String;
    .restart local v30    # "type":Ljava/lang/String;
    :goto_6
    new-instance v1, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24    # "headers":Ljava/util/Map;
    .local v3, "headers":Ljava/util/Map;
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeTransfer(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/alicegpt/textfollower/text/TextLoader$MimePart;-><init>(Ljava/util/Map;[B)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private final sniffMetaCharset([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    new-instance v0, Ljava/lang/String;

    .line 67
    array-length v1, p1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lcom/alicegpt/textfollower/text/TextLoader;->LATIN1:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    .local v0, "head":Ljava/lang/String;
    sget-object v1, Lcom/alicegpt/textfollower/text/TextLoader;->META_CHARSET:Lkotlin/text/Regex;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    :cond_0
    return-object v5
.end method


# virtual methods
.method public final decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "declared"    # Ljava/lang/String;

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    aget-byte v0, p1, v2

    const/16 v5, -0x11

    if-ne v0, v5, :cond_0

    aget-byte v0, p1, v1

    const/16 v5, -0x45

    if-ne v0, v5, :cond_0

    aget-byte v0, p1, v3

    const/16 v5, -0x41

    if-ne v0, v5, :cond_0

    new-instance v0, Ljava/lang/String;

    .line 32
    array-length v1, p1

    sub-int/2addr v1, v4

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v4, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 34
    :cond_0
    array-length v0, p1

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-lt v0, v3, :cond_1

    aget-byte v0, p1, v2

    if-ne v0, v5, :cond_1

    aget-byte v0, p1, v1

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/String;

    .line 35
    array-length v1, p1

    sub-int/2addr v1, v3

    sget-object v2, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 37
    :cond_1
    array-length v0, p1

    if-lt v0, v3, :cond_2

    aget-byte v0, p1, v2

    if-ne v0, v4, :cond_2

    aget-byte v0, p1, v1

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/lang/String;

    .line 38
    array-length v1, p1

    sub-int/2addr v1, v3

    sget-object v2, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 40
    :cond_2
    if-eqz p2, :cond_3

    move-object v0, p2

    .line 374
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$a$-let-TextLoader$decode$cs$1":I
    sget-object v2, Lcom/alicegpt/textfollower/text/TextLoader;->INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

    invoke-direct {v2, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->charsetOrNull(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-TextLoader$decode$cs$1":I
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 41
    .local v0, "cs":Ljava/nio/charset/Charset;
    :goto_0
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 42
    :cond_4
    nop

    .line 43
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 44
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 45
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 46
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Ljava/lang/String;

    .line 49
    sget-object v3, Lcom/alicegpt/textfollower/text/TextLoader;->WINDOWS_1251:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    .line 42
    .end local v1    # "e":Ljava/nio/charset/CharacterCodingException;
    :goto_1
    return-object v1
.end method

.method public final htmlToText(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "html"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "html"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct/range {p0 .. p1}, Lcom/alicegpt/textfollower/text/TextLoader;->mainRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "src":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v9, v3

    .line 272
    .local v9, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 273
    .local v3, "inPre":Z
    const/4 v4, 0x0

    .line 274
    .local v4, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v3

    move v12, v4

    .line 281
    .end local v3    # "inPre":Z
    .end local v4    # "i":I
    .local v10, "n":I
    .local v11, "inPre":Z
    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_15

    .line 282
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 283
    .local v13, "c":C
    nop

    .line 284
    const/16 v14, 0x3c

    if-ne v13, v14, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "<!--"

    const/4 v6, 0x0

    move-object v3, v1

    move v5, v12

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    move-object v15, v1

    check-cast v15, Ljava/lang/CharSequence;

    add-int/lit8 v17, v12, 0x4

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "-->"

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 286
    .local v3, "end":I
    if-gez v3, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x3

    :goto_1
    move v12, v4

    .end local v3    # "end":I
    goto :goto_0

    .line 288
    :cond_1
    const/4 v3, 0x0

    const-string v4, "substring(...)"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v13, v14, :cond_10

    add-int/lit8 v7, v12, 0x1

    if-ge v7, v10, :cond_10

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    const/16 v8, 0x2f

    if-nez v7, :cond_3

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_3

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0x21

    if-ne v7, v14, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    goto/16 :goto_a

    .line 289
    :cond_3
    :goto_2
    move-object v15, v1

    check-cast v15, Ljava/lang/CharSequence;

    add-int/lit8 v17, v12, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v16, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    .line 290
    .local v7, "end":I
    if-gez v7, :cond_4

    add-int/lit8 v7, v10, -0x1

    .line 291
    :cond_4
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .local v14, "tag":Ljava/lang/String;
    const-string v15, "/"

    const/4 v8, 0x2

    invoke-static {v14, v15, v5, v8, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    .line 293
    .local v3, "closing":Z
    new-array v8, v6, [C

    const/16 v15, 0x2f

    aput-char v15, v8, v5

    invoke-static {v14, v8}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    .local v8, "$this$takeWhile$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 378
    .local v15, "$i$f$takeWhile":I
    const/16 v16, 0x0

    .local v16, "index$iv":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v5, v16

    .end local v16    # "index$iv":I
    .local v5, "index$iv":I
    :goto_3
    if-ge v5, v6, :cond_6

    .line 379
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .local v16, "it":C
    const/16 v19, 0x0

    .line 293
    .local v19, "$i$a$-takeWhile-TextLoader$htmlToText$name$1":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v20

    .line 379
    .end local v16    # "it":C
    .end local v19    # "$i$a$-takeWhile-TextLoader$htmlToText$name$1":I
    if-nez v20, :cond_5

    .line 380
    const/4 v6, 0x0

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    move v2, v6

    goto :goto_4

    .line 378
    :cond_5
    const/4 v2, 0x0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 382
    .end local v5    # "index$iv":I
    nop

    .line 293
    .end local v8    # "$this$takeWhile$iv":Ljava/lang/String;
    .end local v15    # "$i$f$takeWhile":I
    :goto_4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v12, v7, 0x1

    .line 295
    nop

    .line 296
    if-nez v3, :cond_a

    const-string v5, "script"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "style"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "head"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    goto :goto_7

    .line 297
    :cond_8
    :goto_5
    new-instance v2, Lkotlin/text/Regex;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\s*>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v2, v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5, v12}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v2

    .line 298
    .local v2, "close":Lkotlin/text/MatchResult;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_6

    :cond_9
    move v5, v10

    :goto_6
    move v12, v5

    move-object/from16 v2, p1

    .end local v2    # "close":Lkotlin/text/MatchResult;
    goto/16 :goto_0

    .line 296
    :cond_a
    const/4 v6, 0x1

    .line 300
    :goto_7
    const-string v5, "pre"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 301
    xor-int/lit8 v2, v3, 0x1

    move v11, v2

    .line 302
    invoke-static {v9}, Lcom/alicegpt/textfollower/text/TextLoader;->htmlToText$newline(Ljava/lang/StringBuilder;)V

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 304
    :cond_b
    sget-object v5, Lcom/alicegpt/textfollower/text/TextLoader;->BLOCK_TAGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v9}, Lcom/alicegpt/textfollower/text/TextLoader;->htmlToText$newline(Ljava/lang/StringBuilder;)V

    goto :goto_9

    .line 305
    :cond_c
    const-string v5, "td"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "th"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_d
    move-object v5, v9

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_e

    move v5, v6

    goto :goto_8

    :cond_e
    move v5, v2

    :goto_8
    if-eqz v5, :cond_f

    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_f

    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_f

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .end local v3    # "closing":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "end":I
    .end local v13    # "c":C
    .end local v14    # "tag":Ljava/lang/String;
    :cond_f
    :goto_9
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 288
    .restart local v13    # "c":C
    :cond_10
    move v2, v5

    .line 308
    :goto_a
    const/16 v5, 0x26

    if-ne v13, v5, :cond_14

    .line 309
    move-object v14, v1

    check-cast v14, Ljava/lang/CharSequence;

    add-int/lit8 v16, v12, 0x1

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v15, 0x3b

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    .line 310
    .local v7, "semi":I
    add-int/lit8 v8, v12, 0x2

    add-int/lit8 v14, v12, 0xa

    if-gt v7, v14, :cond_11

    if-gt v8, v7, :cond_11

    move v2, v6

    :cond_11
    if-eqz v2, :cond_12

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_12
    move-object v2, v3

    .line 311
    .local v2, "decoded":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 312
    invoke-direct {v0, v9, v2, v11}, Lcom/alicegpt/textfollower/text/TextLoader;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 313
    add-int/lit8 v12, v7, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 315
    :cond_13
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 320
    .end local v2    # "decoded":Ljava/lang/String;
    .end local v7    # "semi":I
    :cond_14
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2, v11}, Lcom/alicegpt/textfollower/text/TextLoader;->appendText(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 321
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 325
    .end local v13    # "c":C
    :cond_15
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final load([B)Ljava/lang/String;
    .locals 2
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 20
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->looksLikeMht([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->mhtToText([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/text/TextLoader;->looksLikeHtml([B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->decodeHtml([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    nop

    .line 24
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final looksLikeHtml([B)Z
    .locals 6
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alicegpt/textfollower/text/TextLoader;->headAsText$default(Lcom/alicegpt/textfollower/text/TextLoader;[BIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .local v3, "head":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "<html"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "<!doctype html"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "<body"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "<head"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final looksLikeMht([B)Z
    .locals 9
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/alicegpt/textfollower/text/TextLoader;->headAsText([BI)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "head":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "From:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MIME-Version:"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "Subject:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "Snapshot-Content-Location:"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "Content-Type: multipart"

    aput-object v5, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 83
    nop

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 375
    .local v2, "$i$f$any":I
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 83
    .local v8, "$i$a$-any-TextLoader$looksLikeMht$mimeStart$1":I
    invoke-static {v0, v7, v4}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 376
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-any-TextLoader$looksLikeMht$mimeStart$1":I
    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_0

    .line 377
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v1, v3

    .line 83
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_0
    nop

    .line 82
    nop

    .line 84
    .local v1, "mimeStart":Z
    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v5, "Content-Type:"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v2, v5, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    return v3
.end method

.method public final normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    const-string v0, "\ufeff"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\r\n"

    const-string v3, "\n"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0xa0

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v7, 0x0

    const/16 v3, 0xa

    aput-char v3, v2, v7

    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "lines":Ljava/util/List;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 359
    .local v3, "blank":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, "raw":Ljava/lang/String;
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v8, Lkotlin/text/Regex;

    const-string v9, "[ \\t]{2,}"

    invoke-direct {v8, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v6, v9}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "line":Ljava/lang/String;
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_0

    move v8, v0

    goto :goto_1

    :cond_0
    move v8, v7

    :goto_1
    if-eqz v8, :cond_1

    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 363
    goto :goto_0

    .line 365
    :cond_1
    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    const-string v9, "\n"

    if-eqz v8, :cond_3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_3
    if-lez v3, :cond_5

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_4

    move v8, v0

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_5
    const/4 v3, 0x0

    .line 368
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v6    # "line":Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local v5    # "raw":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "toString(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
