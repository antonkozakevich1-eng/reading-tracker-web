.class public final synthetic Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/ui/ReaderView;

.field public final synthetic f$1:Landroid/graphics/RectF;

.field public final synthetic f$2:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$0:Lcom/alicegpt/textfollower/ui/ReaderView;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$0:Lcom/alicegpt/textfollower/ui/ReaderView;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/ReaderView$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->$r8$lambda$a8WRAZdmVdm-_1x6fUK7NYiOxbU(Lcom/alicegpt/textfollower/ui/ReaderView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method
