.class public final synthetic Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iput p2, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$LongRef;

    iget v1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$1:F

    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->$r8$lambda$L2XufDfFBgbF9oMoEyzDq8QKGxI(Lkotlin/jvm/internal/Ref$LongRef;FLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
