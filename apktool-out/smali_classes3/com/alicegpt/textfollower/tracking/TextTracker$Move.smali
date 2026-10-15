.class public final Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
.super Ljava/lang/Object;
.source "TextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/tracking/TextTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Move"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Move;",
        "",
        "from",
        "",
        "to",
        "matched",
        "<init>",
        "(III)V",
        "getFrom",
        "()I",
        "getTo",
        "getMatched",
        "delta",
        "getDelta",
        "far",
        "",
        "getFar",
        "()Z",
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
.field private final from:I

.field private final matched:I

.field private final to:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "matched"    # I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->from:I

    iput p2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->to:I

    iput p3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->matched:I

    return-void
.end method


# virtual methods
.method public final getDelta()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->to:I

    iget v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->from:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getFar()Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->getDelta()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFrom()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->from:I

    return v0
.end method

.method public final getMatched()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->matched:I

    return v0
.end method

.method public final getTo()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->to:I

    return v0
.end method
