.class public final synthetic Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;

    invoke-static {v0, v1, p1}, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->$r8$lambda$4u2YG9YKLb_4-0hcBt71y8tzHWI(ZLandroid/content/Context;Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
