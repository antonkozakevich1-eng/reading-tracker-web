.class public final synthetic Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/alicegpt/textfollower/Settings;

.field public final synthetic f$1:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/alicegpt/textfollower/Settings;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda3;->f$0:Lcom/alicegpt/textfollower/Settings;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda3;->f$1:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda3;->f$0:Lcom/alicegpt/textfollower/Settings;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda3;->f$1:Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    invoke-static {v0, v1, p1, p2}, Lcom/alicegpt/textfollower/ui/Dialogs;->$r8$lambda$RPJsNr_DZ5y2TGO6OakzlLGa4bE(Lcom/alicegpt/textfollower/Settings;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
