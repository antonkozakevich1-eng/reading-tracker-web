.class final Lcom/alicegpt/textfollower/ui/ReaderView$PillView;
.super Landroid/view/View;
.source "ReaderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/ui/ReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PillView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/ReaderView$PillView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "rect",
        "Landroid/graphics/RectF;",
        "getRect",
        "()Landroid/graphics/RectF;",
        "shown",
        "",
        "getShown",
        "()Z",
        "setShown",
        "(Z)V",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "radius",
        "",
        "getRadius",
        "()F",
        "setRadius",
        "(F)V",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
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
.field private final paint:Landroid/graphics/Paint;

.field private radius:F

.field private final rect:Landroid/graphics/RectF;

.field private shown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->rect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->paint:Landroid/graphics/Paint;

    .line 31
    return-void
.end method


# virtual methods
.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getRadius()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->radius:F

    return v0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getShown()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->shown:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->shown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->radius:F

    iget v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->radius:F

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final setRadius(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 35
    iput p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->radius:F

    return-void
.end method

.method public final setShown(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->shown:Z

    return-void
.end method
