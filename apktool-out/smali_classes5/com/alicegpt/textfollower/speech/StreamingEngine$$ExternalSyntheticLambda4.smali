.class public final synthetic Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/speech/StreamingEngine;

.field public final synthetic f$1:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$0:Lcom/alicegpt/textfollower/speech/StreamingEngine;

    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$1:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    iput-object p3, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$0:Lcom/alicegpt/textfollower/speech/StreamingEngine;

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$1:Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;

    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$$ExternalSyntheticLambda4;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/alicegpt/textfollower/speech/StreamingEngine;->$r8$lambda$_owFJpPlZ40oerA0R0yzC3RaVk0(Lcom/alicegpt/textfollower/speech/StreamingEngine;Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;Ljava/io/File;)V

    return-void
.end method
