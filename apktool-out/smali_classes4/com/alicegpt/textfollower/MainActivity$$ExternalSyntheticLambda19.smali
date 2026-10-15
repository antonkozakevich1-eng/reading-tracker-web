.class public final synthetic Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/MainActivity;

.field public final synthetic f$1:Lcom/alicegpt/textfollower/speech/EngineKind;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/alicegpt/textfollower/MainActivity;

    iput-object p2, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;->f$1:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/alicegpt/textfollower/MainActivity;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;->f$1:Lcom/alicegpt/textfollower/speech/EngineKind;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/alicegpt/textfollower/MainActivity;->$r8$lambda$EG5Am9pPncY3AHOKK-OnZCUOdtw(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
