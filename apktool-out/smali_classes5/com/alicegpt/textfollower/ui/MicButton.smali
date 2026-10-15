.class public final Lcom/alicegpt/textfollower/ui/MicButton;
.super Landroid/view/View;
.source "MicButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/ui/MicButton$State;,
        Lcom/alicegpt/textfollower/ui/MicButton$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00011B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J6\u0010\'\u001a\u00020(2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0014J\u000e\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\tJ\u0018\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u0014H\u0014J\u0010\u0010.\u001a\u00020(2\u0006\u0010/\u001a\u000200H\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010\"\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00062"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/MicButton;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "density",
        "",
        "fill",
        "Landroid/graphics/Paint;",
        "ring",
        "arc",
        "arcBounds",
        "Landroid/graphics/RectF;",
        "micIcon",
        "Landroid/graphics/drawable/Drawable;",
        "pauseIcon",
        "accent",
        "",
        "good",
        "warn",
        "bad",
        "onAccent",
        "idleBg",
        "shownLevel",
        "v",
        "Lcom/alicegpt/textfollower/ui/MicButton$State;",
        "state",
        "getState",
        "()Lcom/alicegpt/textfollower/ui/MicButton$State;",
        "setState",
        "(Lcom/alicegpt/textfollower/ui/MicButton$State;)V",
        "progress",
        "getProgress",
        "()F",
        "setProgress",
        "(F)V",
        "setColors",
        "",
        "setLevel",
        "level",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "State",
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
.field private accent:I

.field private final arc:Landroid/graphics/Paint;

.field private final arcBounds:Landroid/graphics/RectF;

.field private bad:I

.field private final density:F

.field private final fill:Landroid/graphics/Paint;

.field private good:I

.field private idleBg:I

.field private final micIcon:Landroid/graphics/drawable/Drawable;

.field private onAccent:I

.field private final pauseIcon:Landroid/graphics/drawable/Drawable;

.field private progress:F

.field private final ring:Landroid/graphics/Paint;

.field private shownLevel:F

.field private state:Lcom/alicegpt/textfollower/ui/MicButton$State;

.field private warn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/alicegpt/textfollower/ui/MicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->fill:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->ring:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$arc_u24lambda_u240":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-MicButton$arc$1":I
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    const/4 v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 24
    nop

    .line 20
    .end local v1    # "$this$arc_u24lambda_u240":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-MicButton$arc$1":I
    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->arc:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->arcBounds:Landroid/graphics/RectF;

    .line 26
    sget v0, Lcom/alicegpt/textfollower/R$drawable;->ic_mic:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "mutate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->micIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    sget v0, Lcom/alicegpt/textfollower/R$drawable;->ic_pause:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->pauseIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    const v0, -0xc2a502

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->accent:I

    .line 30
    const v0, -0xd182ce

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->good:I

    .line 31
    const v0, -0x4d9600

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->warn:I

    .line 32
    const v0, -0x39d7d8

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->bad:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->onAccent:I

    .line 34
    const v0, -0x777778

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->idleBg:I

    .line 38
    nop

    .line 39
    sget v0, Lcom/alicegpt/textfollower/R$string;->start:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/ui/MicButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    nop

    .line 42
    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->IDLE:Lcom/alicegpt/textfollower/ui/MicButton$State;

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->progress:F

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/ui/MicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->progress:F

    return v0
.end method

.method public final getState()Lcom/alicegpt/textfollower/ui/MicButton$State;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    .line 86
    .local v8, "cx":F
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v1, v2

    .line 87
    .local v9, "cy":F
    const/16 v1, 0x21

    int-to-float v1, v1

    iget v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float v10, v1, v2

    .line 88
    .local v10, "base":F
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v2, Lcom/alicegpt/textfollower/ui/MicButton$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/MicButton$State;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 93
    :pswitch_0
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->bad:I

    goto :goto_0

    .line 92
    :pswitch_1
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->idleBg:I

    goto :goto_0

    .line 91
    :pswitch_2
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->warn:I

    goto :goto_0

    .line 90
    :pswitch_3
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->good:I

    goto :goto_0

    .line 89
    :pswitch_4
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->accent:I

    .line 88
    :goto_0
    move v11, v1

    .line 95
    .local v11, "color":I
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v2, Lcom/alicegpt/textfollower/ui/MicButton$State;->LISTENING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v2, Lcom/alicegpt/textfollower/ui/MicButton$State;->SEARCHING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v12, v1

    .line 96
    .local v12, "listening":Z
    if-eqz v12, :cond_2

    .line 97
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->ring:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->ring:Landroid/graphics/Paint;

    const/16 v2, 0x46

    int-to-float v2, v2

    const/16 v3, 0x3c

    int-to-float v3, v3

    iget v4, v0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    const/4 v1, 0x4

    int-to-float v1, v1

    iget v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v10

    iget v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    const/16 v3, 0xb

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->ring:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    .line 101
    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->postInvalidateOnAnimation()V

    .line 103
    :cond_2
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->fill:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v2, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->progress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 107
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->arc:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alicegpt/textfollower/ui/MicButton;->accent:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/4 v1, 0x5

    int-to-float v1, v1

    iget v3, v0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v1, v3

    add-float v13, v10, v1

    .line 109
    .local v13, "r":F
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->arcBounds:Landroid/graphics/RectF;

    sub-float v3, v8, v13

    sub-float v4, v9, v13

    add-float v5, v8, v13

    add-float v6, v9, v13

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v3, v0, Lcom/alicegpt/textfollower/ui/MicButton;->arcBounds:Landroid/graphics/RectF;

    iget v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->progress:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v4, v1, v2

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/alicegpt/textfollower/ui/MicButton;->arc:Landroid/graphics/Paint;

    const/high16 v14, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    .end local v13    # "r":F
    :cond_3
    if-eqz v12, :cond_4

    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->pauseIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/alicegpt/textfollower/ui/MicButton;->micIcon:Landroid/graphics/drawable/Drawable;

    .line 114
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v3, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    if-ne v2, v3, :cond_5

    const v2, -0x4c000001

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/alicegpt/textfollower/ui/MicButton;->onAccent:I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 115
    const/16 v2, 0xd

    int-to-float v2, v2

    iget v3, v0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 116
    .local v2, "half":I
    int-to-float v3, v2

    sub-float v3, v8, v3

    float-to-int v3, v3

    int-to-float v4, v2

    sub-float v4, v9, v4

    float-to-int v4, v4

    int-to-float v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v6, v2

    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 80
    const/16 v0, 0x5c

    int-to-float v0, v0

    iget v1, p0, Lcom/alicegpt/textfollower/ui/MicButton;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 81
    .local v0, "size":I
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton;->setMeasuredDimension(II)V

    .line 82
    return-void
.end method

.method public final setColors(IIIIII)V
    .locals 0
    .param p1, "accent"    # I
    .param p2, "good"    # I
    .param p3, "warn"    # I
    .param p4, "bad"    # I
    .param p5, "onAccent"    # I
    .param p6, "idleBg"    # I

    .line 64
    iput p1, p0, Lcom/alicegpt/textfollower/ui/MicButton;->accent:I

    .line 65
    iput p2, p0, Lcom/alicegpt/textfollower/ui/MicButton;->good:I

    .line 66
    iput p3, p0, Lcom/alicegpt/textfollower/ui/MicButton;->warn:I

    .line 67
    iput p4, p0, Lcom/alicegpt/textfollower/ui/MicButton;->bad:I

    .line 68
    iput p5, p0, Lcom/alicegpt/textfollower/ui/MicButton;->onAccent:I

    .line 69
    iput p6, p0, Lcom/alicegpt/textfollower/ui/MicButton;->idleBg:I

    .line 70
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->invalidate()V

    .line 71
    return-void
.end method

.method public final setLevel(F)V
    .locals 3
    .param p1, "level"    # F

    .line 75
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    iget v1, p0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->shownLevel:F

    .line 76
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->postInvalidateOnAnimation()V

    .line 77
    return-void
.end method

.method public final setProgress(F)V
    .locals 0
    .param p1, "v"    # F

    .line 59
    iput p1, p0, Lcom/alicegpt/textfollower/ui/MicButton;->progress:F

    .line 60
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->invalidate()V

    .line 61
    return-void
.end method

.method public final setState(Lcom/alicegpt/textfollower/ui/MicButton$State;)V
    .locals 2
    .param p1, "v"    # Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    if-eq v0, p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/MicButton;->state:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 46
    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/ui/MicButton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alicegpt/textfollower/R$string;->retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alicegpt/textfollower/R$string;->mic_busy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alicegpt/textfollower/R$string;->pause:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alicegpt/textfollower/R$string;->start:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/ui/MicButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/MicButton;->invalidate()V

    .line 54
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
