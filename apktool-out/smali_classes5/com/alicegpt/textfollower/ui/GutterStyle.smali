.class public final Lcom/alicegpt/textfollower/ui/GutterStyle;
.super Ljava/lang/Object;
.source "SectionText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/GutterStyle;",
        "",
        "widthPx",
        "",
        "padRightPx",
        "<init>",
        "(II)V",
        "getWidthPx",
        "()I",
        "getPadRightPx",
        "paint",
        "Landroid/text/TextPaint;",
        "getPaint",
        "()Landroid/text/TextPaint;",
        "color",
        "getColor",
        "setColor",
        "(I)V",
        "textSizePx",
        "",
        "getTextSizePx",
        "()F",
        "setTextSizePx",
        "(F)V",
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
.field private color:I

.field private final padRightPx:I

.field private final paint:Landroid/text/TextPaint;

.field private textSizePx:F

.field private final widthPx:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "widthPx"    # I
    .param p2, "padRightPx"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->widthPx:I

    iput p2, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->padRightPx:I

    .line 20
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->paint:Landroid/text/TextPaint;

    .line 21
    const v0, -0x7f7f7f80

    iput v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->color:I

    .line 22
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->textSizePx:F

    .line 19
    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->color:I

    return v0
.end method

.method public final getPadRightPx()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->padRightPx:I

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getTextSizePx()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->textSizePx:F

    return v0
.end method

.method public final getWidthPx()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->widthPx:I

    return v0
.end method

.method public final setColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 21
    iput p1, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->color:I

    return-void
.end method

.method public final setTextSizePx(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 22
    iput p1, p0, Lcom/alicegpt/textfollower/ui/GutterStyle;->textSizePx:F

    return-void
.end method
