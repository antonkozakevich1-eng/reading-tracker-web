.class public final Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;
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
        "com/alicegpt/textfollower/ui/Dialogs$showSettings$6$1",
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

.field final synthetic $sizeLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alicegpt/textfollower/Settings;Landroid/widget/TextView;Landroid/app/Activity;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;)V
    .locals 0
    .param p1, "$settings"    # Lcom/alicegpt/textfollower/Settings;
    .param p2, "$sizeLabel"    # Landroid/widget/TextView;
    .param p3, "$a"    # Landroid/app/Activity;
    .param p4, "$cb"    # Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$sizeLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$cb:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sb"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    if-nez p3, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    const/high16 v1, 0x41600000    # 14.0f

    int-to-float v2, p2

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alicegpt/textfollower/Settings;->setFontSp(F)V

    .line 152
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$sizeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$a:Landroid/app/Activity;

    sget v2, Lcom/alicegpt/textfollower/R$string;->settings_font_size:I

    iget-object v3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$settings:Lcom/alicegpt/textfollower/Settings;

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/Settings;->getFontSp()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSettings$6$1;->$cb:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    invoke-interface {v0}, Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;->onTypographyChanged()V

    .line 154
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "sb"    # Landroid/widget/SeekBar;

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "sb"    # Landroid/widget/SeekBar;

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    return-void
.end method
