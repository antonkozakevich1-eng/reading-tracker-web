.class public final Lcom/alicegpt/textfollower/MainActivity$showSettings$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/MainActivity;->showSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/alicegpt/textfollower/MainActivity$showSettings$1",
        "Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;",
        "onEngineChanged",
        "",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "onThemeChanged",
        "onTypographyChanged",
        "onSensitivityChanged",
        "value",
        "",
        "onContextChanged",
        "enabled",
        "",
        "onAutoScrollChanged",
        "onResetStats",
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
.field final synthetic this$0:Lcom/alicegpt/textfollower/MainActivity;


# direct methods
.method constructor <init>(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/alicegpt/textfollower/MainActivity;

    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoScrollChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 561
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$getReader$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/ui/ReaderView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "reader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/ui/ReaderView;->setAutoScroll(Z)V

    .line 562
    return-void
.end method

.method public onContextChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 554
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alicegpt/textfollower/MainActivity;->access$applyContext(Lcom/alicegpt/textfollower/MainActivity;Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$getEngine$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object v0

    const-string v1, "engine"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$getEngine$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {v0, v2}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->setContext(Ljava/util/List;)V

    .line 556
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alicegpt/textfollower/MainActivity;->access$setContextActive$p(Lcom/alicegpt/textfollower/MainActivity;Z)V

    .line 558
    :cond_3
    :goto_0
    return-void
.end method

.method public onEngineChanged(Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 1
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0, p1}, Lcom/alicegpt/textfollower/MainActivity;->access$changeEngine(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    return-void
.end method

.method public onResetStats()V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$getStats$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/SessionStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->reset()V

    .line 566
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$updateStats(Lcom/alicegpt/textfollower/MainActivity;)V

    .line 567
    return-void
.end method

.method public onSensitivityChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .line 550
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$getEngine$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "engine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getGain()Lcom/alicegpt/textfollower/speech/AutoGain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/speech/AutoGain;->setSensitivity(I)V

    .line 551
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alicegpt/textfollower/MainActivity;->access$savePosition(Lcom/alicegpt/textfollower/MainActivity;Z)V

    .line 544
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/MainActivity;->recreate()V

    .line 545
    return-void
.end method

.method public onTypographyChanged()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;->this$0:Lcom/alicegpt/textfollower/MainActivity;

    invoke-static {v0}, Lcom/alicegpt/textfollower/MainActivity;->access$applyTypography(Lcom/alicegpt/textfollower/MainActivity;)V

    return-void
.end method
