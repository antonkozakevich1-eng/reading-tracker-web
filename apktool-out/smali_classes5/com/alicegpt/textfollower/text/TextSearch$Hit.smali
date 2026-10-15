.class public final Lcom/alicegpt/textfollower/text/TextSearch$Hit;
.super Ljava/lang/Object;
.source "TextSearch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/text/TextSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hit"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/text/TextSearch$Hit;",
        "",
        "word",
        "",
        "chapter",
        "",
        "snippet",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "getWord",
        "()I",
        "getChapter",
        "()Ljava/lang/String;",
        "getSnippet",
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
.field private final chapter:Ljava/lang/String;

.field private final snippet:Ljava/lang/String;

.field private final word:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # I
    .param p2, "chapter"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    const-string v0, "chapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snippet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->word:I

    .line 12
    iput-object p2, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->chapter:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->snippet:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final getChapter()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->chapter:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public final getWord()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->word:I

    return v0
.end method
