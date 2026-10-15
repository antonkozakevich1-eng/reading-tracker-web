.class public final synthetic Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/alicegpt/textfollower/speech/EngineKind;

    check-cast p2, Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    invoke-static {p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->$r8$lambda$LnSOUlgKAhtbVQ5GmsonoK8pnro(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object p1

    return-object p1
.end method
