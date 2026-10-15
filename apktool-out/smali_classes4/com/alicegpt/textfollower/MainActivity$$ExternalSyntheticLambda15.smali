.class public final synthetic Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/speech/EngineKind;

.field public final synthetic f$1:Lcom/alicegpt/textfollower/MainActivity;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$0:Lcom/alicegpt/textfollower/speech/EngineKind;

    iput-object p2, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$1:Lcom/alicegpt/textfollower/MainActivity;

    iput-object p3, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$0:Lcom/alicegpt/textfollower/speech/EngineKind;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$1:Lcom/alicegpt/textfollower/MainActivity;

    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->$r8$lambda$QA_K-27Z1GVWDR-KqAYVBU_yJ4Y(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    return-void
.end method
