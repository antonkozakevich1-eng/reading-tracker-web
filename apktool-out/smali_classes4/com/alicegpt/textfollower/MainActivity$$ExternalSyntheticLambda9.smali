.class public final synthetic Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/MainActivity;

.field public final synthetic f$1:Lcom/alicegpt/textfollower/speech/ModelStore;

.field public final synthetic f$2:Lcom/alicegpt/textfollower/speech/EngineKind;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/alicegpt/textfollower/MainActivity;

    iput-object p2, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$1:Lcom/alicegpt/textfollower/speech/ModelStore;

    iput-object p3, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$2:Lcom/alicegpt/textfollower/speech/EngineKind;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$0:Lcom/alicegpt/textfollower/MainActivity;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$1:Lcom/alicegpt/textfollower/speech/ModelStore;

    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;->f$2:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-static {v0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->$r8$lambda$oYAz8eiJZJ8Ybtw9jkkN5CxnLvA(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    return-void
.end method
