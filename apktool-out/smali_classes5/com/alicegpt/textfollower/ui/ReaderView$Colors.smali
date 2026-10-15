.class public final Lcom/alicegpt/textfollower/ui/ReaderView$Colors;
.super Ljava/lang/Object;
.source "ReaderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/ui/ReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Colors"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/ReaderView$Colors;",
        "",
        "text",
        "",
        "dim",
        "marker",
        "heading",
        "pill",
        "pillText",
        "<init>",
        "(IIIIII)V",
        "getText",
        "()I",
        "getDim",
        "getMarker",
        "getHeading",
        "getPill",
        "getPillText",
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
.field private final dim:I

.field private final heading:I

.field private final marker:I

.field private final pill:I

.field private final pillText:I

.field private final text:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "text"    # I
    .param p2, "dim"    # I
    .param p3, "marker"    # I
    .param p4, "heading"    # I
    .param p5, "pill"    # I
    .param p6, "pillText"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->text:I

    iput p2, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->dim:I

    iput p3, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->marker:I

    iput p4, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->heading:I

    iput p5, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->pill:I

    iput p6, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->pillText:I

    return-void
.end method


# virtual methods
.method public final getDim()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->dim:I

    return v0
.end method

.method public final getHeading()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->heading:I

    return v0
.end method

.method public final getMarker()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->marker:I

    return v0
.end method

.method public final getPill()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->pill:I

    return v0
.end method

.method public final getPillText()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->pillText:I

    return v0
.end method

.method public final getText()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->text:I

    return v0
.end method
