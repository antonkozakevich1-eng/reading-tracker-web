.class public final Lcom/alicegpt/textfollower/ui/ReaderView;
.super Landroid/widget/FrameLayout;
.source "ReaderView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/ui/ReaderView$Colors;,
        Lcom/alicegpt/textfollower/ui/ReaderView$Companion;,
        Lcom/alicegpt/textfollower/ui/ReaderView$PillView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderView.kt\ncom/alicegpt/textfollower/ui/ReaderView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 Z2\u00020\u0001:\u0003XYZB\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010<\u001a\u000207H\u0003J\u0008\u0010=\u001a\u000207H\u0003J\u000e\u0010>\u001a\u0002072\u0006\u0010?\u001a\u00020\u0018J\u0008\u0010@\u001a\u000207H\u0002J\u001e\u0010A\u001a\u0002072\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020(2\u0006\u0010D\u001a\u00020\tJ\u000e\u0010E\u001a\u0002072\u0006\u0010F\u001a\u00020(J\u000e\u0010G\u001a\u0002072\u0006\u0010H\u001a\u00020\u001aJ&\u0010I\u001a\u0002072\u0006\u0010J\u001a\u00020\u001f2\u0006\u0010K\u001a\u00020\u001f2\u0006\u0010L\u001a\u00020(2\u0006\u0010\n\u001a\u00020(J\u0006\u0010M\u001a\u000207J\u0006\u0010N\u001a\u000207J \u0010Q\u001a\u00020(2\u0006\u0010J\u001a\u00020\u001f2\u0006\u0010K\u001a\u00020\u001f2\u0006\u0010R\u001a\u00020PH\u0002J\u0010\u0010S\u001a\u0002072\u0006\u0010L\u001a\u00020(H\u0002J\u0010\u0010T\u001a\u00020\t2\u0006\u0010U\u001a\u00020\tH\u0002J\u000e\u0010V\u001a\u0002072\u0006\u0010W\u001a\u00020(R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010)\u001a\u0004\u0018\u00010*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R7\u00102\u001a\u001f\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(6\u0012\u0004\u0012\u000207\u0018\u000103X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u000e\u0010O\u001a\u00020PX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/ReaderView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "density",
        "",
        "scroll",
        "Landroid/widget/ScrollView;",
        "content",
        "pill",
        "Lcom/alicegpt/textfollower/ui/ReaderView$PillView;",
        "textView",
        "Landroid/widget/TextView;",
        "getTextView",
        "()Landroid/widget/TextView;",
        "gutter",
        "Lcom/alicegpt/textfollower/ui/GutterStyle;",
        "getGutter",
        "()Lcom/alicegpt/textfollower/ui/GutterStyle;",
        "colors",
        "Lcom/alicegpt/textfollower/ui/ReaderView$Colors;",
        "spannable",
        "Landroid/text/Spannable;",
        "readSpan",
        "Landroid/text/style/ForegroundColorSpan;",
        "pillTextSpan",
        "cursorStart",
        "",
        "cursorEnd",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "lastUserTouch",
        "",
        "downX",
        "downY",
        "locked",
        "",
        "cursor",
        "Lkotlin/ranges/IntRange;",
        "getCursor",
        "()Lkotlin/ranges/IntRange;",
        "autoScroll",
        "getAutoScroll",
        "()Z",
        "setAutoScroll",
        "(Z)V",
        "onLongPress",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "offset",
        "",
        "getOnLongPress",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnLongPress",
        "(Lkotlin/jvm/functions/Function1;)V",
        "setSimpleLineBreaks",
        "trackTouches",
        "setColors",
        "c",
        "applyColors",
        "setTypography",
        "sizeSp",
        "serif",
        "lineSpacing",
        "setLocked",
        "value",
        "setSection",
        "text",
        "setCursor",
        "start",
        "end",
        "animate",
        "clearCursor",
        "markAllRead",
        "target",
        "Landroid/graphics/RectF;",
        "wordRect",
        "out",
        "updatePill",
        "abs",
        "v",
        "scrollToCursor",
        "force",
        "Colors",
        "PillView",
        "Companion",
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
.field private static final Companion:Lcom/alicegpt/textfollower/ui/ReaderView$Companion;

.field public static final USER_SCROLL_PAUSE_MS:J = 0xfa0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private autoScroll:Z

.field private colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

.field private final content:Landroid/widget/FrameLayout;

.field private cursorEnd:I

.field private cursorStart:I

.field private final density:F

.field private downX:F

.field private downY:F

.field private final gutter:Lcom/alicegpt/textfollower/ui/GutterStyle;

.field private lastUserTouch:J

.field private locked:Z

.field private onLongPress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

.field private pillTextSpan:Landroid/text/style/ForegroundColorSpan;

.field private readSpan:Landroid/text/style/ForegroundColorSpan;

.field private final scroll:Landroid/widget/ScrollView;

.field private spannable:Landroid/text/Spannable;

.field private final target:Landroid/graphics/RectF;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$18A8iewSyae-EVFTjhRZXE441zM(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->_init_$lambda$0(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fde_xPYqy4CrQh8ggK6DctDFwO0(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor$lambda$10(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MV6j63DrVBLh0cdgavTXRMvj9DA(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/alicegpt/textfollower/ui/ReaderView;->_init_$lambda$1(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$a8WRAZdmVdm-_1x6fUK7NYiOxbU(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/alicegpt/textfollower/ui/ReaderView;->updatePill$lambda$9$lambda$8(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aamePadqEjDZ0dU2jDWq3B0Z3Bw(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/ui/ReaderView;->trackTouches$lambda$2(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mk2xqG4JXgysW5LCdxknoqsLgAA(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor$lambda$11(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6STn8eA32npyQhP8xCuN6D_dQw(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/ui/ReaderView;->trackTouches$lambda$3(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zUBgaAna9nWbw8gWT2jbiwWMwMw(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->updatePill$lambda$7(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/ui/ReaderView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/ReaderView;->Companion:Lcom/alicegpt/textfollower/ui/ReaderView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/alicegpt/textfollower/ui/ReaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    .line 43
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->content:Landroid/widget/FrameLayout;

    .line 45
    new-instance v0, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-direct {v0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    .line 49
    new-instance v0, Lcom/alicegpt/textfollower/ui/GutterStyle;

    const/16 v1, 0x24

    int-to-float v1, v1

    iget v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    int-to-float v2, v2

    iget v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Lcom/alicegpt/textfollower/ui/GutterStyle;-><init>(II)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->gutter:Lcom/alicegpt/textfollower/ui/GutterStyle;

    .line 51
    new-instance v0, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    const/16 v9, -0x2ab1

    const/high16 v10, -0x1000000

    const/high16 v5, -0x1000000

    const v6, -0x777778

    const v7, -0x777778

    const v8, -0x77bc00

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    .line 57
    iput v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->locked:Z

    .line 68
    iput-boolean v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->autoScroll:Z

    .line 73
    nop

    .line 74
    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    iget v4, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->setRadius(F)V

    .line 75
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->content:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->content:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->content:Landroid/widget/FrameLayout;

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 79
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 80
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 81
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/16 v0, 0xc

    int-to-float v0, v0

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 84
    .local v0, "sidePad":I
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/16 v2, 0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x14

    int-to-float v3, v3

    iget v4, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xdc

    int-to-float v4, v4

    iget v5, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x3faccccd    # 1.35f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 87
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 88
    invoke-direct {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->setSimpleLineBreaks()V

    .line 89
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 90
    invoke-direct {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->trackTouches()V

    .line 91
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda6;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda7;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 100
    invoke-direct {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->applyColors()V

    .line 101
    .end local v0    # "sidePad":I
    nop

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/ui/ReaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;)Z
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p1, "it"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->downX:F

    iget v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->downY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 93
    .local v0, "off":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->onLongPress:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static final _init_$lambda$1(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "ol"    # I
    .param p7, "ot"    # I
    .param p8, "orr"    # I
    .param p9, "ob"    # I

    .line 98
    sub-int p1, p4, p2

    sub-int v0, p8, p6

    if-ne p1, v0, :cond_0

    sub-int p1, p5, p3

    sub-int v0, p9, p7

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->updatePill(Z)V

    .line 99
    :cond_1
    return-void
.end method

.method private final abs(F)F
    .locals 1
    .param p1, "v"    # F

    .line 260
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    neg-float v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private final applyColors()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->getText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->gutter:Lcom/alicegpt/textfollower/ui/GutterStyle;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->getMarker()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/ui/GutterStyle;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->getPill()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->locked:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x78

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 139
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 140
    return-void
.end method

.method private static final scrollToCursor$lambda$10(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p1, "$force"    # Z

    .line 269
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor(Z)V

    :cond_0
    return-void
.end method

.method private static final scrollToCursor$lambda$11(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p1, "$force"    # Z

    .line 274
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor(Z)V

    return-void
.end method

.method private final setSimpleLineBreaks()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 107
    return-void
.end method

.method private final trackTouches()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda2;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda3;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    return-void
.end method

.method private static final trackTouches$lambda$2(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->lastUserTouch:J

    .line 114
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static final trackTouches$lambda$3(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->downX:F

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->downY:F

    .line 121
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final updatePill(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .line 229
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    if-gez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->wordRect(IILandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda4;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 237
    .local v0, "from":Landroid/graphics/RectF;
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getShown()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 238
    .local v2, "canAnimate":Z
    :goto_0
    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v3, v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->setShown(Z)V

    .line 239
    if-nez v2, :cond_4

    .line 240
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 241
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 242
    return-void

    .line 244
    :cond_4
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 245
    .local v1, "to":Landroid/graphics/RectF;
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$updatePill_u24lambda_u249":Landroid/animation/ValueAnimator;
    const/4 v5, 0x0

    .line 246
    .local v5, "$i$a$-apply-ReaderView$updatePill$2":I
    const-wide/16 v6, 0x82

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    new-instance v6, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v0, v1}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 257
    nop

    .line 245
    .end local v4    # "$this$updatePill_u24lambda_u249":Landroid/animation/ValueAnimator;
    .end local v5    # "$i$a$-apply-ReaderView$updatePill$2":I
    iput-object v3, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->animator:Landroid/animation/ValueAnimator;

    .line 258
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final updatePill$lambda$7(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p1, "$animate"    # Z

    .line 232
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->updatePill(Z)V

    :cond_0
    return-void
.end method

.method private static final updatePill$lambda$9$lambda$8(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/ui/ReaderView;
    .param p1, "$from"    # Landroid/graphics/RectF;
    .param p2, "$to"    # Landroid/graphics/RectF;
    .param p3, "it"    # Landroid/animation/ValueAnimator;

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 250
    .local v0, "f":F
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 251
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    .line 252
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    .line 250
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 255
    return-void
.end method

.method private final wordRect(IILandroid/graphics/RectF;)Z
    .locals 18
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "out"    # Landroid/graphics/RectF;

    .line 212
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 213
    .local v2, "layout":Landroid/text/Layout;
    :cond_0
    iget-object v4, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 214
    .local v4, "len":I
    move/from16 v5, p1

    invoke-static {v5, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 215
    .local v3, "s":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 216
    .local v6, "line":I
    iget-object v7, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    .line 217
    .local v7, "padL":F
    iget-object v8, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    int-to-float v8, v8

    .line 218
    .local v8, "padT":F
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    add-float/2addr v9, v7

    .line 219
    .local v9, "left":F
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    if-le v1, v10, :cond_1

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    goto :goto_0

    :cond_1
    invoke-static {v1, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    :goto_0
    add-float/2addr v10, v7

    .line 220
    .local v10, "right":F
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    .line 221
    .local v11, "baseline":F
    iget-object v12, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    .line 222
    .local v12, "paint":Landroid/text/TextPaint;
    const/4 v13, 0x4

    int-to-float v13, v13

    iget v14, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v13, v14

    .line 223
    .local v13, "padX":F
    const/4 v14, 0x2

    int-to-float v14, v14

    iget v15, v0, Lcom/alicegpt/textfollower/ui/ReaderView;->density:F

    mul-float/2addr v14, v15

    .line 224
    .local v14, "padY":F
    sub-float v15, v9, v13

    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v16

    add-float v16, v11, v16

    sub-float v0, v16, v14

    add-float v1, v10, v13

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v16

    add-float v16, v11, v16

    move-object/from16 v17, v2

    .end local v2    # "layout":Landroid/text/Layout;
    .local v17, "layout":Landroid/text/Layout;
    add-float v2, v16, v14

    move/from16 v16, v3

    move-object/from16 v3, p3

    .end local v3    # "s":I
    .local v16, "s":I
    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final clearCursor()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->spannable:Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-void

    .line 192
    .local v0, "sp":Landroid/text/Spannable;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    .line 193
    iput v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    .line 194
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->readSpan:Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_1

    .line 289
    .local v1, "it":Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    .line 194
    .local v2, "$i$a$-let-ReaderView$clearCursor$1":I
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 195
    .end local v1    # "it":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "$i$a$-let-ReaderView$clearCursor$1":I
    :cond_1
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pillTextSpan:Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_2

    .line 289
    .restart local v1    # "it":Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    .line 195
    .local v2, "$i$a$-let-ReaderView$clearCursor$2":I
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 196
    .end local v1    # "it":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "$i$a$-let-ReaderView$clearCursor$2":I
    :cond_2
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->setShown(Z)V

    .line 197
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 198
    return-void
.end method

.method public final getAutoScroll()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->autoScroll:Z

    return v0
.end method

.method public final getCursor()Lkotlin/ranges/IntRange;
    .locals 2

    .line 65
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGutter()Lcom/alicegpt/textfollower/ui/GutterStyle;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->gutter:Lcom/alicegpt/textfollower/ui/GutterStyle;

    return-object v0
.end method

.method public final getOnLongPress()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->onLongPress:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final markAllRead()V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->spannable:Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-void

    .line 203
    .local v0, "sp":Landroid/text/Spannable;
    :cond_0
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->clearCursor()V

    .line 204
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->readSpan:Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_1

    .line 289
    .local v1, "it":Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-let-ReaderView$markAllRead$1":I
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 205
    .end local v1    # "it":Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "$i$a$-let-ReaderView$markAllRead$1":I
    :cond_1
    return-void
.end method

.method public final scrollToCursor(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 266
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    if-gez v0, :cond_0

    return-void

    .line 267
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->autoScroll:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->lastUserTouch:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    return-void

    .line 268
    :cond_2
    iget v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    iget v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->wordRect(IILandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda0;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 273
    .local v0, "h":I
    if-gtz v0, :cond_4

    .line 274
    new-instance v1, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda1;-><init>(Lcom/alicegpt/textfollower/ui/ReaderView;Z)V

    invoke-virtual {p0, v1}, Lcom/alicegpt/textfollower/ui/ReaderView;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 278
    .local v1, "y":I
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v1

    int-to-float v4, v0

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v1

    int-to-float v4, v0

    const v5, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 279
    :cond_5
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->target:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v0

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 280
    .local v2, "dest":I
    iget-object v4, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    if-eqz p1, :cond_6

    invoke-virtual {v4, v3, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v3, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 282
    .end local v2    # "dest":I
    :cond_7
    :goto_0
    return-void
.end method

.method public final setAutoScroll(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->autoScroll:Z

    return-void
.end method

.method public final setColors(Lcom/alicegpt/textfollower/ui/ReaderView$Colors;)V
    .locals 1
    .param p1, "c"    # Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    .line 130
    invoke-direct {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->applyColors()V

    .line 131
    return-void
.end method

.method public final setCursor(IIZZ)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "animate"    # Z
    .param p4, "scroll"    # Z

    .line 176
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->spannable:Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-void

    .line 177
    .local v0, "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->readSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_1

    return-void

    .line 178
    .local v1, "read":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pillTextSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v2, :cond_2

    return-void

    .line 179
    .local v2, "pillText":Landroid/text/style/ForegroundColorSpan;
    :cond_2
    iput p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    .line 180
    iput p2, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    .line 181
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 182
    .local v3, "s":I
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-static {p2, v3, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 183
    .local v5, "e":I
    const/16 v6, 0x21

    if-lez v3, :cond_3

    invoke-interface {v0, v1, v4, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 184
    :goto_0
    invoke-interface {v0, v2, v3, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 185
    invoke-direct {p0, p3}, Lcom/alicegpt/textfollower/ui/ReaderView;->updatePill(Z)V

    .line 186
    if-eqz p4, :cond_4

    invoke-virtual {p0, v4}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor(Z)V

    .line 187
    :cond_4
    return-void
.end method

.method public final setLocked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 152
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->locked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->locked:Z

    .line 154
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    const/16 v1, 0x78

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 156
    return-void
.end method

.method public final setOnLongPress(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->onLongPress:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSection(Landroid/text/Spannable;)V
    .locals 3
    .param p1, "text"    # Landroid/text/Spannable;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spannable;

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->spannable:Landroid/text/Spannable;

    .line 165
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->getDim()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->readSpan:Landroid/text/style/ForegroundColorSpan;

    .line 166
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->colors:Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;->getPillText()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pillTextSpan:Landroid/text/style/ForegroundColorSpan;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorStart:I

    .line 168
    iput v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->cursorEnd:I

    .line 169
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->setShown(Z)V

    .line 170
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->pill:Lcom/alicegpt/textfollower/ui/ReaderView$PillView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/ui/ReaderView$PillView;->invalidate()V

    .line 171
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 172
    return-void
.end method

.method public final setTypography(FZF)V
    .locals 3
    .param p1, "sizeSp"    # F
    .param p2, "serif"    # Z
    .param p3, "lineSpacing"    # F

    .line 143
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 146
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->gutter:Lcom/alicegpt/textfollower/ui/GutterStyle;

    const v1, 0x3f1eb852    # 0.62f

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/ui/ReaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/ui/GutterStyle;->setTextSizePx(F)V

    .line 147
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 148
    return-void
.end method
