.class final Lcom/alicegpt/textfollower/ui/GutterSpan;
.super Ljava/lang/Object;
.source "SectionText.kt"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016Jh\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/GutterSpan;",
        "Landroid/text/style/LeadingMarginSpan;",
        "label",
        "",
        "style",
        "Lcom/alicegpt/textfollower/ui/GutterStyle;",
        "<init>",
        "(Ljava/lang/String;Lcom/alicegpt/textfollower/ui/GutterStyle;)V",
        "getLeadingMargin",
        "",
        "first",
        "",
        "drawLeadingMargin",
        "",
        "c",
        "Landroid/graphics/Canvas;",
        "p",
        "Landroid/graphics/Paint;",
        "x",
        "dir",
        "top",
        "baseline",
        "bottom",
        "text",
        "",
        "start",
        "end",
        "layout",
        "Landroid/text/Layout;",
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
.field private final label:Ljava/lang/String;

.field private final style:Lcom/alicegpt/textfollower/ui/GutterStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alicegpt/textfollower/ui/GutterStyle;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/alicegpt/textfollower/ui/GutterStyle;

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/GutterSpan;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    move-object v0, p0

    move-object v1, p1

    const-string v2, "c"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    move-object v3, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text"

    move-object/from16 v4, p8

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layout"

    move-object/from16 v5, p12

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    if-eqz p11, :cond_2

    iget-object v2, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    move/from16 v9, p6

    goto :goto_1

    .line 34
    :cond_0
    iget-object v2, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 35
    .local v2, "paint":Landroid/text/TextPaint;
    iget-object v6, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v6}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getTextSizePx()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 36
    iget-object v6, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v6}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    iget-object v6, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->label:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 38
    .local v6, "w":F
    iget-object v7, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v7}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getWidthPx()I

    move-result v7

    if-lez p4, :cond_1

    add-int/2addr v7, p3

    iget-object v8, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getPadRightPx()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v6

    goto :goto_0

    :cond_1
    sub-int v7, p3, v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getPadRightPx()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 39
    .local v7, "tx":F
    :goto_0
    iget-object v8, v0, Lcom/alicegpt/textfollower/ui/GutterSpan;->label:Ljava/lang/String;

    move/from16 v9, p6

    int-to-float v10, v9

    move-object v11, v2

    check-cast v11, Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 40
    return-void

    .line 33
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v6    # "w":F
    .end local v7    # "tx":F
    :cond_2
    move/from16 v9, p6

    :goto_1
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .line 27
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/GutterSpan;->style:Lcom/alicegpt/textfollower/ui/GutterStyle;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/GutterStyle;->getWidthPx()I

    move-result v0

    return v0
.end method
