.class public final Lcom/alicegpt/textfollower/text/Section;
.super Ljava/lang/Object;
.source "Doc.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/Section;",
        "",
        "title",
        "",
        "inToc",
        "",
        "start",
        "",
        "end",
        "firstWord",
        "endWord",
        "<init>",
        "(Ljava/lang/String;ZIIII)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getInToc",
        "()Z",
        "getStart",
        "()I",
        "getEnd",
        "getFirstWord",
        "getEndWord",
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


# instance fields
.field private final end:I

.field private final endWord:I

.field private final firstWord:I

.field private final inToc:Z

.field private final start:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIIII)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "inToc"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "firstWord"    # I
    .param p6, "endWord"    # I

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alicegpt/textfollower/text/Section;->title:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/alicegpt/textfollower/text/Section;->inToc:Z

    .line 13
    iput p3, p0, Lcom/alicegpt/textfollower/text/Section;->start:I

    .line 14
    iput p4, p0, Lcom/alicegpt/textfollower/text/Section;->end:I

    .line 15
    iput p5, p0, Lcom/alicegpt/textfollower/text/Section;->firstWord:I

    .line 16
    iput p6, p0, Lcom/alicegpt/textfollower/text/Section;->endWord:I

    .line 10
    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/alicegpt/textfollower/text/Section;->end:I

    return v0
.end method

.method public final getEndWord()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/alicegpt/textfollower/text/Section;->endWord:I

    return v0
.end method

.method public final getFirstWord()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/alicegpt/textfollower/text/Section;->firstWord:I

    return v0
.end method

.method public final getInToc()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/text/Section;->inToc:Z

    return v0
.end method

.method public final getStart()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/alicegpt/textfollower/text/Section;->start:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Section;->title:Ljava/lang/String;

    return-object v0
.end method
