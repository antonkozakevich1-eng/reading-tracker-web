.class public final Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;
.super Ljava/lang/Object;
.source "Dialogs.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/ui/Dialogs;->showSettings(Landroid/app/Activity;Lcom/alicegpt/textfollower/Settings;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/alicegpt/textfollower/ui/Dialogs$showSettings$7$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "sb",
        "Landroid/widget/SeekBar;",
        "value",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field final synthetic $a:Landroid/app/Activity;

.field final synthetic $cb:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

.field final synthetic $settings:Lcom/alicegpt/textfollower/Settings;

.field final synthetic $spacingLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alicegpt/textfollower/Settings;Landroid/widget/TextView;Landroid/app/Activity;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;)V
    .locals 0
    .param p1, "$settings"    # Lcom/alicegpt/textfollower/Settings;
    .param p2, "$spacingLabel"    # Landroid/widget/TextView;
    .param p3, "$a"    # Landroid/app/Activity;
    .param p4, "$cb"    # Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$spacingLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$cb:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "sb"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    if-nez p3, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3f8ccccd    # 1.1f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/Settings;->setLineSpacing(F)V

    .line 170
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$spacingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$a:Landroid/app/Activity;

    sget v2, Lcom/alicegpt/textfollower/R$string;->settings_line_spacing:I

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/Settings;->getLineSpacing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$7$1;->$cb:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    invoke-interface {v0}, Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;->onTypographyChanged()V

    .line 172
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "sb"    # Landroid/widget/SeekBar;

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "sb"    # Landroid/widget/SeekBar;

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method
